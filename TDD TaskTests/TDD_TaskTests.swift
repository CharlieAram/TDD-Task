//
//  TDD_TaskTests.swift
//  TDD TaskTests
//
//  Created by Charlie Aram on 04/03/2021.
//

import XCTest
@testable import TDD_Task

class TDD_TaskTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    
    func testLinearSearch(){
        
        let newFile = SSArray()
        
        let testArray = [0, 8, 1, 4, 2, 7, 3, 5, 3, 7]
        
        let testNumbers = [1, 7, 10]
        
        let results: [Int?] = [2, 9, nil]
        
        for i in 0..<3{
            XCTAssertEqual(newFile.linearSearch(array: testArray, searchItem: testNumbers[i]), results[i])
        }
    }
    
    func testBinarySearch(){
        let newFile = SSArray()
        
        let testArray = [0, 1, 2, 3, 4, 5, 5, 6, 7, 8]
        
        let testNumbers = [1, 5, 10]
        
        let results: [Int?] = [1, 5, nil]
        
        for i in 0..<3{
            XCTAssertEqual(newFile.binarySearch(array: testArray, searchItem: testNumbers[i]), results[i])
        }
    }
    
    func testBubbleSort(){
        let newFile = SSArray()
        
        let arrayIn = [1, 9, 3, 4, 2, 7, 4, 5, 8]
        
        let arrayOut = [1, 2, 3, 4, 4, 5, 7, 8, 9]
        
        XCTAssertEqual(newFile.bubbleSort(unsorted: arrayIn), arrayOut)
    }
    
    func testInsertionSort(){
        let newFile = SSArray()
        
        let arrayIn = [1, 9, 3, 4, 2, 7, 4, 5, 8]
        
        let arrayOut = [1, 2, 3, 4, 4, 5, 7, 8, 9]
        
        XCTAssertEqual(newFile.insertionSort(unsorted: arrayIn), arrayOut)
    }
    func testMergeSort(){
        let newFile = SSArray()
        
        let arrayIn = [1, 9, 3, 4, 2, 7, 4, 5, 8]
        
        let arrayOut = [1, 2, 3, 4, 4, 5, 7, 8, 9]
        
        XCTAssertEqual(newFile.mergeSort(unsorted: arrayIn), arrayOut)
    }
    
    func testMerge(){
        let newFile = SSArray()
        
        let array1 = [3, 5]
        let array2 = [7, 8]
        
        let mergedArray = [3, 5, 7, 8]
        
        XCTAssertEqual(newFile.merge(a1: array1, a2: array2), mergedArray)
        
    }
    func testQuickSort(){
        let newFile = SSArray()
        
        let arrayIn = [1, 9, 3, 4, 2, 7, 4, 5, 8]
        
        
        let arrayOut = [1, 2, 3, 4, 4, 5, 7, 8, 9]
        
        
        XCTAssertEqual(newFile.quickSort(unsorted: arrayIn), arrayOut)
    }
    
    func testPartition(){
        let newFile = SSArray()
        
        let arrayIn = [9, 5, 4, 15, 3, 8, 11]
        
        
        let arrayOut = [3, 5, 4, 8, 9, 15, 11]
        
        
        let splitPointOut = 4
        let splitPointOut2 = 1
        
        let (testedArray, testedSplitPoint) = newFile.partition(arr:arrayIn, lo:Int(0), hi:(arrayIn.count-1))
        
        
        XCTAssertEqual(testedArray, arrayOut)
        XCTAssertEqual(testedSplitPoint, splitPointOut)
        
        
    }
    
    

}
