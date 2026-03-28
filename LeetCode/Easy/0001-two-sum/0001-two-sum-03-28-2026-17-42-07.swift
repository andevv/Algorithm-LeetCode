class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        
        func backtracking(_ start: Int, _ answer: inout [Int]) -> [Int]? {

            //base condition
            if answer.count == 2 {
                if nums[answer[0]] + nums[answer[1]] == target {
                    return answer
                }

                return nil
            }

            for i in start..<nums.count {
                answer.append(i)

                if let result = backtracking(i+1, &answer) {
                    return result
                }

                answer.removeLast()
            }

            return nil
        }

        var answer: [Int] = []
        return backtracking(0, &answer) ?? []
    }
}
