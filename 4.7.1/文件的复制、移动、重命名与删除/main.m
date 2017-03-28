//
//  main.m
//  文件的复制、移动、重命名与删除
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
        
        //复制文件
        NSString *copyFilePath = [directoryPath stringByAppendingPathComponent:@"myfilecopy.txt"];
        if ([fm fileExistsAtPath:copyFilePath] == NO) { //文件不存在，则创建
            if ([fm copyItemAtPath:filePath toPath:copyFilePath error:nil] ) {
                NSLog(@"file copy success!");
            }
        }
        
        //移动文件:除了移动文件外，还可以用于文件改名
        NSString *moveFilePath = [directoryPath stringByAppendingPathComponent:@"myfileNEWcopy.txt"];
        if ([fm fileExistsAtPath:filePath]) { //文件存在，则移动文件到moveFilePath
            if ([fm moveItemAtPath:filePath toPath:moveFilePath error:nil]) {
                NSLog(@"file move success");
            }
        }
        
        //删除文件
        if ([fm removeItemAtPath:moveFilePath error:nil]) {
            NSLog(@"file remove success");
        }
    }
    return 0;
}
