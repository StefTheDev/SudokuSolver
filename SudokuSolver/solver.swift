//
//  solver.swift
//  SudokuSolver
//
//  Created by Tjeu Vreeburg on 29/08/19.
//  Copyright © 2019 StefThedev. All rights reserved.
//

import Foundation

class Solver {
    let board : Board
    
    init(board: Board) {
        self.board = board
    }
    
    private func isEmpty(_ x: Int, _ y: Int) ->Bool {
        return board.matrix[x, y] == "_"
    }
    
    private func inRow(_ row: Int, _ symbol: Character) -> Bool {
        for column in 0..<board.getSize() {
            if(board.matrix[row, column] == symbol) {
                return true;
            }
        }
        return false
    }
    
    private func inColumn(_ column: Int, _ symbol: Character) -> Bool {
        for row in 0..<board.getSize() {
            if(board.matrix[row, column] == symbol) {
                return true;
            }
        }
        return false
    }
    
    private func inBox(_ boxRow: Int, _ boxColumn: Int, _ symbol: Character) -> Bool {
        for row in 0..<(board.getSize() / 3) {
            for column in 0..<(board.getSize() / 3) {
                if(board.matrix[row + boxRow, column + boxColumn] == symbol) {
                    return true
                }
            }
        }
        return false
    }
    
    public func isExecutable(row: Int, column: Int, symbol: Character) -> Bool {
        return !inRow(row, symbol) && !inColumn(column, symbol) && !inBox(row - row % 3, column - column % 3, symbol)
    }
}
