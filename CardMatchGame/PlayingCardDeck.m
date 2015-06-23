//
//  PlayingCardDeck.m
//  CardMatchGame
//
//  Created by Kirile on 15/6/20.
//  Copyright (c) 2015年 Kirile. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "PlayingCard.h"
@implementation PlayingCardDeck


//返回实例类型
- (instancetype) init
{
	self = [super init];
	if (self){
		for (NSString *suit in [PlayingCard validSuits]) {
			for (NSUInteger rank=1; rank <= [PlayingCard maxRank]; rank++) {
				PlayingCard *card =[[PlayingCard alloc]init];
				card.rank = rank;
				card.suit =suit;
				[self addCard:card];
			}
		}
	}

	return self;
}

@end
