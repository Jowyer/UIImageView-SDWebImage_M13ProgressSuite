//
//  ViewController.m
//  Demo
//
//  Created by Jowyer on 14-6-5.
//  Copyright (c) 2014年 jo2studio. All rights reserved.
//

#import "ViewController.h"
#import "UIImageView+SDWebImage_M13ProgressSuite.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.imageView.layer.borderWidth = 1;
    self.imageView.layer.borderColor = [UIColor lightGrayColor].CGColor;
}

-(IBAction)loadImage:(id)sender
{
    NSString *string = [NSString stringWithFormat:@"http://ww3.sinaimg.cn/large/005IEMl9gw1ej8j1ylo8yg308205k7wi.gif"];
    NSURL *url = [NSURL URLWithString:string];
    [self.imageView setImageUsingProgressViewRingWithURL:url placeholderImage:[UIImage imageNamed:@"placeholder.png"] options:0 progress:nil completed:nil ProgressPrimaryColor:[UIColor grayColor] ProgressSecondaryColor:[UIColor lightGrayColor] Diameter:50.];
}

-(IBAction)clearImage:(id)sender
{
    [SDWebImageManager.sharedManager.imageCache clearMemory];
    [SDWebImageManager.sharedManager.imageCache clearDisk];
}

@end
