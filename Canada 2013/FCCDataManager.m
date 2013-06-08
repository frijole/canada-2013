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
                        
                        [FCCDataObject dataObject:@"Venue opens to public"
                                           starts:@"7:30 am"
                                             ends:nil],
                        
                        [FCCDataObject dataObject:@"Ferrari Challenge Qualifying"
                                           starts:@"8:45 am"
                                             ends:@"9:15 am"],
                        
                        [FCCDataObject dataObject:@"Free Practice 3"
                                           starts:@"10:00 am"
                                             ends:@"11:00 am"],
                        
                        [FCCDataObject dataObject:@"Porsche CT3 Cup Qualifying"
                                           starts:@"11:15 am"
                                             ends:@"11:45 am"],
                        
                        [FCCDataObject dataObject:@"F1 Qualifying"
                                           starts:@"1:00 pm"
                                             ends:@"2:00 pm"],
                        
                        [FCCDataObject dataObject:@"Formula 1600" 
                                           starts:@"2:20 pm" 
                                             ends:@"3:00 pm"],
                        
                        [FCCDataObject dataObject:@"CTCC" 
                                           starts:@"3:20 pm" 
                                             ends:@"4:00 pm"],
                        
                        [FCCDataObject dataObject:@"Ferrari Challenge Race" 
                                           starts:@"4:20 pm" 
                                             ends:@"5:00 pm"],
                        
                        [FCCDataObject dataObject:@"Porsche GT3 Cup Race" 
                                           starts:@"5:20 pm" 
                                             ends:@"6:00 pm"],
                                                
                        nil];
    }
    
    return _dataObjects;
}


@end
