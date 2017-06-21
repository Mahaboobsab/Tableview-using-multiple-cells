//
//  TableViewCell1.m
//  DELETE
//
//  Created by Mahaboobsab Nadaf on 12/06/17.
//  Copyright © 2017 NeoRays. All rights reserved.
//

#import "TableViewCell1.h"

@implementation TableViewCell1

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    //self.cellView = [[NSBundle mainBundle] loadNibNamed:@"TableViewCell1" owner:self options:nil];
  //  [self.cellView registerNib:[UINib nibWithNibName:@"TableViewCell1" bundle:nil] forCellReuseIdentifier:@"cell1"];
     }

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
