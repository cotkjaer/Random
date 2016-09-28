//
//  CGPoint.swift
//  Random
//
//  Created by Christian Otkjær on 14/02/16.
//  Copyright © 2016 Christian Otkjær. All rights reserved.
//

import UIKit

// MARK: - Random

public extension CGPoint
{
    /**
     Create a random CGPoint
     - parameter center: center, defaults to (0, 0)
     - parameter r1: bounds, defaults to 0
     - parameter radius: bounds
     - returns: random CGPoint within a distance to the given center in the range of the given radi
     */
    static func random(_ center: CGPoint = CGPoint.zero, betweenRadius r1: CGFloat = 0, radius: CGFloat) -> CGPoint
    {
        let radius = CGFloat.random(between: abs(r1), and: abs(radius))
        let alpha = CGFloat.random(between: 0, and: 2 * CGFloat(M_PI))
        
        return CGPoint(x: center.x + cos(alpha) * radius, y: center.y + sin(alpha) * radius)
    }
    
    /**
     Create a random CGPoint inside a CGRect
     - parameter rect: bounding frame for the random point
     - returns: Random point inside the rect or nil, if no point could be found.
     */
    static func random(inFrame rect: CGRect) -> CGPoint?
    {
        return CGPoint.random(insidePath: UIBezierPath(rect: rect))
    }
    
    /**
     Create a random CGPoint inside a path
     - parameter path,: bounding path for random point
     - returns: Random point inside path or nil, if no point could be found.
     */
    static func random(insidePath path: UIBezierPath) -> CGPoint?
    {
        let bounds = path.bounds
        
        for _ in 0...100
        {
            let point =
            CGPoint(x: CGFloat.random(between: bounds.minX, and: bounds.maxX),
                y: CGFloat.random(between: bounds.minY, and: bounds.maxY))
            
            if path.contains(point)
            {
                return point
            }
        }
        
        return nil
    }
}

