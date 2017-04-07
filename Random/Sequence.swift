//
//  SequenceType.swift
//  Random
//
//  Created by Christian Otkjær on 23/02/16.
//  Copyright © 2016 Christian Otkjær. All rights reserved.
//

public extension Sequence
{
    /**
     Picks a random element from the sequence
     
     - returns: random element or nil if the sequence is empty
     */
    func random() -> Iterator.Element?
    {
        // Simpler way, but has to create a whole Array
        // return Array(self).random()
        
        var best: Double = 2
        var randomElement: Iterator.Element? = nil
        
        for element in self
        {
            let v = Double.random(between: 0, and: 1)
            
            guard v < best else { continue }
            
            randomElement = element
            best = v
        }
        
        return randomElement
    }
    
    /**
     Shuffles the values of this sequence
     
     - returns: An array containing the shuffled elements in `self`
     */
    func shuffled() -> [Iterator.Element]
    {
        var shuffled = Array(self)
        
        shuffled.shuffle()
        
        return shuffled
    }
}
