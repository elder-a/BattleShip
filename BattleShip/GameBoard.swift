//
//  GameBoard.swift
//  BattleShip
//
//  Created by Andy-E on 2017-01-18.
//  Copyright © 2017 Andy-E. All rights reserved.
//

import Foundation


class GameBoard {
    //    1 2 3 4 5 6 7 8
    //    _______________
    // A | | | | | | | | |
    // B | | | | | | | | |
    // C | | | | | | | | |
    // D | | | | | | | | |
    // E | | | | | | | | |
    // F | | | | | | | | |
    // G | | | | | | | | |
    // H | | | | | | | | |
    //
    // √ I need on array (2D) to hole weather there is a ship there
    //
    
    
    
    var shipAmount : Int = 6
    var squareSize : Int = 8
    var shipRow : [Bool] = []
    var shipPosition : [[Bool]] = []
    var alp : [String] = ["A","B","C","D","E","F","G","H"]
    var alpComapare: [String : Int] = ["A" : 1,"B" : 2,"C" : 3,"D" : 4,"E" : 5,"F" : 6,"G" : 7,"H" : 8]
    var boardName : String
    init(boardName : String) {
        self.boardName = boardName
        for _ in 1...squareSize {
            shipRow.append(false)
        }
        for _ in 1...squareSize+1 {
            shipPosition.append(shipRow)
        }
    }
    
    
    func drawBoard () { //Change later so it draws ships
        print("--\(boardName)--")
        print("  ", terminator:"")
        
        for i in 1...squareSize {
            print("\(i) ", terminator:"")
        }
        print("")
        
        for i in 1...squareSize {
            print("\(alp[i-1])", terminator:"")
            for j in 0...squareSize-1 {
                if shipPosition[i][j] {
                    print("|O", terminator:"")
                } else {
                    print("|X", terminator:"")
                }
                if j == 7 {
                    print("|", terminator:"")
                }
                
            }
            print("")
        }
    }
    
    func drawTarget () { //Change later so it draws ships
        print("--\(boardName)--")
        print("  ", terminator:"")
        
        for i in 1...squareSize {
            print("\(i) ", terminator:"")
        }
        print("")
        
        for i in 1...squareSize {
            print("\(alp[i-1])", terminator:"")
            for j in 0...squareSize-1 {
                if shipPosition[i][j] {
                    print("|+", terminator:"")
                } else {
                    print("|@", terminator:"")
                }
                if j == 7 {
                    print("|", terminator:"")
                }
                
            }
            print("")
        }
    }
    
    func setupPosition() {
        for i in 1...shipAmount {
            print("Please input your ship position you have \(shipAmount-i+1) left.(Use the grid, example(A4)): ", terminator:"")
            
            var xVal = 0
            var yVal = 0
            
            if let input : String = readLine() {
                for value in input.characters {
                    let newVal  = String(value)
                    //var newVal : Int = Int(value)
                    for letter in alpComapare {
                        if newVal == letter.key {
                            xVal = letter.value
                        }
                        if  String(newVal) == String(letter.value)  {
                            yVal = Int(newVal)! - 1
                            
                        }
                    }
                }
            }
            shipPosition[xVal][yVal] = true
            print("X value: \(xVal), Y value:  : \(yVal)")
        }
    }
    func randomSetup() {
        for _ in 1...shipAmount {
            let xVal : Int = Int(arc4random_uniform(8)) // [0, 7]
            let yVal : Int = Int(arc4random_uniform(8)) // [0, 7]
            shipPosition[xVal][yVal] = true
        }
    }
    func randomFire() {
        //for _ in 1...1000 {
            let xVal : Int = Int(arc4random_uniform(8)) // [0, 7]
            let yVal : Int = Int(arc4random_uniform(8)) // [0, 7]
            if shipPosition[xVal][yVal] { //MAKE SURE TO CHANGE OTHER ONE!!!
                print("Computer HIT!")
                shipPosition[xVal][yVal] = false
            }
        //}
    }
    func fireOnMyShip(){
        var xVal = 0
        var yVal = 0
        print("Put in coordinites to fire ex.(A4): ", terminator: "")
        if let input : String = readLine() {
            for value in input.characters {
                let newVal  = String(value)
                //var newVal : Int = Int(value)
                for letter in alpComapare {
                    if newVal == letter.key {
                        xVal = letter.value
                    }
                    if  String(newVal) == String(letter.value)  {
                        yVal = Int(newVal)! - 1
                        
                    }
                }
            }
        }
        
        shipPosition[xVal][yVal] = true
        //print("X value: \(xVal), Y value:  : \(yVal)")
    }
}




