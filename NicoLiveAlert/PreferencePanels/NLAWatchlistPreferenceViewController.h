//
//  NLAWatchlistPreferenceViewController.h
//  NicoLiveAlert
//
//  Created by Чайка on 7/3/14.
//  Copyright (c) 2014 Instrumentality of mankind. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "MASPreferencesViewController.h"
#import "NicoLiveAlertPreferencesDefinitions.h"
#import "NSString+Oniguruma.h"


@interface NLAWatchlistPreferenceViewController : NSViewController <MASPreferencesViewController> {
	IBOutlet NSTextField		*txtfldWatchTarget;
	IBOutlet NSTextField		*txtfldTargetComment;
	IBOutlet NSButton			*buttonAddWatchItem;
	IBOutlet NSButton			*buttonRemoveWatchItem;
	IBOutlet NSTableView		*tableviewWatchlist;
	IBOutlet NSArrayController	*arrayWatchlist;

	regex_t						*entryKindRegex;
	NSDictionary				*watchTargetKindDict;
}

@end
