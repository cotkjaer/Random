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
        let f = arc4random(Double.self)
        let g = arc4random(Double.self)
        XCTAssertNotEqual(f, g, "Amazingly f (\(f)) turned out to be g (\(g))")
    }
    
    func test_arc4random_Int()
    {
        let f = arc4random(Int.self)
        let g = arc4random(Int.self)
        XCTAssertNotEqual(f, g, "Amazingly f (\(f)) turned out to be g (\(g))")
    }
    
    func test_arc4random_Float()
    {
        let f = arc4random(Float.self)
        let g = arc4random(Float.self)
        XCTAssertNotEqual(f, g, "Amazingly f (\(f)) turned out to be g (\(g))")
    }
    
    func test_arc4random_UInt64()
    {
        let f = arc4random(UInt64.self)
        let g = arc4random(UInt64.self)
        XCTAssertNotEqual(f, g, "Amazingly f (\(f)) turned out to be g (\(g))")
    }
    
    func test_arc4random_UInt8()
    {
        let f = arc4random(UInt8.self)
        let g = arc4random(UInt8.self)
        XCTAssertNotEqual(f, g, "Amazingly f (\(f)) turned out to be g (\(g))")
    }
}
