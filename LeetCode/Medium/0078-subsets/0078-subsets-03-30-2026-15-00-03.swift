class Solution {
    func subsets(_ nums: [Int]) -> [[Int]] {
        
        var path: [Int] = []
        var answer: [[Int]] = []

        func backtracking(_ start: Int) {
            answer.append(path)

            for i in start..<nums.count {
                path.append(nums[i])
                backtracking(i+1)
                path.removeLast()
            }
        }

        backtracking(0)
        return answer
    }
}