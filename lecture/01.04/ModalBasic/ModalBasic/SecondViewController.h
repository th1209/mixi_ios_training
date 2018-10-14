#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol SecondViewControllerDelegate <NSObject>
-(void) closeSecondViewController;
@end

@interface SecondViewController : UIViewController
@property (nonatomic, weak) id<SecondViewControllerDelegate> delegate;
@end
