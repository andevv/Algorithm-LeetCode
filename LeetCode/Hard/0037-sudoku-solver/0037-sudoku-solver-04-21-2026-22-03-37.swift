class Solution {
    func solveSudoku(_ board: inout [[Character]]) {

        func isValid(_ board: [[Character]], _ row: Int, _ col: Int, _ char: Character) -> Bool {
            let startRow = 3 * (row / 3)
            let startCol = 3 * (col / 3)
            
            for i in 0..<9 {
                //row
                if board[row][i] == char { return false }
                //col
                if board[i][col] == char { return false }

                //3x3 box
                let boxRow = startRow + i / 3
                let boxCol = startCol + i % 3

                if board[boxRow][boxCol] == char { return false }
            }

            return true
        }
        
        func backtracking(_ board: inout [[Character]]) -> Bool {
            for i in 0..<9 {
                for j in 0..<9 {
                    if board[i][j] == "." {
                        for num in "123456789" {
                            if isValid(board, i, j, num) {
                                board[i][j] = num

                                if backtracking(&board) {
                                    return true
                                }

                                board[i][j] = "."
                            }
                        }

                        return false
                    }
                }
            }

            return true
        }

        backtracking(&board)
    }
}