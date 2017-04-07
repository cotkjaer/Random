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
        let numbers = Set(0..<1000)
        
        let set = Set(numbers)
        
        var array1: [Int] = []
        var array2: [Int] = []
        
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
    
    func test_random_empty()
    {
        var set = Set<Int>()
        
        XCTAssertNil(set.random())
        
        set.insert(1)
        
        XCTAssertEqual(set.random(), set.first)
        
        set.removeAll()
        
        XCTAssertNil(set.random())
    }
    
    func test_shuffle()
    {
        let numbers = Set(0..<100)
        let sorted = numbers.sorted()
        
        let s1 = numbers.shuffled()
        let s2 = numbers.shuffled()
        
        XCTAssertNotEqual(s1, s2, "Amazingly s1 (\(s1)) turned out to be s2 (\(s2))")
        XCTAssertNotEqual(s1, sorted, "Amazingly s1 (\(s1)) turned out to be numbers (\(sorted))")
        
        XCTAssertNotEqual(sorted, s2, "Amazingly s2 (\(s2)) turned out to be numbers (\(sorted))")
    }
}
