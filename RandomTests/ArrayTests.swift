//
//  ArrayTests.swift
//  Random
//
//  Created by Christian Otkjær on 14/02/16.
//  Copyright © 2016 Christian Otkjær. All rights reserved.
//

import XCTest

class ArrayTests: XCTestCase
{
    func test_random_empty()
    {
        var array = Array<Int>()
        
        XCTAssertNil(array.random())
        
        array.append(1)
        
        XCTAssertEqual(array.random(), array.first)
        
        array.removeAll()
        
        XCTAssertNil(array.random())
    }
    
    func test_random()
    {
        let numbers = Array(0..<100000)
        
        for _ in 0..<100
        {
            if let r = numbers.random()
            {
                XCTAssertNotNil(r)
                
                XCTAssertLessThan(r, numbers.count)
                XCTAssertGreaterThanOrEqual(r, 0)
                
                XCTAssertNotEqual(r, numbers.random())
            }
            else
            {
                XCTFail("nil")
            }
        }
    }
    
    func test_shuffle()
    {
        var numbers = Array(0..<100)

        let s1 = numbers.shuffled()
        let s2 = numbers.shuffled()
        
        XCTAssertNotEqual(s1, s2, "Amazingly s1 (\(s1)) turned out to be s2 (\(s2))")
        XCTAssertNotEqual(s1, numbers, "Amazingly s1 (\(s1)) turned out to be numbers (\(numbers))")
        
        XCTAssertNotEqual(numbers, s2, "Amazingly s2 (\(s2)) turned out to be numbers (\(numbers))")
        
        numbers.shuffle()
        
        XCTAssertNotEqual(numbers, Array(0..<100), "Amazingly shuffle (\(numbers)) turned out to be numbers (\(Array(0..<100)))")
    }
}
