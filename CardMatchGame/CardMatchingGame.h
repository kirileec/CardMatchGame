//
//  CardMatchingGame.h
//  CardMatchGame
//
//  Created by Kirile on 15/6/21.
//  Copyright (c) 2015年 Kirile. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deck.h"
@interface CardMatchingGame : NSObject

-(instancetype)initWithCardCount:(NSUInteger)count usingDeck:(Deck *)deck;
- (void) choosecardAtIndex:(NSUInteger)index;
- (Card *)cardAtIndex:(NSUInteger)index;

@property(nonatomic,readonly)NSInteger score;

@end
