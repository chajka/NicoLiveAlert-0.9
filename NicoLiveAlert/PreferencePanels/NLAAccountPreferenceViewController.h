//
//  NLAAccountPreferenceViewController.h
//  NicoLiveAlert
//
//  Created by Чайка on 7/3/14.
//  Copyright (c) 2014 Instrumentality of mankind. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "MASPreferencesViewController.h"
#import "NicoLiveAlertPreferencesDefinitions.h"

@interface NLAAccountPreferenceViewController : NSViewController <MASPreferencesViewController> {
		// outlets
	IBOutlet NSTextField		*txtfldAccountBox;
	IBOutlet NSSecureTextField	*txtfldPasswordBox;
	IBOutlet NSArrayController	*arrayctrlAccountTable;
	IBOutlet NSButton			*buttonAdd;
	IBOutlet NSButton			*buttonDelete;
}

- (IBAction) buttonAddPressed:(id)sender;
- (IBAction) buttonDeletePressed:(id)sender;
@end
