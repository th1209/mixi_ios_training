#import "Person.h"

// クラス変数
static int uid = 0;
// クラス定数
static NSString *const className = @"Person";

// 無名カテゴリ
@interface Person()

@property (nonatomic, assign) int uid;
//@property (nonatomic, assign) BOOL isEnabled;

@end


@implementation Person

-(id) init:(NSString*)name
    gender:(Gender)gender
       age:(NSInteger)age
{
    self = [super init];

    if(self) {
        // access iVar 形式
        _name = name;
        _gender = gender;
        _age = age;
        _uid = ++uid; //static 変数へのアクセス
        
        // self 形式(こちらでも可)
        //self.name = name;
        //self.gender = gender;
        //self.age = age;
    }
    
    return self;
}

-(int) getUid
{
    return _uid;
}

+(NSString *) getClassName
{
    return className;
}

@end
