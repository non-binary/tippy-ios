//
//  UITests.swift
//  UITests
//
//  Created by Luna Graysen on 2020-02-08.
//  Copyright © 2020 Luna Graysen. All rights reserved.
//

import XCTest

class UITests: XCTestCase {
    // MARK: Properties
    var app: XCUIApplication!
    
    // MARK: Test Lifecycle
    override func setUp() {
        continueAfterFailure = false
        app = XCUIApplication()
        app.launch()
    }

    // MARK: Tests
    func testElementsExist() {
        assert(app.textFields["25"].exists, "Bill total text field exists")
        assert(app.staticTexts["Bill Total"].exists, "Bill total explainer label exists")
        assert(app.textFields["15"].exists, "Percentage text field exists")
        assert(app.staticTexts["Percentage"].exists, "Percentage explainer label exists")
        assert(app.staticTexts["Zilch"].exists, "Zilch label exists")
        assert(app.staticTexts["Proposed Tip"].exists, "Proposed Tip explainer label exists")
    }
    
    func testComputeTip() {
        app = XCUIApplication()
        let billTextField = app.textFields["25"]
        billTextField.tap()
        billTextField.typeText("50")
        
        let percentageTextField = app.textFields["15"]
        percentageTextField.doubleTap()
        percentageTextField.typeText("20")
        
        assert(app.staticTexts["10.00"].label == "10.00", "Computed tip successfully")
    }
}
