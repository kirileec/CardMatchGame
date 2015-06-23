//
//  Deck.h
//  CardMatchGame
//
//  Created by Kirile on 15/6/20.
//  Copyright (c) 2015年 Kirile. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Card.h"

//牌桌的类，包括一些对牌组进行操作的方法
@interface Deck : NSObject


//是否在牌顶部插入牌
- (void) addCard:(Card *) card atTop:(BOOL)atTop;
//在底部加入牌
- (void) addCard:(Card *) card;
//随机抽取一张牌
- (Card *) drawRandomCard;


@end
