class Solution {
    func romanToInt(_ s: String) -> Int {
        let map: [Character: Int] = [
            "I": 1,
            "V": 5,
            "X": 10,
            "L": 50,
            "C": 100,
            "D": 500,
            "M": 1000
        ]

        let chars = Array(s)
        var result = 0
        var prev = 0

        for i in (0..<chars.count).reversed() {
            let value = map[chars[i]]!

            if value < prev {
                result -= value
            } else {
                result += value
            }

            prev = value
        }

        return result
    }
}