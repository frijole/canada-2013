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
        [self setTitle:@"Canadian GP - Friday"];
        
        UITableView *tmpTableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        [tmpTableView setDataSource:self];
        [tmpTableView setDelegate:self];
        [self.view addSubview:tmpTableView];
        [self setTableView:tmpTableView];
        
        [self.tableView registerClass:[FCCTableViewCell class]
               forCellReuseIdentifier:kFCCViewControllerTableViewCellIdentifier];
    }
    
    return self;
}

- (int)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [FCCDataManager dataObjects].count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *rtnCell = [tableView dequeueReusableCellWithIdentifier:kFCCViewControllerTableViewCellIdentifier forIndexPath:indexPath];
    
    FCCDataObject *tmpObject = [[FCCDataManager dataObjects] objectAtIndex:indexPath.row];
    
    [rtnCell.textLabel setText:tmpObject.title];
    
    NSString *tmpSubtitle = nil;
    
    if ( tmpObject.starts && tmpObject.ends )
        tmpSubtitle = [NSString stringWithFormat:@"%@ - %@", tmpObject.starts, tmpObject.ends];
    else if ( tmpObject.starts && !tmpObject.ends )
        tmpSubtitle = tmpObject.starts;
    
    [rtnCell.detailTextLabel setText:tmpSubtitle];
    
    return rtnCell;
}

@end
