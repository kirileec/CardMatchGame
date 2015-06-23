//
//  Deck.m
//  CardMatchGame
//
//  Created by Kirile on 15/6/20.
//  Copyright (c) 2015年 Kirile. All rights reserved.
//

#import "Deck.h"


@interface Deck()
//存在于牌桌上的牌组
@property (strong ,nonatomic) NSMutableArray *cards; //of Card

@end

@implementation Deck

-(NSMutableArray *)cards
{
	if (!_cards) _cards = [[NSMutableArray alloc] init];
	return _cards;
}


-(void)addCard:(Card *)card atTop:(BOOL)atTop
{
	if (atTop){
		[self.cards insertObject:card atIndex:0];
	} else {
		[self.cards addObject:card];
	}
}
-(void)addCard:(Card *)card
{
	[self addCard:card atTop:NO];
}


-(Card *)drawRandomCard
{
	Card * randomCard =nil;
	if ([self.cards count]){
		//arc4random 获取 0 to x-1 arc4random () % x
		unsigned index = arc4random() % [self.cards count];
		randomCard = self.cards[index];
		[self.cards removeObjectAtIndex:index];

	}
	return randomCard;

}


@end
