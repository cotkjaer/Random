//
//  Int.swift
//  Random
//
//  Created by Christian Otkjær on 14/02/16.
//  Copyright © 2016 Christian Otkjær. All rights reserved.
//

public extension Int
{
    /**
     Random integer in the open range [_lower_;_upper_[, ie. an integer between lower (_inclusive_) and upper (_exclusive_)
     
     - note: _lower_ **must** be less than _upper_
     
     - parameter between lower: lower limit - inclusive
     - parameter and upper: upper limit - exclusive
     - returns: Random integer in the open range [_lower_;_upper_[
     */
    static func random(between lower: Int = min, and upper: Int = max) -> Int
    {
        let realLower = Swift.min(lower, upper)
        let realUpper = Swift.max(lower, upper)
        
        return Int(Int64.random(Int64(realLower), upper: Int64(realUpper)))
    }
}

public extension UInt64
{
    static func random(_ lower: UInt64 = min, upper: UInt64 = max) -> UInt64
    {
        var m: UInt64
        let u = upper - lower
        var r: UInt64 = arc4random()
        
        if u > UInt64(Int64.max)
        {
            m = 1 + ~u
        }
        else
        {
            m = ((max - (u * 2)) + 1) % u
        }
        
        while r < m
        {
            r = arc4random()
        }
        
        return (r % u) + lower
    }
}

public extension Int64
{
    static func random(_ lower: Int64 = min, upper: Int64 = max) -> Int64
    {
        let (s, overflow) = Int64.subtractWithOverflow(upper, lower)
        let u = overflow ? UInt64.max - UInt64(~s): UInt64(s)
        let r = UInt64.random(upper: u)
        
        if r > UInt64(Int64.max)
        {
            return Int64(r - (UInt64(~lower) + 1))
        }
        else
        {
            return Int64(r) + lower
        }
    }
}

public extension UInt32
{
    static func random(_ lower: UInt32 = min, upper: UInt32 = max) -> UInt32
    {
        return arc4random_uniform(upper - lower) + lower
    }
}

public extension Int32
{
    static func random(_ lower: Int32 = min, upper: Int32 = max) -> Int32
    {
        let r = arc4random_uniform(UInt32(Int64(upper) - Int64(lower)))
        return Int32(Int64(r) + Int64(lower))
    }
}

public extension UInt
{
    static func random(_ lower: UInt = min, upper: UInt = max) -> UInt
    {
        return UInt(UInt64.random(UInt64(lower), upper: UInt64(upper)))
    }
}
