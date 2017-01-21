//
//  main.swift
//  BattleShip
//
//  Created by Andy-E on 2017-01-18.
//  Copyright © 2017 Andy-E. All rights reserved.
//

import Foundation



print("    BattleShip")

// √ Create a class that models the board of the game
// √ Make sure that you can change the board by adding ships
// - Add in one game board for your ships and one for the enemy (Use boolean values to change the Class?)
// - Create a tracking system so that when on player takes a you know where he went

var playerBoard = GameBoard(boardName : "My Board")

var playerViewBoard = GameBoard(boardName : "My target board")

var computerBoard = GameBoard(boardName : "Computer Board")



//Mark: Game Setup

playerBoard.drawBoard()
playerBoard.setupPosition()

computerBoard.randomSetup()
playerBoard.drawBoard()



//Mark: Main game loop
playerViewBoard.drawTarget()
playerViewBoard.fireOnMyShip()









