class Solution {
    func partition(_ s: String) -> [[String]] {
        let arrS = Array(s)
        var lists: [[String]] = []
        var partitions: [String] = []

        func backtracking(_ start: Int) {
            if start == arrS.count {
                lists.append(partitions)
                
                return
            }

            for i in start..<arrS.count {
                let str = String(arrS[start...i])
                
                if str == String(str.reversed()) {
                    partitions.append(str)
                    backtracking(i+1)
                    partitions.removeLast()
                }
            }
        }

        backtracking(0)

        return lists
    }
}