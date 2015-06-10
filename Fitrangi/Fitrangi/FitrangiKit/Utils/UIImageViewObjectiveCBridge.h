//
//  UIImageViewObjectiveCBridge.h
//  
//
//  Created by Anurag Agnihotri on 10/06/15.
//
//


#import <UIKit/UIKit.h>

typedef void(^ImageCompletionBlock)(UIImage *image, NSError *error);


@interface UIImageView (ObjectiveCBridge)

-(void)setImageWithUrl:(NSString *)urlString completed:(ImageCompletionBlock)completedBlock;

+(BOOL) cachedImageExistsForURL:(NSString *)url;

@end


