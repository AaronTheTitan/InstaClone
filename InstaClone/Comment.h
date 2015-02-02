//
//  Comment.h
//  InstaClone
//
//  Created by Fiaz Sami on 2/2/15.
//  Copyright (c) 2015 Aaron Bradley. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Photo;

@interface Comment : NSManagedObject

@property (nonatomic, retain) NSString * text;
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * image;
@property (nonatomic, retain) Photo *photo;

@end
