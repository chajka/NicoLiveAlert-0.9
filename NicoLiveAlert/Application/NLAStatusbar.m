//
//  NLAStatusbar.m
//  NicoLiveAlert
//
//  Created by Чайка on 8/8/14.
//  Copyright (c) 2014 Instrumentality of mankind. All rights reserved.
//

#import "NLAStatusbar.h"

@implementation NLAStatusbar
#pragma mark - synthesize properties
#pragma mark - class method
#pragma mark - constructor / destructor
- (id) initWithMenu:(NSMenu *)menu
{
	self = [super init];
	if (self) {
		statusMenu = menu;
	}// end if self

	return self;
}// end - (id) initWithMenu:(NSMenu *)menu

#pragma mark - override
#pragma mark - delegate
#pragma mark - properties
#pragma mark - actions
#pragma mark - messages
- (void) installWithImageName:(NSString *)imageName
{
	systemStatusbar = [NSStatusBar systemStatusBar];
	statusbarItem = [systemStatusbar statusItemWithLength:NSVariableStatusItemLength];
	[statusbarItem setHighlightMode:YES];
	[statusbarItem setImage:[NSImage imageNamed:imageName]];
	[statusbarItem setMenu:statusMenu];
}// end - (void) installWithImageName:(NSString *)imageName
#pragma mark - private
#pragma mark - C functions

@end
