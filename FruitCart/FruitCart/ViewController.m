//
//  ViewController.m
//  FruitCart
//
//  Created by David Evans on 1/29/13.
//  Copyright (c) 2013 DavidEvans. All rights reserved.
//

#import "ViewController.h"
#import "Vegetable.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _cart = [NSMutableArray arrayWithCapacity:0];
    
    for(int i = 0; i < 49; i++){
        NSString * vegName = [NSString stringWithFormat:@"Potato %d", i];
        
        if((i % 10) == 0){
            vegName = [NSString stringWithFormat:@"Free Potato %d", i];
        }
        Vegetable * anonVeg = [[Vegetable alloc] initWithWithName:vegName andColor:@"Yellow" andShape:@"Oval"];
        [_cart addObject:anonVeg];
        i++;
        if(i ==50 ){
            break;
        }
        NSString * vegName2 = [NSString stringWithFormat:@"Pumpkin %d", i];
        
        if((i % 10) == 0){
            vegName2 = [NSString stringWithFormat:@"Free Pumpkin %d", i];
        }
        Vegetable * anonVeg2 = [[Vegetable alloc] initWithWithName:vegName2 andColor:@"Orange" andShape:@"Round"];
        [_cart addObject:anonVeg2];
        i++;
        if(i ==50 ){
            break;
        }
        NSString * vegName3 = [NSString stringWithFormat:@"Onion %d", i];
        
        if((i % 10) == 0){
            vegName3 = [NSString stringWithFormat:@"Free Onion %d", i];
        }
        Vegetable * anonVeg3 = [[Vegetable alloc] initWithWithName:vegName3 andColor:@"White" andShape:@"Round"];
        [_cart addObject:anonVeg3];
        
        
    }
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(int) numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSString *) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return @"Vegtable";
}

-(int) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_cart count];
}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"TableViewCell"];
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"TableViewCell"];
    }
    
    Vegetable * tempVeg = [_cart objectAtIndex:indexPath.row];
    
    cell.textLabel.text = [tempVeg name];
    cell.detailTextLabel.text = [tempVeg color];
    return cell;
}

@end
