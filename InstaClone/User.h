//
//  User.h
//  InstaClone
//
//  Created by Fiaz Sami on 2/2/15.
//  Copyright (c) 2015 Aaron Bradley. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface User : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * image;
@property (nonatomic, retain) NSNumber * isFriend;
@property (nonatomic, retain) NSSet *photos;
@end

@interface User (CoreDataGeneratedAccessors)

- (void)addPhotosObject:(NSManagedObject *)value;
- (void)removePhotosObject:(NSManagedObject *)value;
- (void)addPhotos:(NSSet *)values;
- (void)removePhotos:(NSSet *)values;

@end
