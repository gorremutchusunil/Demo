//
//  ViewController.m
//  Tabledetails
//
//  Created by sunil  on 18/04/17.
//  Copyright © 2017 sunil . All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSMutableArray *Wifi, *Bluetooth, *Network,*array1,*array2,*array3;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Wifi=[[NSMutableArray alloc]initWithObjects:@"global",@"soleo",@"cyber towers",@"madhu", nil];
    Bluetooth=[[NSMutableArray alloc]initWithObjects:@"ajay",@"Harsha",@"Mayaank", nil];
    Network=[[NSMutableArray alloc]initWithObjects:@"office",@"home", nil];
    array1=[[NSMutableArray alloc]initWithObjects:@"Technologies",@"Technology",@"Cyber gateway",@"towers",nil];
    array2=[[NSMutableArray alloc]initWithObjects:@"Kota",@"Vardhan reddy",@"Mishra",nil];
    array3=[[NSMutableArray alloc]initWithObjects:@"LAN",@"Home Network",nil];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    if (section==0) {
        return Wifi.count;
    }else if (section==1){
        return Bluetooth.count;
    }
    else{
        return  Network.count;
    }
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return 3;
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    
    return 40.0;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 35.0;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *cellidetifier=@"cellidentifier";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:cellidetifier];
    if (cell==nil) {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:cellidetifier];
    }
    if (indexPath.section==0) {
        cell.textLabel.text=[Wifi objectAtIndex:indexPath.row];
        cell.textColor=[UIColor darkGrayColor];
        cell.detailTextLabel.text=[array1 objectAtIndex:indexPath.row];
        
    }
    else if(indexPath.section==1){
        cell.textLabel.text=[Bluetooth objectAtIndex:indexPath.row];
        cell.textColor=[UIColor darkGrayColor];
        cell.detailTextLabel.text=[array2 objectAtIndex:indexPath.row];
        
    }
    else{
        cell.textLabel.text=[Network objectAtIndex:indexPath.row];
        cell.textColor=[UIColor darkGrayColor];
        cell.detailTextLabel.text=[array3 objectAtIndex:indexPath.row];
    }
    return cell;
}
-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, tableView.frame.size.width, 50)];
    
    if (section==0) {
        
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, tableView.frame.size.width, 50)];
        [label setFont:[UIFont boldSystemFontOfSize:18]];
        NSString *string =@"Wifi ";
        [label setText:string];
        label.textAlignment=NSTextAlignmentCenter;
        [view addSubview:label];
        [view setBackgroundColor:[UIColor lightGrayColor]];
    }
    
    else if (section==1){
        
        UILabel *label1 = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, tableView.frame.size.width, 50)];
        [label1 setFont:[UIFont boldSystemFontOfSize:18]];
        NSString *string =@"Bluetooth";
        [label1 setText:string];
        label1.textAlignment=NSTextAlignmentCenter;
        [view addSubview:label1];
        [view setBackgroundColor:[UIColor lightGrayColor]];
        
    }
    else{
        
        UILabel *label3 = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, tableView.frame.size.width, 50)];
        [label3 setFont:[UIFont boldSystemFontOfSize:18]];
        NSString *string =@"Network";
        [label3 setText:string];
        label3.textAlignment=NSTextAlignmentCenter;
        [view addSubview:label3];
        [view setBackgroundColor:[UIColor lightGrayColor]];
        
    }
    return view;
}


@end
