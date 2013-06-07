//
//  FCCDataObject.m
//  Canada 2013
//
//  Created by Ian Meyer on 6/7/13.
//  Copyright (c) 2013 @frijole. All rights reserved.
//

#import "FCCDataObject.h"

@implementation FCCDataObject

+ (FCCDataObject *)dataObject:(NSString *)inTitle starts:(NSString *)inStarts ends:(NSString *)inEnds
{
    FCCDataObject *rtnObject = [[FCCDataObject alloc] init];
    
    [rtnObject setTitle:inTitle];
    [rtnObject setStarts:inStarts];
    [rtnObject setEnds:inEnds];
    
    return rtnObject;
}

@end
