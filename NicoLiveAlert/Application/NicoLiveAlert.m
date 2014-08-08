//
//  NicoLiveAlert.m
//  NicoLiveAlert
//
//  Created by Чайка on 7/25/14.
//  Copyright (c) 2014 Instrumentality of mankind. All rights reserved.
//

#import "NicoLiveAlert.h"
#import "MASPreferencesWindowController.h"
#import "NLAGeneralPreferenceViewController.h"
#import "NLAWatchlistPreferenceViewController.h"
#import "NLANotiryPreferenceViewController.h"
#import "NLAAccountPreferenceViewController.h"

@interface NicoLiveAlert ()

#ifdef __cplusplus
extern "C" {
#endif
	static void uncaughtExceptionHandler(NSException *exception);
#ifdef __cplusplus
} //end extern "C"
#endif
@end

@implementation NicoLiveAlert
#pragma mark - synthesize properties
#pragma mark - class method
#pragma mark - constructor / destructor
#pragma mark - override
- (void) awakeFromNib
{
	NSSetUncaughtExceptionHandler(&uncaughtExceptionHandler);
	
}// end - (void) awakeFromNib
#pragma mark - delegate
- (void) applicationWillFinishLaunching:(NSNotification *)notification
{
	
}// end - (void) applicationWillFinishLaunching:(NSNotification *)notification

- (void) applicationDidFinishLaunching:(NSNotification *)notification
{
		// Insert code here to initialize your application
}// end - (void) applicationDidFinishLaunching:(NSNotification *)notification

#pragma mark - instance method
#pragma mark - properties
#pragma mark - actions
#pragma mark - messages
#pragma mark - private
- (IBAction) openPreference:(id)sender
{
	if (preferenceOpened == NO) {
		@autoreleasepool {
			NLAGeneralPreferenceViewController *general = [[NLAGeneralPreferenceViewController alloc] init];
			NLAWatchlistPreferenceViewController *watchlist = [[NLAWatchlistPreferenceViewController alloc] init];
			NLANotiryPreferenceViewController *notify = [[NLANotiryPreferenceViewController alloc] init];
			NLAAccountPreferenceViewController *accounts = [[NLAAccountPreferenceViewController alloc] init];
			NSArray *preferencePanels = [NSArray arrayWithObjects:general, watchlist, notify, accounts, nil];
			
			preferenceWindowController = [[MASPreferencesWindowController alloc] initWithViewControllers:preferencePanels title:@"Preferences"];
			[(MASPreferencesWindowController *)preferenceWindowController selectControllerAtIndex:0];
			
		}// end autoreleasepool
	}// end if aleready build preference window;

	[preferenceWindowController showWindow:self];
}// end - (IBAction) openPreference:(id)sender
#pragma mark - C functions

static
void uncaughtExceptionHandler(NSException *exception)
{
	NSLog(@"Exception Name %@, Reason %@", exception.name, exception.reason);
	NSLog(@"Exception Description %@", exception.description);
	NSLog(@"Exception Call Stack Symbols %@", exception.callStackSymbols);
}// end void uncaughtExceptionHandler(NSException *exception)

@end
