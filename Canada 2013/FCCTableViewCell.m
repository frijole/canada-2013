//
//  FCCTableViewCell.m
//  Canada 2013
//
//  Created by Ian Meyer on 6/7/13.
//  Copyright (c) 2013 @frijole. All rights reserved.
//

#import "FCCTableViewCell.h"

@implementation FCCTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        
        [self.detailTextLabel setFont:[UIFont boldSystemFontOfSize:16.0f]];
        [self.detailTextLabel setTextColor:[UIColor blackColor]];
        [self.detailTextLabel setNumberOfLines:2];
        
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
