//
//  board.swift
//  SudokuSolver
//
//  Created by Tjeu Vreeburg on 15/08/19.
//  Copyright © 2019 StefThedev. All rights reserved.
//

import Foundation

class Board : CustomStringConvertible {
    final var size: Int
    var matrix: Matrix;
    
    init(_ size: Int) {
        self.size = size;
        self.matrix = Matrix(size, size, "-")
    }
    
    func getSize() -> Int {
        return size
    }
    
    func populate(_ array: [String]) {
        for x in 0..<array.count {
            var iteration = 0
            array[x].forEach { element in
                board.matrix[x, iteration] = element
                iteration += 1
            }
        }
    }
    
    var description: String {
        var string = ""
        string += "Sodoku Solver: \n"
        for x in 0..<size {
            for y in 0..<size {
                string.append(String(matrix[x, y]))
            }
            string.append("\n")
        }
        return string
    }
}
