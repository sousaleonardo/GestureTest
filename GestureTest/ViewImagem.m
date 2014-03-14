//
//  ViewImagem.m
//  GestureTest
//
//  Created by LEONARDO DE SOUSA MENDES on 10/03/14.
//  Copyright (c) 2014 LEONARDO DE SOUSA MENDES. All rights reserved.
//

#import "ViewImagem.h"

@implementation ViewImagem

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {        
        [self setBackgroundColor:[UIColor redColor]];
        
        UITapGestureRecognizer *tap=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(displayGestureForTap:)];
        
        [self addGestureRecognizer:tap];
    }
    return self;
}

-(void)displayGestureForTap:(id*)sender{
    NSLog(@"Tocou IMagem");
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
