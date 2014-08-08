//
//  NLAccountPreferenceViewController.mm
//  NicoLiveAlert
//
//  Created by Чайка on 7/3/14.
//  Copyright (c) 2014 Instrumentality of mankind. All rights reserved.
//

#import "NLAAccountPreferenceViewController.h"

static NSString *AccountPrefNibName =			@"NLAAccountPreferenceView";
static NSString *AccountPrefIdentifier =		@"AccountPreferences";
static NSString *AccountImageName =				@"keys";
#define	AccountToolBarTitle						NSLocalizedString(@"AccountPreferences", @"Account")

@interface NLAAccountPreferenceViewController ()

@end

@implementation NLAAccountPreferenceViewController
#pragma mark - synthesize properties
#pragma mark - class method
#pragma mark - constructor / destructor

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:AccountPrefNibName bundle:nibBundleOrNil];
    if (self) {
        // Initialization code here.
    }
    return self;
}// end - (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil

#pragma mark - override
#pragma mark - delegate
- (void) controlTextDidChange:(NSNotification *)obj
{
	if (( [[txtfldAccountBox stringValue] isEqualToString:@""] == NO) &&
		( [[txtfldPasswordBox stringValue] isEqualToString:@""] == NO)) {
		[buttonAdd setEnabled:YES];
	} else {
		[buttonAdd setEnabled:NO];
	}
}// end - (void) controlTextDidChange:(NSNotification *)obj

#pragma mark - instance method
#pragma mark - properties
#pragma mark - actions
- (IBAction) buttonAddPressed:(id)sender
{
	
}// end - (IBAction) buttonAddPressed:(id)sender

- (IBAction) buttonDeletePressed:(id)sender
{
	
}// end - (IBAction) buttonDeletePressed:(id)sender

#pragma mark - messages
#pragma mark - private
#pragma mark - C functions


#pragma mark - MASPreferencesViewController
- (NSString *)identifier
{
    return AccountPrefIdentifier;
}// end - (NSString *)identifier

- (NSImage *)toolbarItemImage
{
    return [NSImage imageNamed:AccountImageName];
}// end - (NSImage *)toolbarItemImage

- (NSString *)toolbarItemLabel
{
    return AccountToolBarTitle;
}// end - (NSString *)toolbarItemLabel
@end
