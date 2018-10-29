#import "FirstViewController.h"

@interface FirstViewController ()
@end

@implementation  FirstViewController

// 色付きViewを3つ作り､順番にaddSubViewしてみるサンプル
- (void)viewDidLoad {
    self.view.backgroundColor = [UIColor whiteColor];
    
    // ↓を変更してみよう(subViewは､parentViewの左上を起点とすることが分かる)
    CGFloat offsetX = 0;
    CGFloat offsetY = 0;
    
    UIView *view1 = [[UIView alloc] initWithFrame:CGRectMake(offsetX, offsetY, 100, 100)];
    view1.backgroundColor = [UIColor blueColor];
    view1.alpha = 0.5;
    
    UIView *view2 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    view2.backgroundColor = [UIColor redColor];
    view2.alpha = 0.5;
    
    UIView *view3 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    view3.backgroundColor = [UIColor yellowColor];
    view3.alpha = 0.5;
    
    [self.view addSubview:view1];
    [view1 addSubview:view2];
    [view2 addSubview:view3];
}

@end
