class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {

        func binarySearch(_ nums: [Int], _ left: Int, _ right: Int, _ target: Int) -> Int {
            
            if left > right {
                return -1
            }

            let mid = left + (right - left) / 2

            if nums[mid] == target {
                return mid
            } else if nums[mid] < target {
                return binarySearch(nums, mid+1, right, target)
            } else {
                return binarySearch(nums, left, mid-1, target)
            }
        }

        return binarySearch(nums, 0, nums.count-1, target)
    }
}