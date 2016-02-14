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
        return Double.random() > 0.5
    }
}

/// Randomly returns **either** `this` or `that`
@warn_unused_result
public func either<T>(this: T, or that: T) -> T
{
    return Bool.random() ? this : that
}

/// Randomly returns one of the `T`s
@warn_unused_result
public func random<T>(t: T, _ ts: T...) -> T
{
    return (ts + [t]).random()!
}

/// Randomly executes **either** `this()` or `that()`
@warn_unused_result
public func either<T>(@noescape this: () throws -> T, @noescape or that: () throws -> T) rethrows -> T
{
    return Bool.random() ? try this() : try that()
    
//    if Bool.random()
//    {
//        return try this()
//    }
//    else
//    {
//        return try that()
//    }
}