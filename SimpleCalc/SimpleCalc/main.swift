//
//  main.swift
//  SimpleCalc
//
//  Created by Ted Neward on 10/3/17.
//  Copyright © 2017 Neward & Associates. All rights reserved.
//

import Foundation

public class Calculator {
    public func calculate(_ args: [String]) -> Int {
        var result: Int = 0
        result = 0
        let size = args.count
        if args.contains("+"){
            result = Int(args[0])! + Int(args[2])!
        }
        else if args.contains("-"){
            result = Int(args[0])! - Int(args[2])!
        }
        else if args.contains("*"){
            result = Int(args[0])! * Int(args[2])!
        }
        else if args.contains("/"){
            result = Int(args[0])! / Int(args[2])!
        }
        else if args.contains("%"){
            result = Int(args[0])! % Int(args[2])!
        }
        else if args.contains("avg"){
            if size > 1{
                for i in 0 ..< size - 1{
                    result += Int(args[i])!
                }
                result = result / (size - 1)
            }
        }
        else if args.contains("count"){
            result = size - 1
        }
        else if args.contains("fact"){
            if size > 1{
                let num: Int = Int(args[0])!
                if num < 3{
                    result = num
                }
                else{
                    result = factorial(num)
                    }
            }
        }
        
        
        return result
    }
    
    public func factorial(_ args: Int) -> Int {
        var result = args
        for i in 1..<args {
            result = result * (args - i)
        }
        return result
    }
    
    public func calculate(_ arg: String) -> Int {
        return calculate( arg.split(separator: " ").map({ substr in String(substr) }) )
    }
}

print("UW Calculator v1")
print("Enter an expression separated by returns:")
let first = readLine()!
let operation = readLine()!
let second = readLine()!
print(Calculator().calculate([first, operation, second]))

//let testsAndResults = [
//    ("0 count", 1),
//    ("0 avg", 0),
//    ("0 fact", 0)
//]
//
//for tup in testsAndResults {
//    print(Calculator().calculate(tup.0))
//    print(Calculator().calculate(tup.0) == tup.1)
//}
