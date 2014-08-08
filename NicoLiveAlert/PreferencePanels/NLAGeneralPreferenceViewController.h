//
//  NLAGeneralPreferenceViewController.h
//  NicoLiveAlert
//
//  Created by Чайка on 7/3/14.
//  Copyright (c) 2014 Instrumentality of mankind. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "MASPreferencesViewController.h"
#import "NicoLiveAlertPreferencesDefinitions.h"

@interface NLAGeneralPreferenceViewController : NSViewController <MASPreferencesViewController> {
	IBOutlet NSBox		*boxApplicationCollaboration;
	IBOutlet NSButton	*chkboxKickCommentViewerOpenByMe;
	IBOutlet NSButton	*chkboxKickCommentViewerAtAutoOpen;
	IBOutlet NSButton	*chkboxDoNotAutoOpenInBroadcasting;
	IBOutlet NSButton	*chkboxKickStreamerOnMyBroadcast;
	IBOutlet NSButton	*chkboxKickCommentViewerOnMyBroadcast;

	IBOutlet NSBox		*boxTinyLauncher;
	
}

@end
