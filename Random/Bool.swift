//
//  Bool.swift
//  Random
//
//  Created by Christian Otkjær on 14/02/16.
//  Copyright © 2016 Christian Otkjær. All rights reserved.
//

public extension Bool
{
    static func random() -> Bool
    {
        let n: UInt64 = arc4random()
        return n & 1 == 0
    }
}

/// Randomly returns **either** `this` or `that`

public func either<T>(_ this: T, or that: T) -> T
{
    return Bool.random() ? this: that
}

/// Randomly returns one of the `T`s

public func random<T>(_ t: T, _ ts: T...) -> T
{
    return (ts + [t]).random()!
}

/// Randomly executes **either** `this()` or `that()`

public func either<T>(this: () throws -> T, or that: () throws -> T) rethrows -> T
{
    return Bool.random() ? try this(): try that()
}
