//
//  NLANotiryPreferenceViewController.h
//  NicoLiveAlert
//
//  Created by Чайка on 7/3/14.
//  Copyright (c) 2014 Instrumentality of mankind. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "MASPreferencesViewController.h"
#import "NicoLiveAlertPreferencesDefinitions.h"

@interface NLANotiryPreferenceViewController : NSViewController <MASPreferencesViewController> {
		// outlets
	IBOutlet NSPopUpButton	*popupSoundOutoputDevice;
	IBOutlet NSPopUpButton	*popupNotifyEntryUserProgram;
	IBOutlet NSPopUpButton	*popupNotifyStartUserProgram;
	IBOutlet NSPopUpButton	*popupNotifyEntryOfficialProgram;
	IBOutlet NSPopUpButton	*popupNotifyStartOfficialProgram;

	IBOutlet NSButton		*checkboxSoundOutoputDevice;
	IBOutlet NSButton		*checkboxNotifyEntryUserProgram;
	IBOutlet NSButton		*checkboxNotifyStartUserProgram;
	IBOutlet NSButton		*checkboxNotifyEntryOfficialProgram;
	IBOutlet NSButton		*checkboxNotifyStartOfficialProgram;


	NSDictionary			*playbackAudioDeviceDict;
	NSString				*playbackDeviceName;
}

@end
