//
//  tagReader.m
//  qtKitTest
//
//  Created by ka010 on 4/3/10.
//  Copyright 2010 HdM. All rights reserved.
//

#import "tagLib.h"


@implementation tagLib
@synthesize filepath;
@synthesize file;
@synthesize tag;


-(void)initWithFile:(NSString *)f {
	filepath = f;
	file = taglib_file_new([f UTF8String]);
	tag = taglib_file_tag(file);
	audio = taglib_file_audioproperties(file);
}

-(NSString *)test {
		return filepath;
}

-(NSString *)title {

	NSString *title = [NSString stringWithCString: taglib_tag_title(tag)];
	
	return title;
}

-(NSString *)artist {
	
	NSString *artist = [NSString stringWithCString: taglib_tag_artist(tag)];
	
	return artist;
}

-(NSString *)album {
	
	NSString *album = [NSString stringWithCString: taglib_tag_album(tag)];
	
	return album;
}

-(NSString *)genre {
	
	NSString *genre = [NSString stringWithCString: taglib_tag_genre(tag)];
	
	return genre;
}

-(NSNumber *)year {
	
	NSNumber *year = [NSNumber numberWithUnsignedInt: taglib_tag_year(tag)];
	
	return year;
}

-(NSString *)comment {
	
	NSString *comment = [NSString stringWithCString: taglib_tag_comment(tag)];
	
	return comment;
}

-(NSNumber *)track {
	
	NSNumber *track = [NSNumber numberWithUnsignedInt: taglib_tag_track(tag)];
	
	return track;
}

-(NSNumber *)channels {
	return [NSNumber numberWithInt: taglib_audioproperties_channels(audio)];
}

-(NSNumber *)bitrate {
			
	return [NSNumber numberWithUnsignedInt: taglib_audioproperties_bitrate(audio)];
}

-(NSNumber *)samplerate {
	
	return [NSNumber numberWithUnsignedInt: taglib_audioproperties_samplerate(audio)];
}

-(NSNumber *)duration {
	
	return [NSNumber numberWithUnsignedInt: taglib_audioproperties_length(audio)];
}

-(void)setTitle:(NSString *)title {
	taglib_tag_set_title(tag,[title UTF8String]);
}

-(void)setArtist:(NSString *)artist {
	taglib_tag_set_artist(tag,[artist UTF8String]);
}

-(void)setAlbum:(NSString *)album {
	taglib_tag_set_album(tag,[album UTF8String]);
}

-(void)setGenre:(NSString *)genre {
	taglib_tag_set_genre(tag,[genre UTF8String]);
}

-(void)setTrack:(NSNumber *)track {
	taglib_tag_set_track(tag,[track unsignedIntValue]);
}

-(void)setYear:(NSNumber *)year {
	taglib_tag_set_year(tag,[year unsignedIntValue]);
}

-(void)log {
	
	NSLog(@"\n Tag: \n artist = %@ \n title = %@ \n album = %@ \n track = %@ \n year = %@ \n genre = %@ \n channels = %@ \n comment = %@ \n  \n Audio: \n duration = %@ \n channels = %@ \n bitrate = %@ \n samplerate = %@ \n",
					[self artist], [self title], [self album], [self track], [self year], [self genre], [self channels], [self comment], [self duration], [self channels], [self bitrate], [self samplerate]);
}


@end
