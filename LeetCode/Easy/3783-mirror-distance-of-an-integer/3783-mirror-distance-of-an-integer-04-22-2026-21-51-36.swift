class Solution {
    func mirrorDistance(_ n: Int) -> Int {
        return abs(n - Int(String(String(n).reversed()))!)
    }
}