//
//  LXYSortAlgorithmTests.m
//  AlgorithmTests
//
//  Created by Lucas on 2018/11/29.
//  Copyright © 2018 liuxianyu. All rights reserved.
//

#import "LXYTestCase.h"
#import <XCTest/XCTest.h>
#import "LXYSortAlgorithm.h"

@interface LXYSortAlgorithmTests : LXYTestCase
@property (nonatomic, strong) NSArray * array; /**< 数组 */
@end

@implementation LXYSortAlgorithmTests

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testQuickSortArray{
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    long a[] = {3,5,6,7,4,2,1};
    quickSortArray(a,0,6);

    NSData *data = [NSData dataWithBytes: &a length: sizeof(a)];
    NSArray * array = [LXYSortAlgorithm convertDataToLongArrayWithData:data];
//    BOOL isEqual = [array isEqual:@[@"7",@"6",@"5",@"4",@"3",@"2",@"1"]];
    BOOL isEqual = [array isEqual:@[@"1",@"2",@"3",@"4",@"5",@"6",@"7"]];
    XCTAssertTrue(isEqual,@"函数 quickSortArray 有误"); // 通过测试

}

- (void)testBin_search {
    
    int array[] = {1,2,3,4,5,6};
    int result = bin_search(array, 6, 4);
    BOOL isTrue = result == 3;
    XCTAssertTrue(isTrue,@"函数 bin_search 有误");
}

- (void)testBin_search_recur {
    
    int array[] = {1,2,3,4,5,6};
    int result = bin_search_recur(array, 0, 5, 5);
    BOOL isTrue = result == 4;
    XCTAssertTrue(isTrue,@"函数 bin_search_recur 有误");
}

- (void)testConvertDataToLongArrayWithData {
    
    long a[] = {1,2,3,4,5,6};
    //需要将long数组转换成NSData类型
    NSData *data = [NSData dataWithBytes: &a length: sizeof(a)];

    NSArray * array1 = [LXYSortAlgorithm convertDataToLongArrayWithData:data];
    NSArray * array2 = @[@"1",@"2",@"3",@"4",@"5",@"6"];
    BOOL isEqual = [array1 isEqual:array2];
    XCTAssertTrue(isEqual, @"convertDataToLongArrayWithData function is wrong");
}


@end
