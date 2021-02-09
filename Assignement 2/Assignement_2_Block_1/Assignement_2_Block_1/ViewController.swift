//
//  ViewController.swift
//  Assignement_2_Block_1
//
//  Created by Ievgen Petrovskiy on 06.02.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        biggestNumber(number1: 1, number2: 5)
        arithmetics(number: 5)
        numberGame(number: 6)
        intDevisor(number: 6)
        perfectNumber(number: 28)
    }

    /// Task 0
    
    func biggestNumber(number1: Int, number2: Int) {
        if number1 > number2 {
            print("\(number1) is bigger then \(number2)")
        } else if number2 > number1 {
            print("\(number2) is bigger than \(number1)")
        } else if number1 == number2 {
            print("\(number2) is equal to \(number1)")
        }
    }
    
    /// Task 1
    func arithmetics(number: Int) {
        let timesTwo = number * number
        let timesThree = timesTwo * number
        
        print("\(number) times two = \(timesTwo), times three = \(timesThree)")
    }

    /// Task 2
    func numberGame(number: Int) {
        for i in 1...number {
            print("\(i), \(number - i)")
        }
    }
    
    /// Task 3
    func intDevisor(number: Int) {
        var devisorArray = [Int]()
        for i in 1..<number {
            if (number % i) == 0 {
                devisorArray.append(i)
            }
        }
        print("\(number) have \(devisorArray.count) devisors & \(devisorArray) are divicibles of \(number)")
    }
    
    /// task 4
    func perfectNumber(number: Int) {
        
        var devisorsArray = [Int]()
        for i in 1..<number {
            if (number % i) == 0 {
                devisorsArray.append(i)
            }
        }
        let summ = devisorsArray.reduce(0 , +)
        if number == summ {
            print("\(number) is a perfect number")
        } else {
            print("\(number) is not a perfect number, try again with different number")
        }
        
    }
}

