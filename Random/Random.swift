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
public func arc4random<T: IntegerLiteralConvertible>(type: T.Type) -> T
{
    var r: T = 0
    
    arc4random_buf(&r, sizeof(T))
    
    return r
}
/*
public func arc4random<T: IntegerLiteralConvertible>() -> T
{
    var r: T = 0
    
    arc4random_buf(&r, sizeof(T))
    
    return r
}
*/

