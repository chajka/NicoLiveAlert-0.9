//
//  NLAGeneralPreferenceViewController.mm
//  NicoLiveAlert
//
//  Created by Чайка on 7/3/14.
//  Copyright (c) 2014 Instrumentality of mankind. All rights reserved.
//

#import "NLAGeneralPreferenceViewController.h"

static NSString *GeneralPrefNibName =		@"NLAGeneralPreferenceView";
static NSString *GeneralPrefIdentifier =	@"GeneralPreferences";
#define GeneralImageName					NSImageNamePreferencesGeneral
#define GeneralToolBarTitle					NSLocalizedString(@"GeneralPreferences", @"General")

#define TitleApplicationCollaboration		NSLocalizedString(@"TitleApplicationCollaboration", @"")
#define TitleKickCommentViewerOpenByMe		NSLocalizedString(@"TitleKickCommentViewerOpenByMe", @"")
#define TitleKickCommentViewerAtAutoOpen	NSLocalizedString(@"TitleKickCommentViewerAtAutoOpen", @"")
#define TitleDoNotAutoOpenInBroadcasting	NSLocalizedString(@"TitleDoNotAutoOpenInBroadcasting", @"")
#define TitleKickStreamerOnMyBroadcast		NSLocalizedString(@"TitleKickStreamerOnMyBroadcast", @"")
#define TitleKickCommentViewerOnMyBroadcast	NSLocalizedString(@"TitleKickCommentViewerOnMyBroadcast", @"")
#define TitleTinyLauncher					NSLocalizedString(@"TitleTinyLauncher", @"")

@interface NLAGeneralPreferenceViewController ()
- (void) localise;
@end

@implementation NLAGeneralPreferenceViewController
#pragma mark - synthesize properties
#pragma mark - class method
#pragma mark - constructor / destructor
- (id) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:GeneralPrefNibName bundle:nibBundleOrNil];
    if (self) {
    }
    return self;
}// end - (id) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil

#pragma mark - override
- (void) awakeFromNib
{
	[self localise];
}// end - (void) awakeFromNib

#pragma mark - delegate
#pragma mark - properties
#pragma mark - actions
#pragma mark - messages
#pragma mark - private
- (void) localise
{
	[boxApplicationCollaboration setTitle:TitleApplicationCollaboration];
	[chkboxKickCommentViewerOpenByMe setTitle:TitleKickCommentViewerOpenByMe];
	[chkboxKickCommentViewerAtAutoOpen setTitle:TitleKickCommentViewerAtAutoOpen];
	[chkboxDoNotAutoOpenInBroadcasting setTitle:TitleDoNotAutoOpenInBroadcasting];
	[chkboxKickStreamerOnMyBroadcast setTitle:TitleKickStreamerOnMyBroadcast];
	[chkboxKickCommentViewerOnMyBroadcast setTitle:TitleKickCommentViewerOnMyBroadcast];
	[boxTinyLauncher setTitle:TitleTinyLauncher];
}// end - (void) localise

#pragma mark - C functions


#pragma mark - MASPreferencesViewController
- (NSString *)identifier
{
    return GeneralPrefIdentifier;
}// end - (NSString *)identifier

- (NSImage *)toolbarItemImage
{
    return [NSImage imageNamed:GeneralImageName];
}// end - (NSImage *)toolbarItemImage

- (NSString *)toolbarItemLabel
{
    return GeneralToolBarTitle;
}// end - (NSString *)toolbarItemLabel
@end
