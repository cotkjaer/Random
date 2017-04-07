//
//  Random.swift
//  SilverbackFramework
//
//  Created by Christian Otkjær on 20/04/15.
//  Copyright (c) 2015 Christian Otkjær. All rights reserved.
//

/**
 Raw arc random for any type that is `ExpressibleByIntegerLiteral`
 */
public func arc4random<T: ExpressibleByIntegerLiteral>() -> T
{
    var r: T = 0
    
    arc4random_buf(&r, MemoryLayout<T>.size)
    
    return r
}

// MARK: - random floating points
/** Arc random for any `FloatingPoint`
 
 - parameter lower: the minimum bound for the result (incl.), default is 0
 - parameter upper: the maximum bound for the result (excl.), default is 1
 - returns: A random number in the range [lower; upper[, found using arc2random_uniform and linear interpolation
 */
func arc4random_uniform<T>(above lower: T = 0, below upper: T = 1) -> T where T: FloatingPoint, T: ExpressibleByIntegerLiteral
{
    let seed = UInt32.max/2
    
    let t = T(Int(arc4random_uniform(seed))) / T(Int(seed))
    
    return lower * (1 - t) + upper * t
}
