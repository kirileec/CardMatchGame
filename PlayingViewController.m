//
//  PlayingViewController.m
//  CardMatchGame
//
//  Created by Kirile on 15/6/23.
//  Copyright (c) 2015年 Kirile. All rights reserved.
//

#import "PlayingViewController.h"
#import "PlayingCardDeck.h"
@interface PlayingViewController ()

@end

@implementation PlayingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

// 抽象类的具体形式
- (Deck *)createDeck
{
	return [[PlayingCardDeck alloc] init];
}

@end
