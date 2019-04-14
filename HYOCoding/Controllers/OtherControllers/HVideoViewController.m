//
//  HVideoViewController.m
//  HYOCoding
//
//  Created by mob on 2019/3/7.
//  Copyright © 2019年 mob. All rights reserved.
//

#import "HVideoViewController.h"
#import <AVKit/AVKit.h>
#import <AVFoundation/AVFoundation.h>
#import "HNavigationController.h"
#import "Project_RootViewController.h"
#import "LoginViewController.h"
@interface HVideoViewController ()

@property(nonatomic, strong)AVPlayerViewController *avPlayerVC;
@end

@implementation HVideoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];

    [self setPlayer];
}

-(void)setPlayer
{
    _avPlayerVC = [[AVPlayerViewController alloc] init];
    [_avPlayerVC.view setFrame:[UIScreen mainScreen].bounds];
    _avPlayerVC.allowsPictureInPicturePlayback = NO;
    _avPlayerVC.showsPlaybackControls = false;
    _avPlayerVC.videoGravity = AVLayerVideoGravityResizeAspect;
    
    AVPlayerItem *avItem = [[AVPlayerItem alloc] initWithURL:_videoURL];
    AVPlayer *avPlayer = [[AVPlayer alloc] initWithPlayerItem:avItem];
    _avPlayerVC.player = avPlayer;
    [self addChildViewController:_avPlayerVC];
    [self.view addSubview:_avPlayerVC.view];
    [_avPlayerVC.player play];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 3 *NSEC_PER_SEC), dispatch_get_main_queue(), ^{
        [self showEnterButton];
    });
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(playerDidEnd:) name:AVPlayerItemDidPlayToEndTimeNotification object:avItem];
}
-(void)playerDidEnd:(NSNotification *)notification
{
    [self.avPlayerVC.player seekToTime:CMTimeMake(0, 1)];
    [self.avPlayerVC.player play];
}
-(void)showEnterButton
{
    UIButton *enterButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [enterButton addTarget:self action:@selector(enterRootView) forControlEvents:UIControlEventTouchUpInside];
    [enterButton setFrame:CGRectMake(24, [UIScreen mainScreen].bounds.size.height - 32 - 48, [UIScreen mainScreen].bounds.size.width -32 - 48, 48)];
    enterButton.layer.cornerRadius = 24;
    enterButton.alpha = 100;
    enterButton.layer.borderWidth = 1;
    enterButton.layer.borderColor = [UIColor whiteColor].CGColor;
    [enterButton setTitle:@"登录" forState:UIControlStateNormal];
    [self.view addSubview:enterButton];
}

-(void)enterRootView
{
    if (self.isLogin) {
         self.view.window.rootViewController = [[HNavigationController alloc] initWithRootViewController:[[Project_RootViewController alloc] init] ];
    }
    else{
        LoginViewController *loginVC = [[LoginViewController alloc] init];
        self.view.window.rootViewController = loginVC;
    }
   
}


@end
