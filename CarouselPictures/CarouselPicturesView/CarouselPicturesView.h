//
//  CarouselPicturesView.h
//  CarouselPictures
//
//  Created by shitaotao on 16/1/22.
//  Copyright © 2016年 shitaotao. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, PageControlStyle) {
    PageControlAtCenter,
    PageControlAtRight,
};

typedef void(^imageViewDidTapAtIndex)(NSInteger index);

@interface CarouselPicturesView : UIView

///占位图片，没有设置imageData再没设置这个显示空白
@property (nonatomic,strong) UIImage *placeImage;

@property (nonatomic,assign) NSTimeInterval AutoScrollDelay; ///default is 2.0f,如果小于0.5不自动播放

///设置PageControl位置
@property (nonatomic,assign) PageControlStyle style; ///default is PageControlAtCenter

@property (nonatomic,copy) NSArray<NSString *> *titleData; ///设置后显示label,自动设置PageControlAtRight

///图片被点击会调用该block
@property (nonatomic,copy) imageViewDidTapAtIndex imageViewDidTapAtIndex; ///index从0开始

/// 设置几张图片 默认为2
@property (nonatomic, assign) NSInteger count;

/// 设置轮播图片，不设置显示默认图片
@property (nonatomic,copy) NSArray *imageData;

/*@parameter imageUrl
 imageUrlString或imageName
 网络加载urlsring必须为http:// 开头,
 //本地加载只需图片名字数组
 */
+ (instancetype)carouselPicturesViewWithFrame:(CGRect)frame WithImageUrls:(NSArray<NSString *> *)imageUrl;

/// 开始滚动
- (void)setUpTimer;

/// 结束滚动
- (void)removeTimer;

@property (nonatomic,strong) UIColor *pageIndicatorTintColor;

@property (nonatomic,strong) UIColor *currentPageIndicatorTintColor;

///default is [[UIColor alloc] initWithWhite:0.5 alpha:1]
@property (nonatomic,strong) UIColor *textColor;

@property (nonatomic,strong) UIFont *font;

@end
