#import "SecondViewController.h"

@interface SecondViewController ()
@end

@implementation  SecondViewController

// ボタン押下時だけ､ボタンの画像が変わるサンプル
- (void)viewDidLoad {
    self.view.backgroundColor = [UIColor whiteColor];
    
    // ↓画面サイズを取る
    CGRect screenBounds = [[UIScreen mainScreen] bounds];
    
    UILabel *label = [[UILabel alloc] init];
    label.frame = CGRectMake(screenBounds.size.width/2 - 100/2, 50, 100, 75);
    label.textAlignment = NSTextAlignmentCenter;
    label.text = @"↓ Push!!";
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(screenBounds.size.width/2 - 150/2, 100, 150, 150);
    // 状態に応じた画像の設定
    [button setImage:[UIImage imageNamed:@"cocos_icon_01"] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:@"cocos_icon_02"] forState:UIControlStateHighlighted];
    // メソッドの紐付け
    [button addTarget:self action:@selector(buttonTapped:) forControlEvents:UIControlEventTouchDown];
    
    [self.view addSubview:label];
    [self.view addSubview:button];
}

- (void)buttonTapped:(id)sender {
    NSLog(@"Button tapped.");
}

@end
