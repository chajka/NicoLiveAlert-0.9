//
//  NicoLiveAlert.h
//  NicoLiveAlert
//
//  Created by Чайка on 7/25/14.
//  Copyright (c) 2014 Instrumentality of mankind. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface NicoLiveAlert : NSObject <NSApplicationDelegate> {
	BOOL					preferenceOpened;
	NSWindowController		*preferenceWindowController;
}

@property (assign) IBOutlet NSWindow *window;

@end
