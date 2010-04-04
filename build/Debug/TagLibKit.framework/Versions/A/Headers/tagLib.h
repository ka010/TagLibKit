//
//  tagReader.h
//  qtKitTest
//
//  Created by ka010 on 4/3/10.
//  Copyright 2010 HdM. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#include "/usr/local/include/taglib/tag_c.h"

@interface tagLib : NSObject {
	TagLib_File *file;
	TagLib_Tag *tag;
	
	
}

@property(readwrite) TagLib_File *file;
@property(readwrite) TagLib_Tag *tag;

-(void)initWithFile:(NSString *)f;

-(NSString *)title;

-(NSString *)artist;

-(NSString *)album;

-(NSString *)genre;

-(NSNumber *)year;

-(NSNumber *)track;

-(NSString *)comment;

-(NSString *)bitrate;

-(NSString *)samplerate;

-(NSString *)channels;

-(NSString *)duration;

-(void)log;

@end
