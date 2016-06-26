//
//  Player.h
//  ZombieDuel
//
//  Created by James Dyer on 6/22/16.
//  Copyright © 2016 James Dyer. All rights reserved.
//

#import "Character.h"

@interface Player : Character
@property (nonatomic) NSInteger extraDamage;
- (void)increaseHP: (NSInteger)amount;
- (void)increaseDamage: (NSInteger)amount;
@end
