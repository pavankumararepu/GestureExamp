

#import <UIKit/UIKit.h>

@interface SwipeViewController : UIViewController
{
    NSMutableArray *sivaIH;
}




@property (weak, nonatomic) NSString *siva1;
@property (weak, nonatomic) NSString *siva2;
@property (weak, nonatomic) NSString *siva3;
@property (nonatomic) NSString *siva4;
@property (nonatomic) int count;


@property (weak, nonatomic) IBOutlet UIView *sivaIBH;

@property (weak, nonatomic) IBOutlet UIView *viewOrange;


@property (weak, nonatomic) IBOutlet UIView *viewBlack;

@property (weak, nonatomic) IBOutlet UIView *viewGreen;

@end
