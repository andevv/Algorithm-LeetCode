class Solution {
    func permute(_ nums: [Int]) -> [[Int]] {
        var answer: [[Int]] = []
        var path: [Int] = []
        var visited = Array(repeating: false, count: nums.count)

        func dfs() {
            if path.count == nums.count {
                answer.append(path)
                return
            }

            for i in 0..<nums.count {
                if visited[i] { continue }

                visited[i] = true
                path.append(nums[i])

                dfs()

                path.removeLast()
                visited[i] = false
            }
        }

        dfs()
        return answer
    }
}