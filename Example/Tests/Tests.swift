import XCTest
import Squareup

class Tests: XCTestCase {
    
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
        XCTAssert(true, "Pass")
        
        BusinessApi.locations.listLocations(accessToken: "EAAAEMtberzJmhus1KGKQuPM03GaemtBhdA3LDJ3YNXhC1u2Wbrqp0kpOZo5L5p3", completion: { response in
            print(response.locations)
        }) { error in
            print(error.localizedDescription)
        }
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure() {
            // Put the code you want to measure the time of here.
        }
    }
    
}
