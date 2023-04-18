/// Given an array of integers nums which is sorted in ascending order,
/// and an integer target, write a function to search target in nums.
/// If target exists, then return its index. Otherwise, return -1.
///You must write an algorithm with O(log n) runtime complexity.
/// https://leetcode.com/problems/binary-search/description/?envType=study-plan&id=algorithm-i


func search(_ nums: [Int], _ target: Int) -> Int {
    var leftIndex = 0
    var rightIndex = nums.count - 1
    var midleIndex = (leftIndex + rightIndex) / 2
    
    while (rightIndex - leftIndex + 1) > 0 {
        midleIndex = (leftIndex + rightIndex) / 2
        if nums[midleIndex] > target {
            rightIndex = midleIndex - 1
        } else if nums[midleIndex] < target {
            leftIndex = midleIndex + 1
        } else  {
            return midleIndex
        }
    }
    return -1
}

search([-1,0,3,5,9,12], 9)


/// Given a sorted array of distinct integers and a target value, return the index if the target is found.
/// If not, return the index where it would be if it were inserted in order.
/// https://leetcode.com/problems/search-insert-position/?envType=study-plan&id=algorithm-i


func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    var leftIndex = 0
    var rightIndex = nums.count - 1
    
    while leftIndex <= rightIndex {
        let midleIndex = (rightIndex + leftIndex) / 2

        if nums[midleIndex] < target {
            leftIndex = midleIndex + 1
        } else if nums[midleIndex] > target {
            rightIndex = midleIndex - 1
        } else {
            return midleIndex
        }
    }
    return leftIndex
}

searchInsert([1,3,5,6], 4)
