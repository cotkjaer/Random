//
//  Random.swift
//  SilverbackFramework
//
//  Created by Christian Otkjær on 20/04/15.
//  Copyright (c) 2015 Christian Otkjær. All rights reserved.
//

/**
 Raw arc random for any `IntegerLiteralConvertible`
 */
public func arc4random<T: ExpressibleByIntegerLiteral>(_ type: T.Type) -> T
{
    var r: T = 0
    
    arc4random_buf(&r, MemoryLayout<T>.size)
    
    return r
}

