//
//  main.swift
//  SudokuSolver
//
//  Created by Tjeu Vreeburg on 15/08/19.
//  Copyright © 2019 StefThedev. All rights reserved.
//

import Foundation

let board = Board(9)

func readLines(_ board: Board) -> [String] {
    var array = [String]()
    
    var iteration = board.getSize()
    
    while let thing = readLine() {
        if (iteration <= 0) {
            break
        } else if(thing.count == 9) {
            array.append(thing)
            iteration -= 1
        } else {
            print("You must input 9 characters in a line.")
        }
    }
    return array;
}

board.populate(readLines(board))
print(board)
