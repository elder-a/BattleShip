//
//  main.swift
//  BattleShip
//
//  Created by Andy-E on 2017-01-18.
//  Copyright © 2017 Andy-E. All rights reserved.
//

import Foundation



print("    BattleShip")

//-Create a class that models the board of the game 
//-Make sure that you can change the board with funciton to add ships or destory them 
//-Add in command line functioality

var playerBoard = GameBoard()


playerBoard.drawBoard()
playerBoard.setupPosition()
playerBoard.drawBoard()
