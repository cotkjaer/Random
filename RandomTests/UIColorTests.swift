//
//  UIColorTests.swift
//  Random
//
//  Created by Christian Otkjær on 14/02/16.
//  Copyright © 2016 Christian Otkjær. All rights reserved.
//

import XCTest

class UIColorTests: XCTestCase
{
    func test_randomColor()
    {
        XCTAssertNotEqual(UIColor.randomColor(), UIColor.randomColor())
    }
}
