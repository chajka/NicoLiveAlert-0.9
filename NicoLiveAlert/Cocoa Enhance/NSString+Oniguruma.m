//
//  NSString+Oniguruma.m
//  Charleston
//
//  Created by Чайка on 12/20/12.
//  Copyright (c) 2012 iom. All rights reserved.
//

#import "NSString+Oniguruma.h"

@implementation NSString (Oniguruma)

- (regex_t *) onigCompile
{
	OnigUChar		*regexString;
	OnigErrorInfo	err;
	int				status;
	regex_t			*regex;

	regexString = (OnigUChar *)[self cStringUsingEncoding:NSUTF16LittleEndianStringEncoding];
	do {
		status = onig_new(&regex, regexString, regexString + [self length] * OnigUCharSize, ONIG_OPTION_DEFAULT, ONIG_ENCODING_UTF16_LE, ONIG_SYNTAX_DEFAULT, &err);
	} while (status != ONIG_STATE_NORMAL);

	return regex;
}// end - (regex_t *) compile

- (regex_t *) onigCompileWithOption:(OnigOptionType)option;
{
	OnigUChar		*regexString;
	OnigErrorInfo	err;
	int				status;
	regex_t			*regex;
	
	regexString = (OnigUChar *)[self cStringUsingEncoding:NSUTF16LittleEndianStringEncoding];
	do {
		status = onig_new(&regex, regexString, regexString + [self length] * OnigUCharSize, option, ONIG_ENCODING_UTF16_LE, ONIG_SYNTAX_DEFAULT, &err);
	} while (status != ONIG_STATE_NORMAL);
	
	return regex;
}// end - (regex_t *) onigCompileWithOption:(OnigOptionType)option;

- (NSString *) searchWith:(regex_t *)regex
{
	return [self searchWith:regex captueIndex:FoundFirstItem];
}// end - (NSString *) searchWith:(regex_t *)regex

- (NSString *) searchWith:(regex_t *)regex captueIndex:(NSInteger)index
{
	const OnigUChar *targetString = NULL;
	const OnigUChar *start = NULL;
	const OnigUChar *end = NULL;
	OnigRegion *region;
	int status;
	
	targetString = (OnigUChar *)[self cStringUsingEncoding:NSUTF16LittleEndianStringEncoding];
	start = targetString;
	end = start + [self length] * OnigUCharSize;
	
	region = onig_region_new();
	status = onig_search(regex, targetString, end, start, end, region, ONIG_OPTION_CAPTURE_GROUP);
	NSString *match = nil;
	if (status != ONIG_MISMATCH)
	{
		NSUInteger offset = (region->beg[index]) / OnigUCharSize;
		NSUInteger length = (region->end[index] - region->beg[index]) / OnigUCharSize;
		match = [self substringWithRange:NSMakeRange(offset, length)];
	}// end if string found
	onig_region_free(region, YES);
	
	return ([match length] != 0) ? match : nil;
}// end - (NSString *) searchWith:(regex_t *)regex captueIndex:(NSInteger)index
@end
