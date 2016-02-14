//
//  RandomTests.swift
//  RandomTests
//
//  Created by Christian Otkjær on 14/02/16.
//  Copyright © 2016 Christian Otkjær. All rights reserved.
//

import XCTest
@testable import Random

class RandomTests: XCTestCase
{
    func test_arc4random_Double()
    {
        let f = arc4random(Double)
        let g = arc4random(Double)
        XCTAssertNotEqual(f, g, "Amazingly f (\(f)) turned out to be g (\(g))")
    }
    
    func test_arc4random_Int()
    {
        let f = arc4random(Int)
        let g = arc4random(Int)
        XCTAssertNotEqual(f, g, "Amazingly f (\(f)) turned out to be g (\(g))")
    }
    
    func test_arc4random_Float()
    {
        let f = arc4random(Float)
        let g = arc4random(Float)
        XCTAssertNotEqual(f, g, "Amazingly f (\(f)) turned out to be g (\(g))")
    }
    
    func test_arc4random_UInt64()
    {
        let f = arc4random(UInt64)
        let g = arc4random(UInt64)
        XCTAssertNotEqual(f, g, "Amazingly f (\(f)) turned out to be g (\(g))")
    }
    
    func test_arc4random_UInt8()
    {
        let f = arc4random(UInt8)
        let g = arc4random(UInt8)
        XCTAssertNotEqual(f, g, "Amazingly f (\(f)) turned out to be g (\(g))")
    }
}
