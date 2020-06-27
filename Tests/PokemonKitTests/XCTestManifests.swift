import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(InternalTests.allTests),
        testCase(PublicTests.allTests),
        testCase(READMETests.allTests),
    ]
}
#endif
