//
//  PhotoTag.h
//  InstaClone
//
//  Created by Fiaz Sami on 2/2/15.
//  Copyright (c) 2015 Aaron Bradley. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface PhotoTag : NSManagedObject

@property (nonatomic, retain) NSString * tag;
@property (nonatomic, retain) NSManagedObject *photos;

@end
