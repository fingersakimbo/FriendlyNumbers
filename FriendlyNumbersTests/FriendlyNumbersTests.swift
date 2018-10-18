//
//  FriendlyNumbersTests.swift
//  FriendlyNumbersTests
//
//  Created by Fingers Akimbo on 10/17/18.
//

import XCTest

class FriendlyNumbersTests: XCTestCase {

    func testSimpleCases() {
        XCTAssertEqual(   1536.FNSimple,   "1.5K")
        XCTAssertEqual(  15350.FNSimple,  "15.4K")
        XCTAssertEqual( 153694.FNSimple, "153.7K")
        XCTAssertEqual(1536947.FNSimple,   "1.5M")
    }

    func testMostSimpleCases() {
        XCTAssertEqual(   1536.FNMostSimple,  "1K")
        XCTAssertEqual(   1999.FNMostSimple,  "1K")
        XCTAssertEqual(   2111.FNMostSimple,  "2K")
        XCTAssertEqual(  15312.FNMostSimple, "15K")
        XCTAssertEqual(1536947.FNMostSimple,  "1M")
    }

    func testBoundaries() {
        XCTAssertEqual(  15349.FNSimple,  "15.3K")
        XCTAssertEqual(  15350.FNSimple,  "15.4K")
        XCTAssertEqual(  15351.FNSimple,  "15.4K")

        XCTAssertEqual(  1999.FNMostSimple,  "1K")
        XCTAssertEqual(  2000.FNMostSimple,  "2K")
        XCTAssertEqual(  2001.FNMostSimple,  "2K")
    }
    
    func testReadMeExamples() {
        XCTAssertEqual(    1530.FNMostSimple,    "1K")
        XCTAssertEqual(    1530.FNSimple,      "1.5K")
        XCTAssertEqual(   15320.FNMostSimple,   "15K")
        XCTAssertEqual(   15320.FNSimple,     "15.3K")
        XCTAssertEqual(  153200.FNMostSimple,  "153K")
        XCTAssertEqual(  153200.FNSimple,    "153.2K")
        XCTAssertEqual( 1532200.FNMostSimple,    "1M")
        XCTAssertEqual( 1532200.FNSimple,      "1.5M")
        XCTAssertEqual(15300000.FNMostSimple,   "15M")
        XCTAssertEqual(15300000.FNSimple,     "15.3M")
    }
}
