import XCTest

class AdderObjCUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        
        let app = XCUIApplication()
        app.otherElements.containing(.button, identifier:"Add").element.tap()
        
        let addElementsQuery = app.otherElements.containing(.button, identifier:"Add")
        let textField = addElementsQuery.children(matching: .textField).element(boundBy: 0)
        textField.tap()
        textField.tap()
        textField.typeText("1")
        
        let textField2 = addElementsQuery.children(matching: .textField).element(boundBy: 1)
        textField2.tap()
        textField2.tap()
        textField2.typeText("1")
        app.buttons["Add"].tap()
        
        XCTAssertEqual(app.staticTexts.element(matching:.any, identifier: "resultLabel").label, "2")
    }
    
}
