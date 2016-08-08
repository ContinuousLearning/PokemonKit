import PromiseKit
import Social
import XCTest

class TestSLRequest: XCTestCase {
    func testSLRequest() {
        // I tried to just override SLRequest, but Swift wouldn't let me
        // then use the long initializer, and an exception is thrown inside
        // init()

        swizzle(SLRequest.self, "performRequestWithHandler:") {
            let url = NSURL(string: "https://api.twitter.com/1.1/statuses/user_timeline.json")
            let params = ["foo": "bar"]
            let rq = SLRequest(forServiceType: SLServiceTypeTwitter, requestMethod: SLRequestMethod.GET, URL: url, parameters: params)

            let ex = expectationWithDescription("")
            rq.promise().then { (x: NSData) -> Void in
                XCTAssertEqual(x, NSData())
                ex.fulfill()
            }
            waitForExpectationsWithTimeout(1, handler: nil)
        }
    }
}

extension SLRequest {
    @objc func pmk_performRequestWithHandler(handler: SLRequestHandler) {
        handler(NSData(), nil, nil)
    }
}
