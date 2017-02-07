//
//  main.m
//  GUIDChallenge
//
//  Created by James Howard on 7/30/15.
//  Copyright (c) 2015 James Howard. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <uuid/uuid.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"Starting ...");
        
        CFAbsoluteTime start = CFAbsoluteTimeGetCurrent();
        
        NSInteger limit = 10000000;
        
        for (NSInteger i = 0; i < limit; i++) {
            uuid_t u;
            uuid_generate(u);
        }
        
        CFAbsoluteTime stop = CFAbsoluteTimeGetCurrent();
        
        NSLog(@"Done in %.3fs", (stop-start));
        
    }
    return 0;
}
