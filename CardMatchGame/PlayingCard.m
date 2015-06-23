//
//  PlayingCard.m
//  CardMatchGame
//
//  Created by Kirile on 15/6/20.
//  Copyright (c) 2015年 Kirile. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

@synthesize suit=_suit; //because we provide setter AND getter


//suit 花色 rank 数值


-(int)match:(NSArray *)otherCards
{
	int score =0;
	if ([otherCards count] == 1) {
		id card = [otherCards firstObject];
		if ([card isKindOfClass:[PlayingCard class]]){
			PlayingCard * otherCard = (PlayingCard *)card;

			if ([self.suit isEqualToString:otherCard.suit]) {
				score = 1;
			} else if (self.rank == otherCard.rank) {
				score =4 ;
			}

		}
	}

	return score;
}



-(NSString *)contents
{
	NSArray *rankStrings = [PlayingCard rankStrings];
	return [rankStrings[self.rank] stringByAppendingString:self.suit];
}

//产生四种花色
+ (NSArray * ) validSuits
{
	return @[@"♥︎",@"♣︎",@"♠︎",@"♦︎"];
}


-(void)setSuit:(NSString *)suit
{
	if ([[PlayingCard validSuits] containsObject:suit]) {
		_suit=suit;
	}
}

-(NSString *)suit
{
	return _suit ? _suit : @"?";
}

//产生牌面
+ (NSArray *) rankStrings
{
 return @[@"?",@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
}

+(NSUInteger)maxRank
{
	return [[self rankStrings] count] - 1;
}

-(void)setRank:(NSUInteger)rank
{
	if (rank <= [PlayingCard maxRank]){
		_rank =rank;
	}
}

@end
