//
//  NLAWatchlistPreferenceViewController.mm
//  NicoLiveAlert
//
//  Created by Чайка on 7/3/14.
//  Copyright (c) 2014 Instrumentality of mankind. All rights reserved.
//

#import "NLAWatchlistPreferenceViewController.h"

#define CommunityThumbnailPath			@"http://icon.nimg.jp/community/%lu/%@.jpg"
#define CommunityNoThumbnailPath		@"http://icon.nimg.jp/404.jpg"
#define UserThumnailPath				@"http://usericon.nimg.jp/usericon/%d/%d.jpg"
#define NoThumnbnailUserIconPath		@"http://uni.res.nimg.jp/img/user/thumb/blank.jpg"
#define ChannelThumbnailPath			@"http://icon.nimg.jp/channel/%@.jpg"

typedef enum : NSUInteger {
    idxCommunity = 1,
    idxLive,
    idxChannel,
} broadcastKind;

@interface NLAWatchlistPreferenceViewController ()

@end

@implementation NLAWatchlistPreferenceViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:WatchlistPrefNibName bundle:nibBundleOrNil];
    if (self) {
		entryKindRegex = [@"((co|ch|lv|\\d\\d)(\\d+))" onigCompile];
		watchTargetKindDict = [[NSDictionary alloc] initWithObjectsAndKeys:
							   @"co", [NSNumber numberWithInteger:idxCommunity],
							   @"lv", [NSNumber numberWithInteger:idxLive],
							   @"ch", [NSNumber numberWithInteger:idxChannel], nil];
    }
    return self;
}// end - (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil

- (void) dealloc
{
	onig_free(entryKindRegex);
}// end - (void) dealloc
#pragma mark - synthesize properties
#pragma mark - class method
#pragma mark - constructor / destructor
#pragma mark - override
- (void) awakeFromNib
{
	NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
	NSArray *watchlist = [ud valueForKey:PrefKeyWatchlist];
	[arrayWatchlist addObjects:watchlist];
	[arrayWatchlist setSelectedObjects:nil];
}// end - (void) awakeFromNib

- (void) controlTextDidChange:(NSNotification *)obj
{
	NSString *watchItem = [[txtfldWatchTarget stringValue] searchWith:entryKindRegex];
	BOOL enable = ((watchItem == nil) && ([watchItem isEqualToString:@""] == NO)) ? NO : YES;
	[buttonAddWatchItem setEnabled:enable];
}// end - (void) controlTextDidChange:(NSNotification *)obj

#pragma mark - delegate
#pragma mark - instance method
#pragma mark - properties
#pragma mark - actions
- (IBAction) addButtonPressed:(id)sender
{
	NSString *watchItem = [txtfldWatchTarget stringValue];
	NSString *itemComment = [txtfldTargetComment stringValue];
	if (itemComment == nil)
		itemComment = @"";
	NSDictionary *watchlistItem = [NSDictionary dictionaryWithObjectsAndKeys:
								  watchItem, DictKeyWatchItem,
								  itemComment, DictKeyWatchNote, nil];
	[arrayWatchlist addObject:watchlistItem];
	[arrayWatchlist setSelectedObjects:[NSArray arrayWithObject:watchlistItem]];

		// store to users default
	NSMutableArray *watchlist = nil;
	for (NSMutableDictionary *watchItem in [arrayWatchlist arrangedObjects]) {
		[watchItem removeObjectForKey:DictkeyThumbnail];
		[watchlist addObject:watchItem];
	}// end foreach entried items in watchlist
	NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
	[ud setValue:watchlist forKey:PrefKeyWatchlist];
	
}// end - (IBAction) addButtonPressed:(id)sender

#pragma mark - messages
#pragma mark - private
#pragma mark - C functions

#pragma mark - MASPreferencesViewController
- (NSString *)identifier
{
    return WatchlistPrefIdentifier;
}// end - (NSString *)identifier

- (NSImage *)toolbarItemImage
{
    return [NSImage imageNamed:WatchlistImageName];
}// end - (NSImage *)toolbarItemImage

- (NSString *)toolbarItemLabel
{
    return WatchlistToolBarTitle;
}// end - (NSString *)toolbarItemLabel
@end
