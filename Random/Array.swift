//
//  Array.swift
//  Random
//
//  Created by Christian Otkjær on 14/02/16.
//  Copyright © 2016 Christian Otkjær. All rights reserved.
//

// MARK: - Shuffle

public extension Array
{
    /**
     Randomly rearranges (shuffles) the elements of self using the [Fisher-Yates shuffle](https://en.wikipedia.org/wiki/Fisher–Yates_shuffle)
     */
    mutating func shuffle()
    {
        if count > 1
        {
            for var i = count - 1; i >= 1; i--
            {
                let j = Int.random(between: 0, and: i+1)
                
                if j != i
                {
                    swap(&self[i], &self[j])
                }
            }
        }
    }
    
    /**
     Shuffles the values of the array into a new one
     
     - returns: Shuffled copy of self
     */
    func shuffled() -> Array
    {
        var shuffled = self
        
        shuffled.shuffle()
        
        return shuffled
    }
}




