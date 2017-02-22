//
//  CollectionType.swift
//  Random
//
//  Created by Christian Otkjær on 23/02/16.
//  Copyright © 2016 Christian Otkjær. All rights reserved.
//

// MARK: - Random

public extension Collection where Index == Int
{
    /**
     Picks a random element from the Int-indexed collection
     
     - returns: random element or nil if the collection is empty
     */
    func random() -> Iterator.Element?
    {
        guard count > 1 else { return first }
        
        return self[Int.random(between: startIndex, and: endIndex)]
    }
}
