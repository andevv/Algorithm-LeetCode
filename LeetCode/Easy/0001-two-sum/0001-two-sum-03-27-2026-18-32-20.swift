class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {

        func dfs(_ index: Int) -> [Int] {
            if index == nums.count {
                return []
            }

            for j in index+1..<nums.count {
                if nums[index] + nums[j] == target {
                    return [index, j]
                }
            }

            let answer = dfs(index + 1)
            if !answer.isEmpty {
                return answer
            }
            
            return []
        }

        return dfs(0)
    }
}