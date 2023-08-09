import XCTest
@testable import Squareup

class Tests: XCTestCase {
    
    private let accessToken = "<#accessToken#>"
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        let APPLICATION_ID = "<#APPLICATION_ID#>"
        let SQUARE_LOCATION_ID = "<#SQUARE_LOCATION_ID#>"
        
        SquareupConfigurer.shared.setup(applicationId: APPLICATION_ID,
                                        squareLocationId: SQUARE_LOCATION_ID,
                                        type: .dev)
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        
        let listLocations = XCTestExpectation(description: "listLocations")
        
        BusinessApi.locations.listLocations(accessToken: self.accessToken, completion: { response in
            
            XCTAssert(true, "Pass")
            listLocations.fulfill()
        }) { error in
            print(error.localizedDescription)
            
            XCTAssert(false, "Pass")
            listLocations.fulfill()
        }
        
        wait(for: [listLocations], timeout: 50.0)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure() {
            // Put the code you want to measure the time of here.
        }
    }
    
}
