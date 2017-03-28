//
//  main.m
//  基本操作
//
//  Created by 李维佳 on 2017/3/28.
//  Copyright © 2017年 Liz. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //目录路径Path：绝对路径
        NSString *directoryPath = @"/Users/shixin/Desktop";
        //通过NSSearchPathForDirectoriesInDomains()函数获取路径
        NSArray * paths = NSSearchPathForDirectoriesInDomains (NSDesktopDirectory, NSUserDomainMask, YES);
        NSString * desktopPath = [paths objectAtIndex:0];
        
        //文件路径
        //注意：拼接文件名称需要使用stringByAppendingPathComponent:方法
        NSString *filePath1 = [directoryPath stringByAppendingPathComponent:@"myfile.txt"];
        NSString *filePath2 = [desktopPath stringByAppendingPathComponent:@"myfile.txt"];
        //实例化NSFileManager对象
        NSFileManager *fm = [NSFileManager defaultManager];
        //判断路径文件是否存在
        if ([fm fileExistsAtPath:filePath1]) {
            NSLog(@"myfile.txt exist in filePath!");
        }
        if ([fm fileExistsAtPath:filePath2]) {
            NSLog(@"myfile.txt exist in desktopPath!");
        }
    }
    return 0;
}
