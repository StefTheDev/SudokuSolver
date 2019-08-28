//
//  matrix.swift
//  SudokuSolver
//
//  Created by Tjeu Vreeburg on 22/08/19.
//  Copyright © 2019 StefThedev. All rights reserved.
//

import Foundation

class Matrix {
    final let rows: Int, columns: Int
    var grid: [Character]
    
    init(_ rows: Int, _ columns: Int, _ symbol:Character) {
        self.rows = rows;
        self.columns = columns;
        
        grid = Array(repeating: symbol, count: rows * columns)
    }
    
    func isValid(_ row: Int, _ column: Int) -> Bool {
        return (row >= 0 && row < rows) && (column >= 0 && column < columns)
    }
    
    subscript(_ row: Int, _ column: Int) -> Character {
        get {
            return grid[(row * columns) + column]
        }
        set { grid[(row * columns) + column] = newValue }
    }
}
