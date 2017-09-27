#import "ViewController.h"

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
    int result = [self addTwoNumbers:number1 number2:number2];
    self.result.text = [NSString stringWithFormat:@"%d", result];
}

- (int)addTwoNumbers:(int)number1 number2:(int)number2 {
    return number1 + number2;
}

@end
