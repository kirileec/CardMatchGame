//
//  Card.m
//  CardMatchGame
//
//  Created by Kirile on 15/6/20.
//  Copyright (c) 2015年 Kirile. All rights reserved.
//

#import "Card.h"
@interface Card()



@end

@implementation Card


-(int)match:(NSArray *)otherCards
{
	int score = 0;
	for (Card *card in otherCards){
	if ([card.contents isEqualToString:self.contents])
	{
		score =1 ;
	}


	}
	return score;
}
@end
