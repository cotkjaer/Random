//
//  CGCGFloat.swift
//  Random
//
//  Created by Christian Otkjær on 14/02/16.
//  Copyright © 2016 Christian Otkjær. All rights reserved.
//

import CoreGraphics

public extension CGFloat
{
    /**
     Create a random CGFloat in the given interval
     - parameter lower: lower bounds, default: 0
     - parameter upper: upper bounds, default: 1
     - returns: A random CGFloat in `[min(lower,upper); max(lower,upper)]`
     - note: the order of lower and upper is irrelevant
     */
    public static func random(between lower: CGFloat = 0, and upper: CGFloat = 1) -> CGFloat
    {
        //Construct random CGFloat between 0 and 1
        let r = CGFloat(arc4random(UInt32)) / CGFloat(UInt32.max)
        
        //Use LERP to find result (renders the order of lower and upper irrelevant)
        return r * lower + (1 - r) * upper
    }
}
