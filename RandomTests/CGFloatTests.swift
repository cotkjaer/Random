//
//  CGFloatTests.swift
//  Random
//
//  Created by Christian Otkjær on 14/02/16.
//  Copyright © 2016 Christian Otkjær. All rights reserved.
//

import XCTest

class CGFloatTests: XCTestCase
{
    func test_CGFloat_random()
    {
        for _ in 1...100
        {
            let r = CGFloat.random()
            
            XCTAssertGreaterThanOrEqual(r, 0)
            XCTAssertLessThanOrEqual(r, 1)
        }
    }
    
    func test_CGFloat_random_between()
    {
        for n in 1...10000
        {
            let lower = -1/CGFloat(n)
            let upper = 1/CGFloat(n)
            
            let r = CGFloat.random(between: lower, and: upper)
            
            XCTAssertGreaterThanOrEqual(r, lower)
            XCTAssertLessThanOrEqual(r, upper)
        }
    }
}