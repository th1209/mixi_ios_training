#import "FirstViewController.h"

@interface FirstViewController()

@end


@implementation FirstViewController

-(void) viewDidLoad
{
    [super viewDidLoad];
    
    _count = 0;
    _isEnable = YES;
    
    self.countLabel.text = [[NSString alloc] initWithFormat:@"%ld", _count];
    self.isEnableLabel.text = _isEnable ? @"YES" : @"NO";
}

-(IBAction) onCountUp:(id)sender
{
    _count++;
    self.countLabel.text = [[NSString alloc] initWithFormat:@"%ld", _count];
}

-(IBAction) onToggleEnable:(id)sender
{
    _isEnable = !_isEnable;
    self.isEnableLabel.text = _isEnable ? @"YES" : @"NO";
}

@end

