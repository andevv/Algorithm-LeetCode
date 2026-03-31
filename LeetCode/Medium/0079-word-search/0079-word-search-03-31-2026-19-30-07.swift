class Solution {
    func exist(_ board: [[Character]], _ word: String) -> Bool {

        let n = board.count
        let m = board[0].count
        let wordArray = Array(word)
        var visited = Array(repeating: Array(repeating: false, count: m), count: n)

        func inRange(_ i: Int, _ j: Int) -> Bool {
            return i >= 0 && i < n && j >= 0 && j < m
        }

        func backtracking(_ i: Int, _ j: Int, _ w: Int) -> Bool {
            if !visited[i][j] && board[i][j] == wordArray[w] {
                if w == wordArray.count - 1 {
                    return true
                }

                visited[i][j] = true

                let directions = [(1, 0), (0, 1), (-1, 0), (0, -1)]

                for (dx, dy) in directions {
                    let ni = i + dx
                    let nj = j + dy

                    if inRange(ni, nj) {
                        if backtracking(ni, nj, w + 1) {
                            visited[i][j] = false
                            return true
                        }
                    }
                }

                visited[i][j] = false
            }

            return false
        }

        for i in 0..<n {
            for j in 0..<m {
                if backtracking(i, j, 0) {
                    return true
                }
            }
        }

        return false
    }
}