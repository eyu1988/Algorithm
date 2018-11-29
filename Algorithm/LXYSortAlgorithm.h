//
//  LXYSortAlgorithm.h
//  Algorithm
//
//  Created by Lucas on 2018/11/29.
//  Copyright © 2018 liuxianyu. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LXYSortAlgorithm : NSObject


/**
 快速排序算法

 @param array 整型数组
 @param s 数组头元素下标
 @param t 数组尾元素下标
 */
void quickSortArray(long array[], int s, int t);


/**
 非递归式二分查找【常规使用，大数据时建议使用】

 @前提 必须是有序数组
 @param key 整型数组
 @param n 数组元素个数
 @param k 要查找的元素
 @return 返回对应的下标；-1代表未找到
 */
int bin_search(int key[], int n, int k);


/**
 递归式二分查找【可以体现递归思想，但大数据时对内存消耗大不建议使用】
 
 @前提 必须是有序数组
 @param key 整型数组
 @param low 数组首元素下标
 @param high 数组尾元素下标
 @return 返回对应的下标；-1代表未找到
 */
int bin_search_recur(int key[], int low, int high, int k);


+ (NSArray *)convertDataToLongArrayWithData:(NSData *)data;

@end

NS_ASSUME_NONNULL_END
