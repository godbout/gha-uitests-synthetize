import XCTest

class ATEA_BaseTests: XCTestCase {

    override func setUpWithError() throws {
        XCUIApplication().terminate()

        try super.setUpWithError()

        continueAfterFailure = false

        XCUIApplication().launch()
    }

    override func tearDown() {
        XCUIApplication().terminate()
    }

}
