import XCTest
@testable import Squareup

class Tests: XCTestCase {
    
    private let accessToken = "EAAAEMtberzJmhus1KGKQuPM03GaemtBhdA3LDJ3YNXhC1u2Wbrqp0kpOZo5L5p3"
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        let APPLICATION_ID = "L5HXJCY39G6ZC"
        let SQUARE_LOCATION_ID = "sandbox-sq0idb-6vx7hwAFizH4Yk4VT0RIpQ"
        
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
        
        let semaphore = DispatchSemaphore(value: 0)
        
        BusinessApi.locations.listLocations(accessToken: self.accessToken, completion: { response in
            print(response.Locations)
            
            XCTAssert(true, "Pass")
            semaphore.signal()
        }) { error in
            print(error.localizedDescription)
            
            XCTAssert(true, "Pass")
            semaphore.signal()
        }
        
        // Wait for the async request to complete
        semaphore.wait()
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure() {
            // Put the code you want to measure the time of here.
        }
    }
    
}
