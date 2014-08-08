//
//  NicoLiveAlertPreferencesDefinitions.h
//  NicoLiveAlert
//
//  Created by Чайка on 7/3/14.
//  Copyright (c) 2014 Instrumentality of mankind. All rights reserved.
//

#ifndef NicoLiveAlert_NicoLiveAlertPreferencesDefinitions_h
#define NicoLiveAlert_NicoLiveAlertPreferencesDefinitions_h

	#pragma mark - General
	//#define GeneralPrefNibName						@"NLAGeneralPreferenceView"
	//#define GeneralPrefIdentifier						@"GeneralPreferences"
	//#define GeneralImageName							NSImageNamePreferencesGeneral
	//#define GeneralToolBarTitle							NSLocalizedString(@"GeneralPreferences", @"General")

#define PrefkeyAutoOpenCheckedLive					@"AutoOpenCheckedLive"
#define PrefkeyCheckOfficialChannel					@"CheckOfficialChannel"

#define PrefkeyKickCommentViewerOpenByMe			@"KickCommentViewerOpenByMe"
#define PrefkeyKickCommentViewerAtAutoOpen			@"KickCommentViewerAtAutoOpen"
#define PrefKeyDoNotAutoOpenInBroadcasting			@"DoNotAutoOpenInBroadcasting"
#define PrefkeyKickCommentViewerOnMyBroadcast		@"KickCommentViewerOnMyBroadcast"
#define PrefkeyKickStreamerOnMyBroadcast			@"KickStreamerOnMyBroadcast"

#pragma mark - Watchlist
#define WatchlistPrefNibName						@"NLAWatchlistPreferenceView"
#define	WatchlistPrefIdentifier						@"WatchlistPreferences"
#define WatchlistImageName							@"watch"
#define	WatchlistToolBarTitle						NSLocalizedString(@"WatchlistPreferences", @"Watchlist")
#define PrefKeyWatchlist							@"Watchlist"
#define DictkeyThumbnail							@"humbnail"
#define DictKeyWatchItem							@"WatchItem"
#define DictKeyWatchNote							@"WatchNote"

#pragma mark - Notify
#define NotifyPrefNibName							@"NLANotiryPreferenceView"
#define	NotifyPrefIdentifier						@"NotifyPreferences"
#define NotifyImageName								@"Bell"
#define	NotifyToolBarTitle							NSLocalizedString(@"NotifyPreferences", @"Notify")

#define LocalSoundsDir								@"~/Library/Sounds"
#define SystemSoundsDir								@"/System/Library/Sounds"
#define MachineSoundsDir							@"/Library/Sounds"

#define PrefkeyPlaySoundToDevice					@"PlaySoundToDevice"
#define PrefkeyNotifySoundDeviceName				@"NotifySoundDeviceName"
#define PrefkeyNotifyEntryUserProgram				@"NotifyEntryUserProgram"
#define PrefkeyEntryUserProgramSound				@"EntryUserProgramSound"
#define PrefkeyNotifyStartUserProgram				@"NotifyStartUserProgram"
#define PrefkeyStartUserProgramSound				@"StartUserProgramSound"
#define PrefkeyNotifyEntryOfficialProgram			@"NotifyEntryOfficialProgram"
#define PrefkeyEntryOfficialProgramSound			@"EntryOfficialProgramSound"
#define PrefkeyNotifyStartOfficialProgram			@"NotifyStartOfficialProgram"
#define PrefkeyStartOfficialProgramSound			@"StartOfficialProgramSound"


#pragma mark - Account
#define AccountPrefNibName							@"NLAAccountPreferenceView"
#define	AccountPrefIdentifier						@"AccountPreferences"
#define AccountImageName							@"keys"
#define	AccountToolBarTitle						NSLocalizedString(@"AccountPreferences", @"Account")

#endif
