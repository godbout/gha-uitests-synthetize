import XCTest

class to_TF_AXCaretLocationTests: ATEA_BaseTests {

    func test_that_we_can_set_the_caret_location_to_0_on_a_non_empty_line() {
        let text = "hello you dear"
        let accessibilityElement = AccessibilityTextElement(
            axValue: text,
            axCaretLocation: 0
        )

        sleep(15)

        XCUIApplication().textFields.firstMatch.tap()
        XCUIApplication().textFields.firstMatch.typeText(text)

        let conversionSucceeded = AccessibilityTextElementAdaptor.toAXFocusedElememt(from: accessibilityElement)
        XCTAssertTrue(conversionSucceeded)

        let reconvertedAccessibilityTextElement = AccessibilityTextElementAdaptor.fromAXFocusedElement()
        XCTAssertEqual(reconvertedAccessibilityTextElement?.axCaretLocation, 0)
    }

}
