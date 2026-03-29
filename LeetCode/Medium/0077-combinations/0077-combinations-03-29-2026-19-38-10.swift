class Solution {
    func combine(_ n: Int, _ k: Int) -> [[Int]] {
        
        var result: [[Int]] = []
        var path: [Int] = []

        func backtracking(_ start: Int) {
            if path.count == k {
                result.append(path)
                return
            }

            if start > n { return }

            for i in start...n {
                path.append(i)
                backtracking(i+1)
                path.removeLast()
            }
        }

        backtracking(1)
        return result
    }
}