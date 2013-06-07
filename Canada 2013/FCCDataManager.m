//
//  FCCDataManager.m
//  Canada 2013
//
//  Created by Ian Meyer on 6/7/13.
//  Copyright (c) 2013 @frijole. All rights reserved.
//

#import "FCCDataManager.h"

#import "FCCDataObject.h"

static NSArray *_dataObjects;

@implementation FCCDataManager

+ (NSArray *)dataObjects
{
    if ( !_dataObjects )
    {
        // set 'em up!
        _dataObjects = [NSArray arrayWithObjects:
                        
                        [FCCDataObject dataObject:@"Circuit Opens"
                                           starts:@"8:00 am"
                                             ends:nil],
                        
                        [FCCDataObject dataObject:@"Ferrari Challenge"
                                           starts:@"8:50 am"
                                             ends:@"9:10 am"],
                        
                        [FCCDataObject dataObject:@"Free Practice 1"
                                           starts:@"10:00 am"
                                             ends:@"11:30 am"],
                        
                        [FCCDataObject dataObject:@"CTCC"
                                           starts:@"11:55 am"
                                             ends:@"12:55 pm"],
                        
                        [FCCDataObject dataObject:@"Free Practice 2"
                                           starts:@"2:00 pm"
                                             ends:@"3:30 pm"],
                        
                        [FCCDataObject dataObject:@"Ferrari Challenge"
                                           starts:@"3:55 pm"
                                             ends:@"4:15 pm"],
                        
                        [FCCDataObject dataObject:@"CTCC"
                                           starts:@"4:30 pm"
                                             ends:@"5:00 pm"],
                        
                        [FCCDataObject dataObject:@"Porsche GT3 Cup Challenge"
                                           starts:@"5:15 pm"
                                             ends:@"5:45 pm"],
                        
                        [FCCDataObject dataObject:@"Formula 1600"
                                           starts:@"6:00 pm"
                                             ends:@"6:30 pm"],
                        
                        nil];
    }
    
    return _dataObjects;
}


@end
