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
       let N = count
        
        if N > 1
        {
            for i in stride(from: (N - 1), to: 1, by: -1)
            {
                let j = Int.random(between: 0, and: i + 1)
                
                if j != i
                {
                    self.swapAt(i, j)
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




