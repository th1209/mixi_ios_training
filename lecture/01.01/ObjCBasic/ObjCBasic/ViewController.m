//
//  ViewController.m
//  ObjCBasic
//
//  Created by Hata_Toshiki on 2018/10/14.
//  Copyright © 2018年 Hata_Toshiki. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "Person+LogAddition.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    Person *taro   = [[Person alloc] init:@"taro" gender:Male age:20];
    Person *hanako = [[Person alloc] init:@"hanako" gender:Female age:20];
    
    NSLog(@"====================");
    NSLog(@"class_name:%@ uid:%ld, name:%@", [Person getClassName], (long)[taro getUid], taro.name);
    [hanako printLog]; // 拡張メソッド呼び出し
    NSLog(@"====================");
}


@end
