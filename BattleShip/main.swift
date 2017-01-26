//
//  main.swift
//  BattleShip
//
//  Created by Andy-E on 2017-01-18.
//  Copyright © 2017 Andy-E. All rights reserved.
//


import Foundation

// √ Create a class that models the board of the game
// √ Make sure that you can change the board by adding ships
// √ Add in one game board for your ships and one for the enemy (Use boolean values to change the Class?)
// - Create a tracking system so that when on player takes a you know where he went

var playerBoard = GameBoard(boardName : "My Board")

var playerViewBoard = GameBoard(boardName : "My target board")

var computerBoard = GameBoard(boardName : "Computer Board")




//Mark: Game Setup
print("    BattleShip")
print("")
print("The X charicter repersent water")
print("The O charicter repersent ships")
print("The @ charicter are places you have not fired")
print("The + charicter are places you have fired")
playerBoard.drawBoard()
playerBoard.randomSetup()
//playerBoard.setupPosition()

computerBoard.randomSetup()
playerBoard.drawBoard()

/*
 func compareHit(){ //turn the thing false if its been hit
 for col in 1...playerViewBoard.shipPosition.count-1 {
 for row in 1...playerViewBoard.shipPosition[col].count-1{
 //print("A")
 if playerViewBoard.shipPosition[col][row] == true {
 if playerViewBoard.shipPosition[col][row] == computerBoard.shipPosition[col][row] {
 computerBoard.shipPosition[col][row] = false
 }
 }
 }
 }
 }
 */
//first value is target board second is acutal board
func checkBoard(p1 : [[Bool]], p2: [[Bool]]) -> [[Bool]]{ //turn the thing false if its been hit
    var finalA = p2
    for col in 0...p1.count-1 {
        for row in 0...p1[col].count-1{
            
            if p1[col][row] == true {
                if p1[col][row] == p2[col][row] {
                    print("")
                    print("HIT!!")
                    print("")
                    finalA[col][row] = false
                    break
                    //p2[col][row] = false
                }
            }
        }
    }
    return finalA
}


func endGame(p1 : [[Bool]]) -> Bool{ //turn the thing false if its been hit
    var finalA = true
    for col in 0...p1.count-1 {
        for row in 0...p1[col].count-1{
            
            if p1[col][row] == true {
                
                finalA = false
                break
                //p2[col][row] = false
            }
        }
    }
    return finalA
}

//func automateTurn(){

//}


//Mark: Main game loop



for i in 1...1000 {
    if endGame(p1: computerBoard.shipPosition) {
        
        print("")
        print("You won!")
        
        break
    }
    if endGame(p1: playerBoard.shipPosition) {
        
        print("")
        print("Computer Won :(")
        
        break
    }
    
    playerViewBoard.drawTarget()
    playerViewBoard.fireOnMyShip()
    //compareHit()
    computerBoard.shipPosition = checkBoard(p1: playerViewBoard.shipPosition, p2: computerBoard.shipPosition)
    
    //playerViewBoard.drawTarget()
    //add a funciton for the computer turn
    //computerBoard.drawBoard()
    playerBoard.randomFire() //turns a rand square false
    playerBoard.drawBoard()
    //computerBoard.drawBoard()
    
    
}








