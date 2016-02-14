//
//  SetTests.swift
//  Random
//
//  Created by Christian Otkjær on 14/02/16.
//  Copyright © 2016 Christian Otkjær. All rights reserved.
//

import XCTest

class SetTests: XCTestCase
{
    func test_random()
    {
        let numbers = Array(0..<1000)
        
        let set = Set(numbers)
        
        var array1 : [Int] = []
        var array2 : [Int] = []
        
        for _ in (0..<10)
        {
            if let r1 = set.random()
            {
                array1.append(r1)
            }
            else
            {
                XCTFail("Could not get random")
            }
            
            if let r2 = set.random()
            {
                array2.append(r2)
            }
            else
            {
                XCTFail("Could not get random")
            }
        }
        
        XCTAssertNotEqual(array1, array2)
        XCTAssertEqual(array1.count, array2.count)
    }
}
