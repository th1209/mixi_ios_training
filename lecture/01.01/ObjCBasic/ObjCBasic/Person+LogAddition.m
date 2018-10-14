#import "Person+LogAddition.h"

@implementation Person(LogAdditon)

-(void) printLog
{
    NSLog(@"====================");
    NSLog(@"class_name:%@ uid:%d name:%@ gender:% ld age:%ld", [Person getClassName], (long)[self getUid], self.name, (long)self.gender, (long)self.age);
    NSLog(@"====================");
}

@end
