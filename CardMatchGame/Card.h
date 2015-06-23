//
//  Card.h
//  CardMatchGame
//
//  Created by Kirile on 15/6/20.
//  Copyright (c) 2015年 Kirile. All rights reserved.
//

#import <Foundation/Foundation.h>

//单张牌的类
@interface Card : NSObject



@property (strong,nonatomic) NSString *contents;

@property (nonatomic,getter=isChosen)BOOL chosen;
@property (nonatomic,getter=isMatched)BOOL matched;


-(int)match:(NSArray *)otherCards;

@end
