//
//  ViewController.swift
//  Assignement_2_Block_2
//
//  Created by Ievgen Petrovskiy on 06.02.2021.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        manhattan()
        howMuchMoneyDOyouNeed()
        howLongHeCanSurvive()
        reversNumber(number: 763)
        
    }
    
    /// First Task
    func manhattan () {
        let start = 1826
        let finish = 2021
        let price = 24.0
        let percentPerYaer = 0.06
        var totalMoney = price
        
        let amountOfYears = finish - start
        
        for _ in 1...amountOfYears {
            totalMoney = Double(totalMoney) + Double(totalMoney) * Double(percentPerYaer)
        }
        print ("If they, instead of buying Island for \(Int(price))USD, did put money on the bank account - they could get \(Int(totalMoney)) USD in total after \(amountOfYears) years")
    }
    
    /// Second task
    func howMuchMoneyDOyouNeed() {
        let scholarship = 700
        var expences = 1000
        let priceRisePercent = 1.03
        let academicYear = 10
        var totalExpences = Double()
        
        for _ in 1...academicYear {
            totalExpences = Double(expences) + Double(totalExpences) * Double(priceRisePercent)
            expences = Int(Double(expences) + Double(expences) * 0.03)
        }
        print("Total expences for student per academic Year are \(Int(totalExpences))")
        
        let expencesPerMonth = Double(totalExpences) / Double(academicYear)
        print("Per month student's expences are \(Int(expencesPerMonth))")
        let needToGet = Double(expencesPerMonth) - Double(scholarship)
        print("Student need to find somewhere additional \(Int(needToGet))hrn per month to be able to survive \(academicYear) monthes")
    }
    
    /// Third Task
    func howLongHeCanSurvive() {
        let savings = 2400
        let scholarship = 700
        var expencesPerMonth = 1000
        let priceRise = 1.03
        var counter = 0
        var totalMoney = savings + scholarship - Int(Double(expencesPerMonth) * Double(priceRise))
        
        while totalMoney > 0 {
            totalMoney = Int(Double(totalMoney) - Double(expencesPerMonth) * Double(priceRise) + Double(scholarship))
            expencesPerMonth = Int(Double(expencesPerMonth) + Double(expencesPerMonth) * 0.03)
            counter += 1
        }
        
        print("If student have \(savings)hrn in his pocket allready & get \(scholarship)hrn income each month with \(expencesPerMonth)hrn as his expences per month - he can survive \(counter) monthes without need to have an additional income")
    }
    
    /// Forth task few ways
    func reversNumber(number:Int) {
        /// Way#1
        let number = String(number)
        var numberArray = [Character]()
        var reversNumber = ""
        
        for character in number {
            numberArray.append(character)
        }
        
        for i in 1...numberArray.count {
            reversNumber += String(numberArray[numberArray.count - i])
        }
        print("The revers of a number \(number) will be number \(reversNumber)")
        
        /// Way#2
//        let numberArray = String(number)
//                let reverse = String(numberArray.reversed())
//               print("The revers of a number \(number) will be number \(reversNumber)")
//        
        
        
    }
    
}


