
#import "PanViewController.h"

@interface PanViewController ()

-(void)moveViewWithGestureRecognizer:(UIPanGestureRecognizer *)panGestureRecognizer;

@end

@implementation PanViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIPanGestureRecognizer *panGestureRecognizer = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(moveViewWithGestureRecognizer:)];
    [self.testView addGestureRecognizer:panGestureRecognizer];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


-(void)moveViewWithGestureRecognizer:(UIPanGestureRecognizer *)panGestureRecognizer
{
    CGPoint touchLocation = [panGestureRecognizer locationInView:self.view];
    
    self.testView.center = touchLocation;
    
    
    CGPoint velocity = [panGestureRecognizer velocityInView:self.view];
    NSLog(@"Velocity : %@",NSStringFromCGPoint(velocity));
    
    self.horzVelocityLabel.text = @"Hori";
    self.vertVelocityLabel.text = @"Verti";
    
    
//    self.horzVelocityLabel.text = [NSString stringWithFormat:@"Horizontal Velocity: %f points/sec", velocity.x];
//    self.vertVelocityLabel.text = [NSString stringWithFormat:@"Vertical Velocity: %f points/sec", velocity.y];
}

@end
