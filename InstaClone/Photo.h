//
//  Photo.h
//  InstaClone
//
//  Created by Fiaz Sami on 2/2/15.
//  Copyright (c) 2015 Aaron Bradley. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class PhotoTag, User;

@interface Photo : NSManagedObject

@property (nonatomic, retain) NSString * title;
@property (nonatomic, retain) NSSet *users;
@property (nonatomic, retain) NSSet *comments;
@property (nonatomic, retain) PhotoTag *photoTags;
@property (nonatomic, retain) NSManagedObject *hashTags;
@end

@interface Photo (CoreDataGeneratedAccessors)

- (void)addUsersObject:(User *)value;
- (void)removeUsersObject:(User *)value;
- (void)addUsers:(NSSet *)values;
- (void)removeUsers:(NSSet *)values;

- (void)addCommentsObject:(NSManagedObject *)value;
- (void)removeCommentsObject:(NSManagedObject *)value;
- (void)addComments:(NSSet *)values;
- (void)removeComments:(NSSet *)values;

@end
