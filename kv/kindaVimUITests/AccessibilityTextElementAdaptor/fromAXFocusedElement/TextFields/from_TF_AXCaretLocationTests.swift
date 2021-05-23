import XCTest

class from_TF_AXCaretLocationTests: ATEA_BaseTests {

    func test_that_the_caret_location_is_equal_to_0_if_caret_is_at_the_beginning_of_a_non_empty_line() {
        let textInAXFocusedElement = "check caret location when caret is at beginning of a non empty line"

        sleep(15)

        XCUIApplication().textFields.firstMatch.tap()
        XCUIApplication().textFields.firstMatch.typeText(textInAXFocusedElement)
        XCUIApplication().textFields.firstMatch.typeKey(.leftArrow, modifierFlags: [.command])

        let accessibilityElement = AccessibilityTextElementAdaptor.fromAXFocusedElement()

        XCTAssertEqual(accessibilityElement?.axCaretLocation, 0)
    }

}

