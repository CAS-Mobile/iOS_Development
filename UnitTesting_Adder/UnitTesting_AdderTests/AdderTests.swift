import XCTest
// This is again the name of the module (most of the times the same as the project name)
@testable import UnitTesting_Adder

class AdderTests: XCTestCase {
    
    func testAddingTwoAndTwoEqualsFour() {
        let adder = Adder()
        
        let result = adder.add(number1: 2, number2: 2)
        
        XCTAssertEqual(result, 4)
    }
    
    func testAddingTwoNegativesWillResultInNegative() {
        let adder = Adder()
        
        let result = adder.add(number1: -10, number2: -20)
        
        XCTAssert(result <= 0)
    }
}
