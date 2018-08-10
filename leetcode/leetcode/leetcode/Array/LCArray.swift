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
    
}

