//
//  ViewController.m
//  GestureTest
//
//  Created by LEONARDO DE SOUSA MENDES on 10/03/14.
//  Copyright (c) 2014 LEONARDO DE SOUSA MENDES. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {

    }
    return self;
}

-(void)viewDidLoad{
    ViewImagem *imagemView=[[ViewImagem alloc]initWithFrame:CGRectMake(0,0,50,50)];
        
    UITapGestureRecognizer *tap2=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(displayGestureForTap2:)];
    
    [[self view]addGestureRecognizer:tap2];
    
    [[self view]addSubview:imagemView];
    
    //Cria gesto custom
    SlideDirEsq *slideDirEsq=[[SlideDirEsq alloc]initWithTarget:self action:@selector(displagestureforSlideDirEsq:)];
    
    [[self view]addGestureRecognizer:slideDirEsq];
    
    SlideDounUpMid *slideDown=[[SlideDounUpMid alloc]initWithTarget:self action:@selector(displayGestureForSlideDownUpMid:)];
    
    [[self view]addGestureRecognizer:slideDown];
    
    SlideUpDonwMid *slideUp=[[SlideUpDonwMid alloc]initWithTarget:self action:@selector(displayGestureForSlideDounMid:)];
    
    [[self view]addGestureRecognizer:slideUp];
}

-(void)displayGestureForTap2:(id*)sender{
    NSLog(@"Tocou VC");
}

-(void)displagestureforSlideDirEsq:(id*)sender{
    NSLog(@"Funcionou");
}

-(void)displayGestureForSlideDownUpMid:(id*)sender{
    NSLog(@"Funfou");
}

-(void)displayGestureForSlideDounMid:(id*)sender{
    NSLog(@"Oiaaa");
}
@end
