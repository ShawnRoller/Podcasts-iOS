//
//  StringTests.swift
//  Podcasts-iOSTests
//
//  Created by Shawn Roller on 7/26/21.
//

import XCTest
@testable import Podcasts_iOS

class StringTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testStringTime() throws {
        let time1 = "280".toTime()
        let time2 = "asdf".toTime()
        let time3 = "38467".toTime()
        
        XCTAssertEqual(time1, "00:04:40")
        XCTAssertEqual(time2, "00:00:00")
        XCTAssertEqual(time3, "10:41:07")
    }
    
}
