@import Foundation;
#import <PromiseKit/PromiseKit.h>
@import XCTest;


@interface PMKWhenTest: XCTestCase
@end

@implementation PMKWhenTest

- (void)testProgress {

    id ex = [self expectationWithDescription:@""];

    XCTAssertNil([NSProgress currentProgress]);

    id p1 = PMKAfter(0.01);
    id p2 = PMKAfter(0.02);
    id p3 = PMKAfter(0.03);
    id p4 = PMKAfter(0.04);

    NSProgress *progress = [NSProgress progressWithTotalUnitCount:1];
    [progress becomeCurrentWithPendingUnitCount:1];

    PMKWhen(@[p1, p2, p3, p4]).then(^{
        XCTAssertEqual(progress.completedUnitCount, 1);
        [ex fulfill];
    });

    [progress resignCurrent];

    [self waitForExpectationsWithTimeout:1 handler:nil];
}

- (void)testProgressDoesNotExceed100Percent {

    id ex1 = [self expectationWithDescription:@""];
    id ex2 = [self expectationWithDescription:@""];

    XCTAssertNil([NSProgress currentProgress]);

    id p1 = PMKAfter(0.01);
    id p2 = PMKAfter(0.02).then(^{ return [NSError errorWithDomain:@"a" code:1 userInfo:nil]; });
    id p3 = PMKAfter(0.03);
    id p4 = PMKAfter(0.04);

    id promises = @[p1, p2, p3, p4];

    NSProgress *progress = [NSProgress progressWithTotalUnitCount:1];
    [progress becomeCurrentWithPendingUnitCount:1];

    PMKWhen(promises).catch(^{
        [ex2 fulfill];
    });

    [progress resignCurrent];

    PMKJoin(promises).then(^{

        XCTAssertLessThanOrEqual(1, progress.fractionCompleted);
        XCTAssertEqual(progress.completedUnitCount, 1);
        [ex1 fulfill];
    });

    [self waitForExpectationsWithTimeout:1 handler:nil];
}

- (void)testWhenManifolds {
    id ex = [self expectationWithDescription:@""];
    id p1 = dispatch_promise(^{ return PMKManifold(@1, @2); });
    id p2 = dispatch_promise(^{});
    PMKWhen(@[p1, p2]).then(^(NSArray *results){
        XCTAssertEqual(results[0], @1);
        XCTAssertEqual(results[1], [NSNull null]);
        [ex fulfill];
    });
    [self waitForExpectationsWithTimeout:1 handler:nil];
}

@end
