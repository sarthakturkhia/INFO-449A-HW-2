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
        else if args.contains("Avg"){
            if size > 1{
                for i in 0 ..< size - 1{
                    result += Int(args[i])!
                }
                result = result / size - 1
            }
        }
        else if args.contains("count"){
            result = size - 1
        }
        else if args.contains("fact"){
            if size > 1{
                var num: Int = Int(args[0])!
                while (num - 1 != 0){
                    result = num * num - 1
                    num = num - 1
                }
            }
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

