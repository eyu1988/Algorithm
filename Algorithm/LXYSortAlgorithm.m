//
//  LXYSortAlgorithm.m
//  Algorithm
//
//  Created by Lucas on 2018/11/29.
//  Copyright © 2018 liuxianyu. All rights reserved.
//

#import "LXYSortAlgorithm.h"
#include <stdio.h>

@implementation LXYSortAlgorithm

void quickSortArray(long array[], int s, int t) {
    
    int low, high;
    
    if (s < t) {
        
        low = s;
        high = t + 1;
       
        while (1) {
            do {
                low++;
            }while (array[low] <= array[s] && low != t);
            
            do {
                high--;
            } while (array[high] >= array[s] && high != s);
            
            if (low < high) {
                swap(&array[low], &array[high]);
            }
            else{
                break;
            }
        }
        
        swap(&array[s], &array[high]);
        
        quickSortArray(array, s, high-1);
        quickSortArray(array, high+1, t);
        
    }
}

void swap(long * a, long * b){
    long temp = * a;
    * a = * b;
    * b = temp;
}


+ (NSArray *)convertDataToLongArrayWithData:(NSData *)data
{
    long *longdata;
    long *longtemp;
    int longnum = (int)[data length]/sizeof(long);
    longdata = (long*)[data bytes];
    
    NSMutableArray *tempArray = [NSMutableArray array];
    for(int i=0; i<longnum; i++) {
        longtemp = longdata + i;
        NSLog(@"longtemp = %ld", *longtemp);
        NSString * longStr = [NSString stringWithFormat:@"%ld",*longtemp];
        [tempArray addObject:longStr];
    }
    return tempArray;
}

int bin_search(int key[], int n, int k) {
    int low = 0, high = n - 1, mid;
    while (low <= high) {
        mid = (low + high)/2;
        if (key[mid] == k) {
            return mid;
        }
        if (k > key[mid]) {
            low = mid + 1;
        }
        else{
            high = mid - 1;
        }
    }
    return -1;
}

int bin_search_recur(int key[], int low, int high, int k) {
    int mid;
    if (low > high) {
        return -1;
    }
    else{
        mid = (low + high)/2;
        if (key[mid] == k) {
            return mid;
        }
        if (k > key[mid]) {
            return bin_search_recur(key, mid + 1, high, k);
        }
        else {
            return bin_search_recur(key, low, mid - 1, k);
        }
    }
}


@end
