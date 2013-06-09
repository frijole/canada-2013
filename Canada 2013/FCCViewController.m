//
//  FCCViewController.m
//  Canada 2013
//
//  Created by Ian Meyer on 6/7/13.
//  Copyright (c) 2013 @frijole. All rights reserved.
//

#import "FCCViewController.h"

#import "FCCTableViewCell.h"
#import "FCCDataManager.h"
#import "FCCDataObject.h"

#define kFCCViewControllerTableViewCellIdentifier @"FCCTableViewCellIdentifier"

@interface FCCViewController () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, weak) UITableView *tableView;

@end

@implementation FCCViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    if ( self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil] )
    {
        // setup
        [self setTitle:@"Canadian GP - Sunday"];
        
        // create and add our table
        UITableView *tmpTableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        [tmpTableView setAutoresizingMask:(UIViewAutoresizingFlexibleHeight|UIViewAutoresizingFlexibleWidth)];
        [self.view addSubview:tmpTableView];
        
        // set the property
        [self setTableView:tmpTableView];

        // and rig for functionality
        [self.tableView setDataSource:self];
        [self.tableView setDelegate:self];
        
        [self.tableView registerClass:[FCCTableViewCell class]
               forCellReuseIdentifier:kFCCViewControllerTableViewCellIdentifier];
    }
    
    return self;
}

- (int)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [FCCDataManager dataObjects].count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CGFloat rtnHeight = 60.0f;
    
    FCCDataObject *tmpObject = [[FCCDataManager dataObjects] objectAtIndex:indexPath.row];
    CGFloat tmpTextHeight = [tmpObject.title sizeWithFont:[UIFont boldSystemFontOfSize:16.0f] constrainedToSize:CGSizeMake(300.0f, INT_MAX)].height;

    if ( tmpTextHeight > 20 )
        rtnHeight += 20.0f;
    
    return rtnHeight;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // get a cell
    UITableViewCell *rtnCell = [tableView dequeueReusableCellWithIdentifier:kFCCViewControllerTableViewCellIdentifier forIndexPath:indexPath];
    
    // and the event for this row
    FCCDataObject *tmpObject = [[FCCDataManager dataObjects] objectAtIndex:indexPath.row];
    
    // put the time(s) up top...
    NSString *tmpTitle = nil;
    if ( tmpObject.starts && tmpObject.ends )
        tmpTitle = [NSString stringWithFormat:@"%@ - %@", tmpObject.starts, tmpObject.ends];
    else if ( tmpObject.starts && !tmpObject.ends )
        tmpTitle = tmpObject.starts;
    [rtnCell.textLabel setText:tmpTitle];

    // ...and the name of the session below
    [rtnCell.detailTextLabel setText:tmpObject.title];

    return rtnCell;
}

@end
