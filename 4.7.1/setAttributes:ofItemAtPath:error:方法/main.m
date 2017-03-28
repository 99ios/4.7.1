//
//  main.m
//  setAttributes:ofItemAtPath:error:方法
//
//  Created by 李维佳 on 2017/3/28.
//  Copyright © 2017年 Liz. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //目录路径Path：绝对路径
        NSString *directoryPath = @"/Users/shixin/Desktop";
        //文件路径
        NSString *filePath = [directoryPath stringByAppendingPathComponent:@"myfile.txt"];
        //实例化NSFileManager对象
        NSFileManager *fm = [NSFileManager defaultManager];
        //更改文件属性
        NSDictionary *attrDict = [NSDictionary dictionaryWithObjectsAndKeys:[NSDate distantFuture],NSFileCreationDate, nil];
        [fm setAttributes:attrDict ofItemAtPath:filePath error:nil];
        NSDictionary *fileAttr = [fm attributesOfItemAtPath:filePath error:nil];
        NSLog(@"file create date:<%@>",fileAttr[NSFileCreationDate]);
    }
    return 0;
}
