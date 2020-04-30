/*
 We are playing the Guess Game. The game is as follows:
 
 I pick a number from 1 to n. You have to guess which number I picked.
 
 Every time you guess wrong, I'll tell you whether the number is higher or lower.
 
 You call a pre-defined API guess(int num) which returns 3 possible results (-1, 1, or 0):
 
 -1 : My number is lower
 1 : My number is higher
 0 : Congrats! You got it!
 */

import Foundation

extension Easy {
    static func guessNumber(_ n: Int) -> Int {
        if guess(n) == 0 {
            return n
        }
        var lower: Int = 1
        var upper: Int = n
        var answer: Int = lower + (upper - lower) / 2
        var result: Int = guess(answer)
        while result != 0 {
            if result == 1 {
                lower = answer + 1
            } else if result == -1 {
                upper = answer - 1
            }
            answer = lower + (upper - lower) / 2
            result = guess(answer)
        }
        return answer
    }
    
    private static func guess(_ num: Int) -> Int {
        if num > 6 {
            return -1
        } else if num < 6 {
            return 1
        } else {
            return 0
        }
    }
}
