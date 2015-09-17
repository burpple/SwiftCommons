//
//  SwiftCommonsTests.swift
//  SwiftCommonsTests
//
//  Created by Akira Hirakawa on 15/9/15.
//  Copyright © 2015 Burpple. All rights reserved.
//

import XCTest
@testable import SwiftCommons

class SwiftCommonsTests: XCTestCase {

    override func setUp() {
        super.setUp()
    }

    override func tearDown() {

        super.tearDown()
    }

    func testOnetimeEvent() {

        let keys = ["test1", "test2", "test3"]
        for key in keys {
            NSUserDefaults.standardUserDefaults().setBool(false, forKey: key)
        }

        for key in keys {
            XCTAssertFalse(OnetimeEvent.happened(key))
        }

        for key in keys {
            XCTAssertTrue(OnetimeEvent.happened(key))
        }
    }

    func testCount() {

        var count = [1, 2, 3].count { (value: Int) in
            return value % 2 == 0
        }
        XCTAssertEqual(count, 1)

        count = [1].count { (value: Int) in
            return value % 2 == 0
        }
        XCTAssertEqual(count, 0)
    }
    
    func testClassName() {

        XCTAssertEqual(self.className(), "SwiftCommonsTests")
    }
    
    func testCancelAction() {
        let cancel = UIAlertAction.cancelAction()
        XCTAssertNotNil(cancel)
    }
}
