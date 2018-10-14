#import "FirstViewController.h"

@interface FirstViewController ()
@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

-(IBAction)toSecondUIViewControllerBySegue:(id)sender
{
    [self performSegueWithIdentifier:@"firstToSecond" sender:self];
}

-(IBAction)toSecondUIViewControllerByStoryboardId:(id)sender
{
    SecondViewController *controller = [self.storyboard instantiateViewControllerWithIdentifier:@"secondViewController"];
    controller.delegate = self;
    [self presentViewController:controller animated:true completion:nil];
}

// Segueによる遷移時に値のやり取りをしたい場合､このメソッドを実装する.
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"firstToSecond"]) {
        SecondViewController *desitination = segue.destinationViewController;
        //↓delegateパターンを用いて戻る場合は以下のようにする(UnwindSegueを使う方法でも可).
        desitination.delegate = self;
    }
}

// delegateパターンの実装メソッド.
-(void)closeSecondViewController
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

// UnwindSegueを使って自Controllerに戻る場合.
-(IBAction)unwindFromSecondViewController:(UIStoryboardSegue *)segue
{
    NSLog(@"Unwind!!");
}

@end
