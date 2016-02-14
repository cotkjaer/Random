//
//  CGPointTests.swift
//  Random
//
//  Created by Christian Otkjær on 14/02/16.
//  Copyright © 2016 Christian Otkjær. All rights reserved.
//

import XCTest

class CGPointTests: XCTestCase
{

    func test_CGPoint_random()
    {
        for _ in 1...1000
        {
            let radius = CGFloat.random(between: 10, and: 100)
            let point = CGPoint.random(radius: radius)
            
            XCTAssertLessThanOrEqual(point.x * point.x + point.y * point.y, radius * radius)
        }
    }
    
}
