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
                                           starts:@"8:00 am"
                                             ends:nil],
                        
                        [FCCDataObject dataObject:@"CTCC\nGrid Access and Formation Lap"
                                           starts:@"8:50 am"
                                             ends:@"9:00 am"],
                        
                        [FCCDataObject dataObject:@"CTCC\n2nd Race"
                                           starts:@"9:00 am"
                                             ends:@"9:30 am"],
                        
                        [FCCDataObject dataObject:@"CTCC\nPodium Presentation"
                                           starts:@"9:30 am"
                                             ends:nil],
                        
                        [FCCDataObject dataObject:@"Formula 1600\nGrid Access and Formation Lap"
                                           starts:@"9:35 am"
                                             ends:@"9:45 am"],
                        
                        [FCCDataObject dataObject:@"Formula 1600\n2nd Race"
                                           starts:@"9:45 am"
                                             ends:@"10:15 am"],
                        
                        [FCCDataObject dataObject:@"Formula 1600\nPodium Presentation"
                                           starts:@"10:15 am"
                                             ends:nil],
                        
                        [FCCDataObject dataObject:@"Porsche GT3 Cup Challenge\nGrid Access and Formation Lap"
                                           starts:@"10:20 am"
                                             ends:@"10:30 am"],
                        
                        [FCCDataObject dataObject:@"Porsche GT3 Cup Challenge\n2nd Race" 
                                           starts:@"10:30 am" 
                                             ends:@"11:00 am"],
                        
                        [FCCDataObject dataObject:@"Porsche GT3 Cup Challenge\nPodium Presentation" 
                                           starts:@"11:00 am" 
                                             ends:nil],
                        
                        [FCCDataObject dataObject:@"Ferrari Challenge\nGrid Access and Formation Lap" 
                                           starts:@"11:05 am" 
                                             ends:@"11:15 am"],
                        
                        [FCCDataObject dataObject:@"Ferrari Challenge\n2nd Race" 
                                           starts:@"11:15 am" 
                                             ends:@"11:45 am"],
                        
                        [FCCDataObject dataObject:@"Ferrari Challenge\nPodium Presentation" 
                                           starts:@"11:45 am" 
                                             ends:nil],
                        
                        [FCCDataObject dataObject:@"Formula 1 Drivers’ Parade" 
                                           starts:@"12:30 pm" 
                                             ends:nil],
                        
                        [FCCDataObject dataObject:@"Nations' Presentation" 
                                           starts:@"12:45 pm" 
                                             ends:nil],
                        
                        [FCCDataObject dataObject:@"Formula 1\nPit Lane Opening" 
                                           starts:@"1:30 pm" 
                                             ends:nil],
                        
                        [FCCDataObject dataObject:@"Formula 1\nPit Lane Closing" 
                                           starts:@"1:45 pm" 
                                             ends:nil],
                        
                        [FCCDataObject dataObject:@"2013 FORMULA 1\nGRAND PRIX DU CANADA" 
                                           starts:@"2:00 pm" 
                                             ends:nil],

                        
                          nil];
    }
    
    return _dataObjects;
}


@end
