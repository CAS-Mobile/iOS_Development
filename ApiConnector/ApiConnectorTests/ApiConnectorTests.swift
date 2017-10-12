import XCTest
@testable import ApiConnector

class ApiConnectorTests: XCTestCase {
    
    func testApiConnectorCanBeInitialized() {
        let session = URLSession(configuration: URLSessionConfiguration.default)
        let connector = ApiConnector(session: session)
        
        XCTAssertNotNil(connector)
    }
    
    func testMakingACall() {
        let session = URLSession(configuration: URLSessionConfiguration.default)
        let connector = ApiConnector(session: session)
        
        let expectation = self.expectation(description: "Wait for url to load.")
        
        var mysuccess: Bool!
        
        // In the real world, this call needs to be mocked so that the network is not hit at all
        connector.makeCall(with: "https://api.fixer.io/latest", completion: { success, jsonData in
            NSLog("Object: \(String(describing: jsonData))")
            NSLog("success: \(String(describing: success))")
            mysuccess = success
            expectation.fulfill()
        })
        
        waitForExpectations(timeout: 5, handler: nil)
        
        XCTAssertNotNil(mysuccess)
        
    }
}
