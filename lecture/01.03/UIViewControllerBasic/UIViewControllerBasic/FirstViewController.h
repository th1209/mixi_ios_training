#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController

@property (nonatomic) NSInteger count;
@property (nonatomic) BOOL isEnable;
@property (nonatomic, strong) IBOutlet UILabel *countLabel;
@property (nonatomic, strong) IBOutlet UILabel *isEnableLabel;

//-(IBAction) onCountUp:(id)sender;
//-(IBAction) onToggleEnable:(id)sender;

@end

