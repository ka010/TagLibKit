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
	const TagLib_AudioProperties *audio;
	NSString *filepath;
	
}
@property(readwrite) NSString *filepath;
@property(readwrite) TagLib_File *file;
@property(readwrite) TagLib_Tag *tag;


-(void)initWithFile:(NSString *)f;

-(NSString *)filepath;

-(NSString *)title;

-(NSString *)artist;

-(NSString *)album;

-(NSString *)genre;

-(NSNumber *)year;

-(NSNumber *)track;

-(NSString *)comment;

-(NSNumber *)bitrate;

-(NSNumber *)samplerate;

-(NSNumber *)channels;

-(NSNumber *)duration;

-(NSString *)test;

-(void)setTitle:(NSString *)title;

-(void)setArtist:(NSString *)artist;

-(void)setAlbum:(NSString *)album;

-(void)setGenre:(NSString *)genre;

-(void)setYear:(NSNumber *)year;

-(void)setTrack:(NSNumber *)track;

-(void)log;


@end
