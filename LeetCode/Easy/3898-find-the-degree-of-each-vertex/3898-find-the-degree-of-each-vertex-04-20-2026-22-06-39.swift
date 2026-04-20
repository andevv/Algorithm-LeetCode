class Solution {
    func findDegrees(_ matrix: [[Int]]) -> [Int] {
        var answer = Array(repeating: 0, count: matrix.count)

        for i in 0..<matrix.count {
            for j in 0..<matrix.count {
                answer[i] += matrix[i][j]
            }
        }

        return answer
    }
}