//
//  IntTests.swift
//  Random
//
//  Created by Christian Otkjær on 14/02/16.
//  Copyright © 2016 Christian Otkjær. All rights reserved.
//

import XCTest
@testable import Random

class IntTests: XCTestCase
{
    func test_Int_random_with_limits()
    {
        let goodPairs = [(-10, -1), (-10, 0), (-10, 10), (0,1), (0,10), (5,17)]
        
        let iterations = 10000
        
        for (lower, upper) in goodPairs
        {
            var counters = Dictionary<Int,Int>()
            
            for _ in stride(from: 1, through: iterations, by: 1)
            {
                let r = Int.random(between: lower, and: upper)
                
                counters[r] = (counters[r] ?? 0) + 1
                
                XCTAssertGreaterThanOrEqual(r, lower)
                XCTAssertLessThan(r, upper)
            }
            
            let ratio: Double = Double(iterations) / Double(counters.count)
            
            for (_, count) in counters
            {
                XCTAssertGreaterThan(count, Int(0.75 * ratio))
                XCTAssertLessThan(count,  Int(1.25 * ratio))
            }
            
            if let n = counters.values.first
            {
                let (m,M) = counters.values.reduce((n,n)) { (min($1, $0.0), max($1, $0.1)) }
                
                XCTAssertGreaterThanOrEqual(M, m)
                XCTAssertEqual(Double(m), Double(M), accuracy: 0.25 * ratio)
            }
            else
            {
                XCTFail("No counters")
            }
        }
    }
    
    func test_Int_random()
    {
        let outcomes = 10
        
        var counters = Array<Int>(repeating: 0, count: outcomes)
        
        let iterations = 10000
        
        for _ in stride(from: 1, through: iterations, by: 1)
        {
            let index = Int.random(between: 0, and: outcomes)
            
            counters[index] += 1
        }
        
        if let n = counters.first
        {
            let (m,M) = counters.reduce((n,n)) { (min($1, $0.0), max($1, $0.1)) }
            
            XCTAssertGreaterThan(M, m)
            XCTAssertEqual(Double(m), Double(M), accuracy: Double((iterations * 1) / ( outcomes * 7)))
        }
        for count in counters
        {
            XCTAssertGreaterThan(count,  (iterations * 9) / ( outcomes * 10))
            XCTAssertLessThan(count,  (iterations * 11) / ( outcomes * 10))
        }
        
    }
    
}
