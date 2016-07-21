//
//  CIMProgressHUD.h
//  cbai
//
//  Created by Faber on 16/6/21.
//  Copyright © 2016年 cim120. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CIMIndicatorView.h"


//-------------------------------------------------------------------------------------------------------------------------------------------------
#define HUD_STATUS_FONT			[UIFont boldSystemFontOfSize:16]
#define HUD_STATUS_COLOR		[UIColor whiteColor]

#define HUD_BACKGROUND_COLOR	[UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.4]
#define HUD_WINDOW_COLOR		[UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.2]

#define HUD_IMAGE_SUCCESS		[UIImage imageNamed:@"progresshud-success"]
#define HUD_IMAGE_ERROR			[UIImage imageNamed:@"progresshud-error"]



@interface CIMProgressHUD : UIView

+ (CIMProgressHUD *)shared;

+ (void)dismiss;

+ (void)show:(NSString *)status;
+ (void)show:(NSString *)status Interaction:(BOOL)Interaction;

+ (void)showSuccess:(NSString *)status;
+ (void)showSuccess:(NSString *)status Interaction:(BOOL)Interaction;

+ (void)showError:(NSString *)status;
+ (void)showError:(NSString *)status Interaction:(BOOL)Interaction;

@property (nonatomic, assign) BOOL interaction;

@property (nonatomic, retain) UIWindow *window;
@property (nonatomic, retain) UIView *background;
@property (nonatomic, retain) UIToolbar *hud;
@property (nonatomic, retain) CIMIndicatorView * cimIndicatorView;
@property (nonatomic, retain) UIImageView *image;
@property (nonatomic, retain) UILabel *label;

@end
