#import "ViewController.h"
#import "AdderObjC-Swift.h"

@interface ViewController ()

@property IBOutlet UITextField *number1;
@property IBOutlet UITextField *number2;
@property IBOutlet UILabel *result;

@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)didTapAdd {
    int number1 = [self.number1.text intValue];
    int number2 = [self.number2.text intValue];
    
    // No logic direclty in view controller anymore: it is in a separate class
    Adder *adder = [Adder new]; // same as [[Adder alloc] init]
    NSInteger result = [adder addWithNumber1:number1 number2:number2];
    self.result.text = [NSString stringWithFormat:@"%ld", (long)result];
}

@end
