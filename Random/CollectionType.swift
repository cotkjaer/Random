//
//  CollectionType.swift
//  Random
//
//  Created by Christian Otkjær on 23/02/16.
//  Copyright © 2016 Christian Otkjær. All rights reserved.
//

// MARK: - Random

//public extension CollectionType 
//{
//    /**
//     Picks a random element from a collection that is not indexed by Int
//     
//     - returns: random element or nil if the collection is empty
//     */
//    @warn_unused_result
//    func random() -> Generator.Element?
//    {
//        if let index = (startIndex..<endIndex).random()
//        {
//            return self[index]
//        }
//        
//        return nil
//    }
//}
//

public extension CollectionType where Self.Index == Int
{
    /**
     Picks a random element from the Int-indexed collection
     
     - returns: random element or nil if the collection is empty
     */
    @warn_unused_result
    func random() -> Generator.Element?
    {
        switch count
        {
        case 0:
            return nil
        case 1:
            return first
        default:
            return self[Int.random(between: startIndex, and: endIndex)]
        }
    }
}
