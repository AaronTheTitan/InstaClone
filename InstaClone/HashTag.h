//
//  HashTag.h
//  InstaClone
//
//  Created by Fiaz Sami on 2/2/15.
//  Copyright (c) 2015 Aaron Bradley. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Photo;

@interface HashTag : NSManagedObject

@property (nonatomic, retain) NSString * tag;
@property (nonatomic, retain) Photo *photos;

@end
