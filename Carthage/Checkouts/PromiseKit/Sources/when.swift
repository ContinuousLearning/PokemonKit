import Foundation.NSProgress

private func when<T>(promises: [Promise<T>]) -> Promise<Void> {
    let (rootPromise, fulfill, reject) = Promise<Void>.defer_()
#if !PMKDisableProgress
    let progress = NSProgress(totalUnitCount: Int64(promises.count))
    progress.cancellable = false
    progress.pausable = false
#else
    var progress: (completedUnitCount: Int, totalUnitCount: Int) = (0, 0)
#endif
    var countdown = promises.count
    if countdown == 0 {
        fulfill()
        return rootPromise
    }
    let barrier = dispatch_queue_create("org.promisekit.barrier.when", DISPATCH_QUEUE_CONCURRENT)

    for promise in promises {
        promise.pipe { resolution in
            if !rootPromise.pending { return }

            dispatch_barrier_sync(barrier) {
                switch resolution {
                case .Rejected(let error):
                    progress.completedUnitCount = progress.totalUnitCount
                    reject(error)
                case .Fulfilled:
                    progress.completedUnitCount += 1
                    countdown -= 1
                    if countdown == 0 {
                        fulfill()
                    }
                }
            }
        }
    }

    return rootPromise
}

public func when<T>(promises: [Promise<T>]) -> Promise<[T]> {
    return when(promises).then(on: zalgo) { promises.map{ $0.value! } }
}

public func when<T>(promises: Promise<T>...) -> Promise<[T]> {
    return when(promises)
}

public func when(promises: Promise<Void>...) -> Promise<Void> {
    return when(promises)
}

public func when<U, V>(pu: Promise<U>, _ pv: Promise<V>) -> Promise<(U, V)> {
    return when(pu.asVoid(), pv.asVoid()).then(on: zalgo) { (pu.value!, pv.value!) }
}

public func when<U, V, X>(pu: Promise<U>, _ pv: Promise<V>, _ px: Promise<X>) -> Promise<(U, V, X)> {
    return when(pu.asVoid(), pv.asVoid(), px.asVoid()).then(on: zalgo) { (pu.value!, pv.value!, px.value!) }
}

@available(*, unavailable, message="Use `when`")
public func join<T>(promises: Promise<T>...) {}
