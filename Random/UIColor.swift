//
//  UIColor.swift
//  Random
//
//  Created by Christian Otkjær on 14/02/16.
//  Copyright © 2016 Christian Otkjær. All rights reserved.
//

import UIKit

//MARK: - Random

private func randomColorComponent(_ minValue: CGFloat, _ maxValue: CGFloat) -> CGFloat
{
    return CGFloat.random(between: minValue, and: maxValue)
}

private func randomColorComponent(_ low: Int = 0, _ high: Int = 0xFF) -> CGFloat
{
    let l = max(0, min(low, high))
    let h = min(0xFF, max(low, high))
    
    return CGFloat(Int.random(between: l, and: h + 1)) / CGFloat(0xFF)
}

public extension UIColor
{
    /// Produces a random solid color
    static func random() -> UIColor
    {
        return randomSolidColor()
    }
    
    /// Produces a random color with an alpha component = 1
    static func randomSolidColor(
        minR: Int = 0, maxR: Int = 0xFF,
        minG: Int = 0, maxG: Int = 0xFF,
        minB: Int = 0, maxB: Int = 0xFF
        ) -> UIColor
    {
        return UIColor(
            red: randomColorComponent(minR, maxR),
            green: randomColorComponent(minG, maxG),
            blue: randomColorComponent(minB, maxB),
            alpha: 1
        )
    }
    
    /// Produces a random color with a random alpha part
    static func randomColor(
        minR: Int = 0, maxR: Int = 0xFF,
        minG: Int = 0, maxG: Int = 0xFF,
        minB: Int = 0, maxB: Int = 0xFF,
        minA: Int = 0, maxA: Int = 0xFF
        ) -> UIColor
    {
        return UIColor(
            red: randomColorComponent(minR, maxR),
            green: randomColorComponent(minG, maxG),
            blue: randomColorComponent(minB, maxB),
            alpha: randomColorComponent(minA, maxA)
        )
    }
    
    convenience init(
        minRed:CGFloat,  maxRed:CGFloat,
        minGreen:CGFloat, maxGreen:CGFloat,
        minBlue:CGFloat, maxBlue:CGFloat,
        minAlpha:CGFloat,  maxAlpha:CGFloat)
    {
        self.init(red: randomColorComponent(minRed, maxRed),
            green:randomColorComponent(minGreen, maxGreen),
            blue:randomColorComponent(minBlue, maxBlue),
            alpha:randomColorComponent(minAlpha, maxAlpha))
    }
    
    convenience init(
        minHue:CGFloat, maxHue:CGFloat,
        minSaturation:CGFloat, maxSaturation:CGFloat,
        minBrightness:CGFloat, maxBrightness:CGFloat,
        minAlpha:CGFloat, maxAlpha:CGFloat)
    {
        self.init(hue:randomColorComponent(minHue, maxHue),
            saturation:randomColorComponent(minSaturation, maxSaturation),
            brightness:randomColorComponent(minBrightness, maxBrightness),
            alpha:randomColorComponent(minAlpha, maxAlpha))
    }
}

