//
//  NicoLiveAlert.h
//  NicoLiveAlert
//
//  Created by Чайка on 7/25/14.
//  Copyright (c) 2014 Instrumentality of mankind. All rights reserved.
//

#import <Cocoa/Cocoa.h>

#import "NLAStatusbar.h"

@interface NicoLiveAlert : NSObject <NSApplicationDelegate> {
	NLAStatusbar			*statusbar;
	BOOL					preferenceOpened;
	NSWindowController		*preferenceWindowController;

	IBOutlet NSMenu			*statusbarMenu;
}

@property (assign) IBOutlet NSWindow *window;

@end
