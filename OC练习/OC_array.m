//
//  OC_array.m
//  OC练习
//
//  Created by wubo on 16/4/29.
//  Copyright © 2016年 wubo. All rights reserved.
//

#import "OC_array.h"

@implementation OC_array

//创建数组
-(NSArray*)createArray
{
    array = [[NSArray alloc] init];
    //一个元素
    array = [NSArray arrayWithObject:@"love"];
    //多个元素
    array  = [NSArray arrayWithObjects:@"wo","16","love",@"我","ni", nil];
    //
    NSArray *array2 = [array arrayByAddingObjectsFromArray:[NSArray arrayWithObjects:@"for",@"u", nil]];
    return array;
}
-(void)arrayContent
{
    if ([array containsObject:@"love"]) {
        NSLog(@"array context love");
    }else
    {
        NSLog(@"not context");
    }
}
-(void)arrayBase
{
    //数组索引
    NSString *lastStr =[array lastObject];
    NSString *beginStr = [array objectAtIndex:0];
    NSUInteger index = [array indexOfObject:@"love"];
    //用分隔符拼接
    NSString *str = [array componentsJoinedByString:@"-"];
    NSLog(@"%@,%@,%d,%@",lastStr,beginStr,index,str);
    
    //写入文件
    NSString *path = @"/User/levbf/array.xml";
    [array writeToFile:path atomically:YES];
    
    path = @"/User/levbf/array.txt";
    NSArray *array2 = [NSArray arrayWithContentsOfFile:path];
}
//遍历数组1
-(void)showArray
{
    for (int i = 0; i< [array count]; i++) {
        id obj = [array objectAtIndex:i];
        NSLog(@"showArray %@",obj);
    }
}
//遍历数组2 -快速遍历
-(void)quiklyShowArray
{
    for (id obj in array ) {
        NSLog(@"quiklyShow %@",obj);
    }
}
//遍历数组3-block
-(void)blockShowArray
{
    [array enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        NSLog(@"blockShowArray %i-%@",idx,obj);
        if (idx == 1) {
                *stop = YES;
        }
    }];
}
//遍历数组4，枚举
- (void)enumeratorShowArray
{
    NSEnumerator *enumerator = [array reverseObjectEnumerator];
    NSArray *array2 = [enumerator allObjects];
    id obj = nil;
    while (obj  = [enumerator nextObject]) {
        NSLog(@"enumeratorShowArray:%@",obj);
    }
}
//数组排序
-(void)sortArray
{
    NSArray *array2 = [array sortedArrayUsingSelector:@selector(compare:)];
    NSLog(@"sortArray :%@",array2);
}
@end
