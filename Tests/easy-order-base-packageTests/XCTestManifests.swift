import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(easy_order_base_packageTests.allTests),
    ]
}
#endif
