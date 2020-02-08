//
//  Tests.swift
//  Tests
//
//  Created by Luna Graysen on 2020-02-08.
//  Copyright © 2020 Luna Graysen. All rights reserved.
//

import XCTest
@testable import Tippy

class Tests: XCTestCase {
    func testCompute() {
        let result = Compute.percentage(20, from: 15)
        assert(result == 3.00, "20% of $15 is $3.00")
    }
}
