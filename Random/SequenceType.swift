//
//  SequenceType.swift
//  Random
//
//  Created by Christian Otkjær on 23/02/16.
//  Copyright © 2016 Christian Otkjær. All rights reserved.
//

public extension SequenceType
{
    /**
     Picks a random element from the sequence
     
     - returns: random element or nil if the sequence is empty
     */
    @warn_unused_result
    func random() -> Generator.Element?
    {
        // Simpler way, but has to create a whole Array
        // return Array(self).random()
        
        var highest : Double = -1
        var randomElement : Generator.Element? = nil
        
        for element in self
        {
            let v = Double.random(between: 0, and: 1)
            
            if v > highest
            {
                randomElement = element
                highest = v
            }
        }
        
        return randomElement
        
    }
}
