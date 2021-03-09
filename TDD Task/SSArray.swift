//
//  SSArray.swift
//  TDD Task
//
//  Created by Charlie Aram on 08/03/2021.
//

import Foundation


class SSArray{
    
    func linearSearch(array: [Int], searchItem: Int)->Int?{
        var item_pos: Int?
        
        for i in 0..<(array.count){
            if array[i] == searchItem{
                item_pos = i
            }
        }
        
        return item_pos
    }
    
    func binarySearch(array: [Int], searchItem: Int)->Int?{
        var item_pos: Int? = nil
        
        var lower_bound = 0
        var upper_bound = array.count - 1
        var mid = 0
        
        while (item_pos == nil) && (lower_bound != upper_bound){
            mid = Int((lower_bound+upper_bound)/2)
    
            if array[mid] == searchItem{
                item_pos = mid
            }
            else if array[mid] < searchItem{
                lower_bound = mid + 1
            }
            else if array[mid] > searchItem{
                upper_bound = mid - 1
            }
            
        }
        
        
        return item_pos
    }
    
    func bubbleSort(unsorted: [Int])->[Int]{
        var sorted: [Int] = unsorted
        
        var swaps = 1
        var temp = 0
        
        while swaps != 0{
            swaps = 0
            for i in 0..<(sorted.count-1){
                if sorted[i] > sorted[i+1]{
                    temp = sorted[i]
                    sorted[i] = sorted[i+1]
                    sorted[i+1] = temp
                    
                    swaps += 1
                }
            }
        }
        return sorted
    }
    
    func insertionSort(unsorted: [Int])->[Int]{
        var sorted: [Int] = unsorted
        
        var temp = 0
        var current = 0
        
        for pointer in 0..<sorted.count{
            
            current = pointer
            
            while (current > 0) && (sorted[current]<sorted[current-1]){
                
                temp = sorted[current]
                sorted[current] = sorted[current-1]
                sorted[current-1] = temp
                
                current -= 1
            }
            
        }
        
        
        return sorted
    }
    
    func mergeSort(unsorted: [Int])->[Int]{
        var sorted: [Int] = unsorted
        
        if sorted.count == 1{
            return sorted
        }
        
        let midPoint = sorted.count/2
        
        let a1 = mergeSort(unsorted: Array(sorted[0..<midPoint]))
        let a2 = mergeSort(unsorted: Array(sorted[midPoint..<sorted.count]))
        
        return merge(a1: a1, a2: a2)
    }
    
    func merge(a1: [Int], a2: [Int])->[Int]{
        var merged:[Int] = []
        var point1 = 0
        var point2 = 0
        
        while (point1<(a1.count)) && (point2<(a2.count)){
            if a1[point1] < a2[point2]{
                merged.append(a1[point1])
                point1 += 1
            }else if a1[point1] > a2[point2]{
                merged.append(a2[point2])
                point2 += 1
            }else{
                merged.append(a1[point1])
                point1 += 1
                merged.append(a2[point2])
                point2 += 1
            }
        }
        
        while point1 < a1.count{
            merged.append(a1[point1])
            point1 += 1
        }
        while point2 < a2.count{
            merged.append(a2[point2])
            point2 += 1
        }
        
        
        return merged
    }
    
    func quickSort(unsorted: [Int])->[Int]{
        var sorted: [Int] = unsorted
        let start = 0
        let end = sorted.count-1
        var split = 0
        var a1: [Int] = []
        var a2: [Int] = []
        
        if start<end{
            
            (sorted, split) = partition(arr: sorted, lo: start, hi: end)
            print("a1")
            a1 = quickSort(unsorted: Array(sorted[start..<split]))
            print("a2")
            a2 = quickSort(unsorted: Array(sorted[(split+1)..<(end+1)]))
            //print(a1 + [sorted[split]] + a2)
            return (a1 + [sorted[split]] + a2)
        }else{
            return sorted
        }
        
    }
    
    func partition(arr: [Int], lo: Int, hi: Int)->([Int], Int){
        var partioned: [Int] = arr
        var left = lo + 1
        var right = hi
        let pivot = lo
        
        var temp = 0
        
        //print(partioned)
        //print(left, right)
        
        while (left<right){
            while (partioned[left] < partioned[pivot]) && (left<right){
                left += 1
            }
            
            while (partioned[right] > partioned[pivot]){
                right -= 1
            }
            if left<right{
                temp = partioned[left]
                partioned[left] = partioned[right]
                partioned[right] = temp
            }
        }
        
        if (partioned.count > 2){
            temp = partioned[pivot]
            partioned[pivot] = partioned[right]
            partioned[right] = temp
        }
        
        let splitPoint = right
        
        //print(partioned, splitPoint)
        return (partioned, splitPoint)
    }
}
    

