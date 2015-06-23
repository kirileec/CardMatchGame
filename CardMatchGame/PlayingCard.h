//
//  PlayingCard.h
//  CardMatchGame
//
//  Created by Kirile on 15/6/20.
//  Copyright (c) 2015年 Kirile. All rights reserved.
//

#import "Card.h"
@interface PlayingCard : Card	

@property (strong,nonatomic) NSString * suit;
@property (nonatomic) NSUInteger rank;
+ (NSArray *)validSuits;

+ (NSUInteger)maxRank;


@end
