//
//  ViewController.m
//  DELETE
//
//  Created by Mahaboobsab Nadaf on 12/06/17.
//  Copyright © 2017 NeoRays. All rights reserved.
//

#import "ViewController.h"
#import "TableViewCell1.h"
#import "TableViewCell2.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
[self.myTableview registerNib:[UINib nibWithNibName:@"TableViewCell1" bundle:nil] forCellReuseIdentifier:@"cell1"];
    [self.myTableview registerNib:[UINib nibWithNibName:@"TableViewCell2" bundle:nil] forCellReuseIdentifier:@"cell2"];
    
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.row == 0)
        return  130.0f ;
    else
        return 160.0f ;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (section == 0) {
        return 3;
    }
    else{
    
        return 4;
    }
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{

    return 2;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    if (indexPath.section == 0) {
        static NSString *MyIdentifier = @"cell1";
        TableViewCell1 *cell = [tableView dequeueReusableCellWithIdentifier:MyIdentifier forIndexPath:indexPath];
        cell.textfiels.text = @"Bhagya";
        cell.label.text = @"Nadaf";
        
        return cell;
    }
    
    else{
        static NSString *MyIdentifier = @"cell2";
        TableViewCell2 *cell = [tableView dequeueReusableCellWithIdentifier:MyIdentifier forIndexPath:indexPath];
        cell.textFiels.text = @"Meheboob";
        cell.myButton.titleLabel.text = @"ITCS";
        return cell;
    }
    return nil;

}

@end
