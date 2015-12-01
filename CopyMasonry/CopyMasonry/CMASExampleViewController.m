//
//  CMASExampleViewController.m
//  CopyMasonry
//
//  Created by  张亚斌 on 15/12/1.
//  Copyright © 2015年 fernando. All rights reserved.
//

#import "CMASExampleViewController.h"

@interface CMASExampleViewController ()

@property (nonatomic, strong)Class viewClass;

@end

@implementation CMASExampleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (id)initWithTitle:(NSString *)title viewClass:(Class)viewClass{
    self = [super init];
    if (!self) {
        return nil;
    }
    
    self.title = title;
    self.viewClass = viewClass;
    
    return self;
}

- (void)loadView{
    self.view = self.viewClass.new;
    self.view.backgroundColor = [UIColor whiteColor];
}

#ifdef __IPHONE_7_0
- (UIRectEdge)edgesForExtendLayout{
    return UIRectEdgeNone;
}
#endif
@end
