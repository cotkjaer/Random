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
        var f:Double = arc4random()
        var g:Double = arc4random()
        XCTAssertNotEqual(f, g, "Amazingly f (\(f)) turned out to be g (\(g))")
        
        f = arc4random()
        g = arc4random()
        
        XCTAssertNotEqual(f, g, "Amazingly f (\(f)) turned out to be g (\(g))")
    }
    
    func test_arc4random_Int()
    {
        let f:Int = arc4random()
        let g:Int = arc4random()
        XCTAssertNotEqual(f, g, "Amazingly f (\(f)) turned out to be g (\(g))")
    }
    
    func test_arc4random_Float()
    {
        let f:Float = arc4random()
        let g:Float = arc4random()
        XCTAssertNotEqual(f, g, "Amazingly f (\(f)) turned out to be g (\(g))")
    }
    
    func test_arc4random_UInt64()
    {
        let f:UInt64 = arc4random()
        let g:UInt64 = arc4random()
        XCTAssertNotEqual(f, g, "Amazingly f (\(f)) turned out to be g (\(g))")
    }
    
    func test_arc4random_UInt8()
    {
        let f:UInt8 = arc4random()
        let g:UInt8 = arc4random()
        XCTAssertNotEqual(f, g, "Amazingly f (\(f)) turned out to be g (\(g))")
    }
}
