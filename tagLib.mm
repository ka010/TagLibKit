//
//  tagReader.m
//  qtKitTest
//
//  Created by ka010 on 4/3/10.
//  Copyright 2010 HdM. All rights reserved.
//

#import "tagLib.h"


@implementation tagLib
@synthesize file;
@synthesize tag;

-(void)initWithFile:(NSString *)f {
	file = taglib_file_new([f cString]);
	tag = taglib_file_tag(file);
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

-(NSString *)channels {
	
	return @"TODO";
}

-(NSString *)bitrate {
			
	return @"TODO";
}

-(NSString *)samplerate {
	
	return @"TODO";
}

-(NSString *)duration {
	
	return @"TODO";
}

-(void)log {
	
	NSLog(@"\n Tag: \n artist = %@ \n title = %@ \n album = %@ \n track = %@ \n year = %@ \n genre = %@ \n channels = %@ \n comment = %@ \n ", 
					[self artist], [self title], [self album], [self track], [self year], [self genre], [self channels], [self comment]);
}


@end
