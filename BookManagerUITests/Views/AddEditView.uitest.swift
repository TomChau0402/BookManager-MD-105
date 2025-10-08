//
//  AddEditView.uitest.swift

import XCTest

class AddEditViewUITests: XCTestCase {
    
    func testAddBookWroks() {
        let app = XCUIApplication()
        app.launch()
        
        let currentBookCount = app.collectionViews.firstMatch.cells.count
        
        let addBookButton = app.buttons["Add"]
        addBookButton.tap()
        
        let titleTextField = app.textFields["Title of teh Book"]
        titleTextField.tap()
        titleTextField.typeText("New book 2")
        print("breakpoint")
        app.buttons["Save"].tap()
        print(app.collectionViews.firstMatch)
        XCTAssertEqual(app.collectionViews.firstMatch.cells.count,
                 (currentBookCount + 1))
        
        
        
    }
}
