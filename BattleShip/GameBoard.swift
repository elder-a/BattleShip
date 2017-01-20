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
    // I need on array (2D) to hole weather there is a ship there
    // I need another array
    
    
    
    var shipAmount : Int = 8
    var squareSize : Int = 8
    var shipRow : [Bool] = []
    var shipPosition : [[Bool]] = []
    var alp : [String] = ["A","B","C","D","E","F","G","H"]
    
    init() {
        for _ in 1...squareSize {
            shipRow.append(false)
        }
        for _ in 1...squareSize+1 {
            shipPosition.append(shipRow)
        }
        //print(shipPosition)
        //shipPosition[0][1] =
        //print(shipPosition[0][1])
    }
    
    
    func drawBoard () { //Change later so it draws ships
        
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
    
    func setupPosition() {
        for i in 1...shipAmount {
            print("Please input your ship position you have \(shipAmount-i) left.")
            if let input : String = readLine() {
                
                
            }
        }
    }
    
}

