//
//  ViewController.m
//  FruitCart
//
//  Created by David Evans on 1/29/13.
//  Copyright (c) 2013 DavidEvans. All rights reserved.
//

#import "ViewController.h"
#import "Fruit.h"
#import "Vegetable.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _cart = [NSMutableArray arrayWithCapacity:0];
    
    int i =1;
    
    
        NSString * veggieName = [NSString stringWithFormat:@"Potato %d", i];
        
         Vegetable * Potato = [[Vegetable alloc] initWithWithName:veggieName andColor:@"Brown" andShape:@"Oblong"];
        [_cart addObject:Potato];
    
        i++;
    
        veggieName = [NSString stringWithFormat:@"Onion %d", i];
    
        Vegetable * Onion = [[Vegetable alloc] initWithWithName:veggieName andColor:@"Yellow" andShape:@"Round"];
        [_cart addObject:Onion];
    
        i++;
    
        veggieName = [NSString stringWithFormat:@"Pumpkin %d", i];
        
        Vegetable * Pumpkin = [[Vegetable alloc] initWithWithName:veggieName andColor:@"Orange" andShape:@"Fat"];
        [_cart addObject:Pumpkin];
    
    
    
    
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
    return @"Veggies";
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
    
    Fruit * tempFruit = [_cart objectAtIndex:indexPath.row];
    
    cell.textLabel.text = [tempFruit name];
    cell.detailTextLabel.text = [tempFruit color];
    return cell;
}

@end
