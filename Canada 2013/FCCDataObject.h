//
//  FCCDataObject.h
//  Canada 2013
//
//  Created by Ian Meyer on 6/7/13.
//  Copyright (c) 2013 @frijole. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FCCDataObject : NSObject

@property (nonatomic, strong) NSString  *title;
@property (nonatomic, strong) NSString  *starts;
@property (nonatomic, strong) NSString  *ends;

+ (FCCDataObject *)dataObject:(NSString *)inTitle starts:(NSString *)inStarts ends:(NSString *)inEnds;

@end
