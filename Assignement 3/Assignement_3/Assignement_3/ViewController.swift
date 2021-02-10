//
//  ViewController.swift
//  Assignement_3
//
//  Created by Ievgen Petrovskiy on 07.02.2021.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        nameCounts(name: "Zhenya")
        endingPresent(patronymic: "Viktorovych")
        separateMyName(fullName: "ZhenyaPetrovskiy")
        mirror(text: "Ocq")
        formatNumber(number: 98749876587364502)
        passwordCheck(pswrd: "qwErty1")
        sortArray()
    }
    
    /// Task 1
    func nameCounts(name: String) {
        print("In name \(name) there are \(name.count) individual letters")
    }
    
    /// Task 2
    func endingPresent(patronymic: String) {
        let ending = "ych"
        if patronymic.hasSuffix(ending) {
            print("Ending ...\(ending) is present in patronymic \(patronymic)")
        } else {
            print("There is no ending ...\(ending) in patronymic \(patronymic)")
        }
    }
    
    ///Task 3
    func separateMyName(fullName: String) {
        
        var str1 = [Character]()
        
        var indexCount = 0
        
        let reverseFullName = fullName.reversed()
        var reverseFullNameArray = [Character]()
        
        for i in reverseFullName {
            reverseFullNameArray.append(i)
        }
        
        for i in reverseFullName {
            if i.isLowercase {
                str1.append(i)
                indexCount += 1
            } else if i.isUppercase {
                str1.append(i)
                indexCount += 1
                break
            }
        }
        
        let str2 = String(reverseFullNameArray[indexCount..<reverseFullNameArray.count])
        
        let name1 = String(str1.reversed())
        let name2 = String(str2.reversed())
        let newFullName = "\(name2) \(name1)"
        
        print("Correct typing of \(fullName) will be \(newFullName)")
        
    }
    
    /// Task 4
    func mirror(text: String) {
        
        var textArray = [Character]()
        var mirrordText = ""
        
        for i in text {
            textArray.append(i)
        }
        
        for i in 1...textArray.count {
            mirrordText += String(textArray[textArray.count - i])
        }
        
        print("Mirrored \(text) now appear to be \(mirrordText), magic!")
        
    }
    
    /// Task 5
    func formatNumber(number: Int) {
        
        let stringNumber = String(number)
        var stringNumberReversed = String(stringNumber.reversed())
        
        var counter = 3
        
        while counter < stringNumberReversed.count {
            stringNumberReversed.insert(",", at: stringNumberReversed.index(stringNumberReversed.startIndex, offsetBy: counter))
            counter += 4
        }
        
        let formatedNumber = String(stringNumberReversed.reversed())
        print("Formated number \(number) will going to be \(formatedNumber)")
        
    }
    
    /// Task 6
    func passwordCheck(pswrd: String) {
        
        let pass = String(pswrd)
        var passArray = [Character]()
        
        for i in pass {
            
            if i.isLowercase, !passArray.contains("a") {
                passArray.append("a")
            } else if i.isUppercase, !passArray.contains("b")  {
                passArray.append("b")
            } else if i.isNumber, !passArray.contains("c") {
                passArray.append("c")
            } else if i.isSymbol || i.isPunctuation || i.isMathSymbol || i.isHexDigit, !passArray.contains("d") {
                passArray.append("d")
            }
            
        }
        
        if passArray.count == 4 {
            print("Youre Password passes all condition's with \(passArray.count) matches")
        } else if passArray.count < 4 {
            print("Youre Password missmathche's conditions by \(4 - passArray.count)")
        }
        
    }
    
    /// Task 7
    func sortArray(){
        let numberArray =  [9, 1, 2, 5, 1, 7]
        var sortedNumberArray = [Int]()
        
        for i in numberArray {
            if !sortedNumberArray.contains(i) {
                sortedNumberArray.append(i)
            }
        }
        
        for i1 in 0...sortedNumberArray.count - 1 {
            for i2 in 0...sortedNumberArray.count - 2 {
                if sortedNumberArray[i1] < sortedNumberArray[i2] {
                    sortedNumberArray.swapAt(i1,i2)
                }
            }
        }
        
        print("Array of numbers \(numberArray) without iterations & sorted will look like \(sortedNumberArray)")
        
    }
    
    
    
    
    
    
}

