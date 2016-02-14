//
//  DoubleTests.swift
//  Random
//
//  Created by Christian Otkjær on 14/02/16.
//  Copyright © 2016 Christian Otkjær. All rights reserved.
//

import XCTest

class DoubleTests: XCTestCase
{
    func test_Double_random()
    {
        for _ in 1...100
        {
            let r = Double.random()
            
            XCTAssertGreaterThanOrEqual(r, 0)
            XCTAssertLessThanOrEqual(r, 1)
        }
    }
    
    func test_Double_random_between()
    {
        for n in 1...10000
        {
            let lower = -1/Double(n)
            let upper = 1/Double(n)
            
            let r = Double.random(between: lower, and: upper)
            
            XCTAssertGreaterThanOrEqual(r, lower)
            XCTAssertLessThanOrEqual(r, upper)
        }
    }
}
