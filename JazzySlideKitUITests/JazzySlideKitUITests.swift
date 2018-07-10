//
//  JazzySlideKitUITests.swift
//  JazzySlideKitUITests
//
//  Created by Kyler Jensen on 7/3/18.
//  Copyright © 2018 Kyler Jensen. All rights reserved.
//

import XCTest

class JazzySlideKitUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        XCUIDevice().orientation = .portrait
        let app = XCUIApplication()
        setupSnapshot(app)
        app.launch()
    }
    
    func testFullCircle() {
        let app = XCUIApplication()
        app.buttons["Put 'em up!"].tap()
        snapshot("JazzySlideKitUITests.testFullCircle.step0")
        app.buttons["Next"].tap()
        snapshot("JazzySlideKitUITests.testFullCircle.step1")
        app.buttons["Next"].tap()
        snapshot("JazzySlideKitUITests.testFullCircle.step2")
        app.navigationBars["Page 3"].buttons["Page 2"].tap()
        snapshot("JazzySlideKitUITests.testFullCircle.step3")
        app.navigationBars["Page 2"].buttons["Page 1"].tap()
        snapshot("JazzySlideKitUITests.testFullCircle.step4")
    }
    
}

