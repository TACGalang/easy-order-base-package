import XCTest
@testable import easy_order_base_package

final class easy_order_base_packageTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        let thisEmail = "tristan.galang@live.com"
        XCTAssertTrue(thisEmail.isValidEmail())
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
