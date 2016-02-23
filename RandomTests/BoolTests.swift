//
//  BoolTests.swift
//  Random
//
//  Created by Christian Otkjær on 14/02/16.
//  Copyright © 2016 Christian Otkjær. All rights reserved.
//

import XCTest

class BoolTests: XCTestCase {
    
    func test_Bool_random()
    {
        var trues = 0
        var falses = 0
        
        let iterations = 100000
        for _ in 1.stride(through: iterations, by: 1)
        {
            if Bool.random() { trues++ } else { falses++ }
        }
        
        XCTAssertEqualWithAccuracy(Double(trues), Double(falses), accuracy: Double(iterations) * 0.02) // less than 2%
    }
}
