//
//  UIImageViewObjectiveCBridge.m
//  Fitrangi
//
//  Created by Anurag Agnihotri on 10/06/15.
//  Copyright (c) 2015 Fitrangi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UIImageView+WebCache.h"
#import "UIImageViewObjectiveCBridge.h"


@implementation UIImageView (ObjectiveCBridge)

-(void)setImageWithUrl:(NSString *)urlString completed:(ImageCompletionBlock)completedBlock{
    
    [self sd_setImageWithURL:[NSURL URLWithString:urlString] completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL){
        if (completedBlock != nil) {
            completedBlock(image, error);
        }
    }];
}

+(BOOL) cachedImageExistsForURL:(NSString *)url {
    return [[SDWebImageManager sharedManager] cachedImageExistsForURL:[NSURL URLWithString:url]];
}

@end


