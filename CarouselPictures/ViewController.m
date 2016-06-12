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
    
//    CarouselPicturesView * carouselPictures = [CarouselPicturesView carouselPicturesViewWithFrame:CGRectMake(0, 10, self.view.frame.size.width, 220) WithImageUrls:arr];
    CarouselPicturesView *carousel = [[CarouselPicturesView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 282)];
    carousel.count = 3;
    carousel.placeImage = [UIImage imageNamed:@"图层-36"];
    NSArray *UrlStringArray = @[@"http://a.hiphotos.baidu.com/image/pic/item/a08b87d6277f9e2f875fbad61a30e924b999f382.jpg",
                                @"http://img.kutoo8.com//upload/image/78018037/201305280911_960x540.jpg",
                                @"http://www.xiaoxiongbizhi.com/wallpapers/__85/2/f/2fg40v2zs.jpg",
                                @"http://pic1a.nipic.com/2008-08-11/200881116056161_2.jpg"];
    carousel.imageData = UrlStringArray;
    carousel.currentPageIndicatorTintColor = [UIColor colorWithRed:0.078 green:0.380 blue:0.235 alpha:1.000];
    carousel.pageIndicatorTintColor = [UIColor whiteColor];
    //    carousel.contentMode = UIViewContentModeScaleAspectFit;
    carousel.imageViewDidTapAtIndex = ^(NSInteger index){
        NSLog(@"%zd",index);
    };
        [self.view addSubview:carousel];
//    carouselPictures.titleData = arr;
    [carousel setUpTimer];
//    [self.view addSubview:carouselPictures];
    
    
}

@end
