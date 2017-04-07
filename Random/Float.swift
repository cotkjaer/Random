//
//  Float.swift
//  Random
//
//  Created by Christian Otkjær on 14/02/16.
//  Copyright © 2016 Christian Otkjær. All rights reserved.
//

public extension Float
{
    /**
     Create a random Float in the given interval
     - parameter lower: lower bounds, default: 0
     - parameter upper: upper bounds, default: 1
     - returns: A random Float in `[min(lower,upper); max(lower,upper)]`
     - note: the order of lower and upper is irrelevant
     */
    public static func random(between lower: Float = 0, and upper: Float = 1) -> Float
    {
        return  arc4random_uniform(above: lower, below: upper)
//        //Construct random Float between 0 and 1
//        let s =
//        let r = Float(arc4random(UInt32.self)) / Float(UInt32.max)
//        
//        //Use LERP to find result (renders the order of lower and upper irrelevant)
//        return r * lower + (1 - r) * upper
    }
}
