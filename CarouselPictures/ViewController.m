//
//  ViewController.m
//  CarouselPictures
//
//  Created by shitaotao on 16/1/22.
//  Copyright © 2016年 shitaotao. All rights reserved.
//

#import "ViewController.h"
#import "CarouselPicturesView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSMutableArray * arr = [NSMutableArray array];
    for (int i = 1; i < 8; i++) {
        [arr addObject:[NSString stringWithFormat:@"%d.jpg",i]];
    }
    
    CarouselPicturesView * carouselPictures = [CarouselPicturesView carouselPicturesViewWithFrame:CGRectMake(0, 10, self.view.frame.size.width, 220) WithImageUrls:arr];
    
//    carouselPictures.titleData = arr;
    
    [self.view addSubview:carouselPictures];
    
    
}

@end
