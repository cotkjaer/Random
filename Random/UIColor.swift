//
//  UIColor.swift
//  Random
//
//  Created by Christian Otkjær on 14/02/16.
//  Copyright © 2016 Christian Otkjær. All rights reserved.
//

import UIKit

//MARK: - Random

private func randomColorComponent(minValue: CGFloat, _ maxValue: CGFloat) -> CGFloat
{
    return CGFloat.random(between: minValue, and: maxValue)
}

private func randomColorComponent() -> CGFloat
{
    return CGFloat(Int.random(between: 0x00, and: 0xFF + 1)) / CGFloat(0xFF)
}

public extension UIColor
{
    /// Produces a random solid color
    static func random() -> UIColor
    {
        return randomSolidColor()
    }
    
    /// Produces a random color with an alpha component = 1
    static func randomSolidColor() -> UIColor
    {
        return UIColor(
            red: randomColorComponent(),
            green: randomColorComponent(),
            blue: randomColorComponent(),
            alpha: 1
        )
    }
    
    /// Produces a random color with a random alpha part
    static func randomColor() -> UIColor
    {
        return randomSolidColor().colorWithAlphaComponent(randomColorComponent())
    }
    
    convenience init(minRed:CGFloat,
        maxRed:CGFloat,
        minGreen:CGFloat,
        maxGreen:CGFloat,
        minBlue:CGFloat,
        maxBlue:CGFloat,
        minAlpha:CGFloat,
        maxAlpha:CGFloat)
    {
        self.init(red: randomColorComponent(minRed, maxRed),
            green:randomColorComponent(minGreen, maxGreen),
            blue:randomColorComponent(minBlue, maxBlue),
            alpha:randomColorComponent(minAlpha, maxAlpha))
    }
    
    convenience init(minHue:CGFloat,
        maxHue:CGFloat,
        minSaturation:CGFloat,
        maxSaturation:CGFloat,
        minBrightness:CGFloat,
        maxBrightness:CGFloat,
        minAlpha:CGFloat,
        maxAlpha:CGFloat)
    {
        self.init(hue:randomColorComponent(minHue, maxHue),
            saturation:randomColorComponent(minSaturation, maxSaturation),
            brightness:randomColorComponent(minBrightness, maxBrightness),
            alpha:randomColorComponent(minAlpha, maxAlpha))
    }
}

