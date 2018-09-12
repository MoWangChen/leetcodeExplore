//
//  LCArray.swift
//  leetcode
//
//  Created by xiepengxiang on 2018/7/24.
//  Copyright © 2018年 OFBank. All rights reserved.
//

import Cocoa

class LCArray: NSObject {
    
    // 26. 删除排序数组中的重复项
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        
        var index : Int = 0
        while index < nums.count - 1 {
            if nums[index] == nums[index + 1] {
                nums.remove(at: index + 1)
            }else {
                index = index + 1
            }
        }
        return index
    }
    
    // 122. 买卖股票的最佳时机 II
    func maxProfit(_ prices: [Int]) -> Int {
        if prices.count == 0 {
            return 0
        }
        
        var sum = 0
        for i in 0 ..< prices.count - 1 {
            if prices[i] < prices[i + 1] {
                sum += prices[i + 1] - prices[i]
            }
        }
        return sum
    }
    
    // 189. 旋转数组
    func rotate(_ nums: inout [Int], _ k: Int) {
        
        if nums.count < 2 {
            return
        }
        
        let kCount = k % nums.count;
        
        if kCount == 0 {
            return
        }
        
        var kArray : [Int] = [];
        
        for index in 0 ..< kCount {
            kArray.append(nums[nums.count - kCount + index])
        }
        
        for index in 0 ..< nums.count - kCount {
            nums[nums.count - index - 1] = nums[nums.count - kCount - index - 1]
        }
        
        for index in 0 ..< kCount {
            nums[index] = kArray[index]
        }
    }
    
//    // 189. 旋转数组(未完成解题方法)
//    public func rotate1(_ nums: inout [Int], _ k: Int) {
//        if nums.count < 2 {
//            return
//        }
//
//        let kCount = k % nums.count;
//
//        if kCount == 0 {
//            return
//        }
//
//        var cycle = nums.count % kCount == 0 ? nums.count / kCount : 0
//        if kCount == 1 {
//            cycle = 0
//        }
//
//        var currentIndex = 0
//        var currentValue = nums[currentIndex]
//        var targetIndex = currentIndex + kCount
//        var targetValue = nums[targetIndex]
//
//
//        for j in 0 ..< nums.count {
//            nums[targetIndex] = currentValue;
//
//            if j != 0 && cycle != 0 && (j + 1) % cycle == 0 {
//                currentIndex = (currentIndex + 1) % nums.count
//                currentValue = nums[currentIndex]
//                targetIndex = (currentIndex + kCount) % nums.count
//                targetValue = nums[targetIndex]
//            }else {
//                currentIndex = targetIndex
//                currentValue = targetValue
//                targetIndex = (currentIndex + kCount) % nums.count
//                targetValue = nums[targetIndex]
//            }
//
//            print(nums)
//        }
//    }
    
    // 217. 存在重复元素s
    func containsDuplicate(_ nums: [Int]) -> Bool {
        
        if nums.count < 2 {
            return false
        }
        
        var numbers = nums.sorted()
        
        for index in 0 ..< numbers.count - 1 {
            if (numbers[index] == numbers[index+1]) {
                return true;
            }
        }
        
        return false
    }
    
    // 136. 只出现一次的数字
    func singleNumber(_ nums: [Int]) -> Int {
        
        if nums.count % 2 == 0 {
            return 0
        }
        
        if nums.count < 3 {
            return nums[0];
        }
        
        var numbers = nums.sorted()
        
        for index in 1 ..< numbers.count - 1 {
        
            if numbers[index - 1] != numbers[index] {
                
                if index == 1 {
                    
                    return numbers[0]
                }
                
                if numbers[index] != numbers[index + 1] {
                    
                    return numbers[index]
                }
                
            }else {
                
                if index ==  numbers.count - 2 {
                    return numbers[numbers.count - 1]
                }
            }
        }
        
        return 0
    }
    
    // 350. 两个数组的交集 II
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        
        var repeatDic : [Int: Int] = [:]
        
        var repeatArr : [Int] = []
        
        
        for i in nums1 {
            
            if let count = repeatDic[i] {
                
                repeatDic[i] = count + 1;
            }else {
                
                repeatDic[i] = 0;
            }
            
        }
        
        for j in nums2 {
            
            if let count = repeatDic[j] {
                
                if count >= 0 {
                    
                    repeatDic[j] = count - 1
                    
                    repeatArr.append(j)
                }
                
            }
        }
        
        return repeatArr
    }
    
    // 66. 加一
    func plusOne(_ digits: [Int]) -> [Int] {
        
        var needCarryBit = false
        
        var result: [Int] = digits
        
        for (index, value) in digits.enumerated().reversed() {
            
            if value == 9 {
                
                needCarryBit = true
                
                result.replaceSubrange(Range.init(NSRange.init(location: index, length: 1))!, with: [Int(0)])
            }else {
                
                needCarryBit = false
                
                result.replaceSubrange(Range.init(NSRange.init(location: index, length: 1))!, with: [Int(value + 1)])
                
                break
            }
        }
        
        if needCarryBit {
            
            result.insert(1, at: 0)
        }
        
        return result
    }
}

