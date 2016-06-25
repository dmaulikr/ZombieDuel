//
//  Timmy.m
//  ZombieDuel
//
//  Created by James Dyer on 6/22/16.
//  Copyright © 2016 James Dyer. All rights reserved.
//

#import "Timmy.h"

@implementation Timmy

- (instancetype)init {
    self = [super init];
    
    if (self) {
        [self setName:@"TIMMY"];
        [self setFullHP:100];
        [self setCoinValue:10];
        
        NSArray *attackNames = [NSArray arrayWithObjects:@"Crawl", @"Limb Throw", @"Guts", @"Infection", nil];
        NSArray *crawl = [NSArray arrayWithObjects:@"TIMMY'S CRAWL DIDN'T DO ANYTHING!", @"TIMMY'S CRAWL STUNNED YOU", @"TIMMY'S CRAWL WAS VERY EFFECTIVE!", nil];
        NSArray *limbThrow = [NSArray arrayWithObjects:@"TIMMY'S THROW MISSED", @"TIMMY'S LIMB HIT YOU!", @"HOW MANY LIMBS DOES TIMMY HAVE!", nil];
        NSArray *guts = [NSArray arrayWithObjects:@"TIMMY'S GUTS ARE EVERYWHERE!", @"TIMMY'S GUTS ARE ON YOU!", @"TIMMY'S GUTS ARE ALL OVER YOU!", nil];
        NSArray *infection = [NSArray arrayWithObjects:@"TIMMY'S INFECTION KILLED HIM!", @"TIMMY'S INFECTION MIGHT SPREAD TO YOU!", @"TIMMY'S INFECTION DIDN'T HOLD", nil];
        
        NSDictionary *attacks = [NSDictionary dictionaryWithObjectsAndKeys:crawl, @"Crawl", limbThrow, @"Limb Throw", guts, @"Guts", infection, @"Infection", nil];
        NSDictionary *attacksDamage = [NSDictionary dictionaryWithObjectsAndKeys:[NSNumber numberWithInt:20], @"Crawl", [NSNumber numberWithInt:10], @"Limb Throw", [NSNumber numberWithInt:15], @"Guts", [NSNumber numberWithInt:10], @"Infection", nil];
        
        [self setAttack:[[Attack alloc]initWithAttacks:attacks withDamage:attacksDamage withAttackNames:attackNames]];
        [self setDefense:[[Defense alloc]initWithHP:[self fullHP]]];
        [self setDeadImageNumber:4];
    }
    
    return self;
}

@end
