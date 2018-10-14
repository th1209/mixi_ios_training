#import <Foundation/Foundation.h>

// 列挙型
typedef NS_ENUM(NSInteger, Gender) {
    Male,
    Female,
};


@interface Person : NSObject

// property
@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) Gender gender;
@property (nonatomic, assign) NSInteger age;

// instance method
-(id) init:(NSString*)name gender:(Gender)gender  age:(NSInteger)age;
-(int) getUid;

// class method
+(NSString *) getClassName;

@end
