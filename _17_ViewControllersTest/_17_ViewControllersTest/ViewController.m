//
//  ViewController.m
//  _17_ViewControllersTest
//
//  Created by Exo-terminal on 3/31/14.
//  Copyright (c) 2014 Evgenia. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

#pragma mark - Loading

-(void) loadView{
    [super loadView];
    NSLog(@"loadView");
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"viewDidLoad");
    self.view.backgroundColor = [UIColor redColor];
    
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
        NSLog(@"iPad");
    }else{
        NSLog(@"iPhone");
    }
}

#pragma mark - Views

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    NSLog(@"viewWillAppear");
}
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    NSLog(@"viewDidAppear");
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    NSLog(@"viewWillDisappear");
}
- (void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
    NSLog(@"viewDidDisappear");
}
- (void)viewWillLayoutSubviews{
    [super viewWillLayoutSubviews];
    NSLog(@"viewWillLayoutSubviews");

}

- (void)viewDidLayoutSubviews{
    [super viewDidLayoutSubviews];
    NSLog(@"viewDidLayoutSubviews");

}

#pragma mark - Orintation

- (BOOL)shouldAutorotate{
    return YES;
}

//- (NSUInteger)supportedInterfaceOrientations{
//    return UIInterfaceOrientationMaskPortrait | UIInterfaceOrientationMaskLandscapeLeft ;
//    
//}
/*
- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation{
    
}*/
- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration{
    
    NSLog(@"willRotateToInterfaceOrientation from %d to %d",self.interfaceOrientation, toInterfaceOrientation);
 
}
- (void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation{
    NSLog(@"didRotateFromInterfaceOrientation from %d to %d", fromInterfaceOrientation,self.interfaceOrientation);
    
//    self.view.backgroundColor = [UIColor blackColor];

}

#pragma mark - Memory

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
