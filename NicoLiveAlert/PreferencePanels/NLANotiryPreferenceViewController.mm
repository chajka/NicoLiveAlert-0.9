//
//  NLNotiryPreferenceViewController.mm
//  NicoLiveAlert
//
//  Created by Чайка on 7/3/14.
//  Copyright (c) 2014 Instrumentality of mankind. All rights reserved.
//

#import "NLANotiryPreferenceViewController.h"
#import "AudioDeviceList.h"

@interface NLANotiryPreferenceViewController ()

@end

@implementation NLANotiryPreferenceViewController
#pragma mark - synthesize properties
#pragma mark - class method
#pragma mark - constructor / destructor
- (id) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:NotifyPrefNibName bundle:nibBundleOrNil];
    if (self) {
        // Initialization code here.
    }
    return self;
}// end - (id) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil

#pragma mark - override
- (void) awakeFromNib
{
	NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
		// create audio device list
	NSArray *outputAudioDeviceList;
	CFDictionaryRef audioDeviceDict = CreateAudoiDeviceDict(kAudioDevicePropertyScopeOutput);
	playbackAudioDeviceDict = [[NSDictionary alloc] initWithDictionary:(__bridge NSDictionary *)audioDeviceDict];
	outputAudioDeviceList = [NSArray arrayWithArray:[playbackAudioDeviceDict allKeys]];
	CFRelease(audioDeviceDict);

		// create output device popup menu
	for (NSString *deviceName in outputAudioDeviceList) {
		[popupSoundOutoputDevice addItemWithTitle:deviceName];
	}// end foreach
	for (NSMenuItem *deviceNameMenuItem in [popupSoundOutoputDevice itemArray]) {
		[deviceNameMenuItem setTarget:self];
		[deviceNameMenuItem setAction:@selector(deviceNameSelected:)];
	}// end foreach menu item
	playbackDeviceName = [ud valueForKey:PrefkeyNotifySoundDeviceName];
	[popupSoundOutoputDevice selectItemWithTitle:playbackDeviceName];

		// create sound popup menu
	NSArray *sounds = [self soundsList];
	[popupNotifyEntryUserProgram addItemsWithTitles:sounds];
	[popupNotifyEntryUserProgram selectItemWithTitle:[ud valueForKey:PrefkeyEntryUserProgramSound]];
	for (NSMenuItem *soundNameItem in [popupNotifyEntryUserProgram itemArray]) {
		[soundNameItem setTarget:self];
		[soundNameItem setAction:@selector(entryUserProgramSoundSelected:)];
	}// end foreach

	[popupNotifyStartUserProgram addItemsWithTitles:sounds];
	[popupNotifyStartUserProgram selectItemWithTitle:[ud valueForKey:PrefkeyStartUserProgramSound]];
	for (NSMenuItem *soundNameItem in [popupNotifyStartUserProgram itemArray]) {
		[soundNameItem setTarget:self];
		[soundNameItem setAction:@selector(startUserProgramSoundSelected:)];
	}// end foreach

	[popupNotifyEntryOfficialProgram addItemsWithTitles:sounds];
	[popupNotifyEntryOfficialProgram selectItemWithTitle:[ud valueForKey:PrefkeyEntryOfficialProgramSound]];
	for (NSMenuItem *soundNameItem in [popupNotifyEntryOfficialProgram itemArray]) {
		[soundNameItem setTarget:self];
		[soundNameItem setAction:@selector(entryOfficialProgramSoundSelected:)];
	}// end foreach

	[popupNotifyStartOfficialProgram addItemsWithTitles:sounds];
	[popupNotifyStartOfficialProgram selectItemWithTitle:[ud valueForKey:PrefkeyStartOfficialProgramSound]];
	for (NSMenuItem *soundNameItem in [popupNotifyStartOfficialProgram itemArray]) {
		[soundNameItem setTarget:self];
		[soundNameItem setAction:@selector(startOfficialProgramSoundSelected:)];
	}// end foreach
}// end - (void) awakeFromNib

#pragma mark - delegate
#pragma mark - instance method
#pragma mark - properties
#pragma mark - actions
- (IBAction) deviceNameSelected:(id)sender
{
	playbackDeviceName = [sender title];
}// end - (IBAction) deviceNameSelected:(id)sender

- (IBAction) entryUserProgramSoundSelected:(id)sender
{
	NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
	[ud setValue:[sender title] forKey:PrefkeyEntryUserProgramSound];
	[self playSound:[sender title]];
}// end - (IBAction) entryUserProgramSoundSelected:(id)sender

- (IBAction) startUserProgramSoundSelected:(id)sender
{
	NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
	[ud setValue:[sender title] forKey:PrefkeyStartUserProgramSound];
	[self playSound:[sender title]];
}// end - (IBAction) startUserProgramSoundSelected:(id)sender

- (IBAction) entryOfficialProgramSoundSelected:(id)sender
{
	NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
	[ud setValue:[sender title] forKey:PrefkeyEntryOfficialProgramSound];
	[self playSound:[sender title]];
}// end - (IBAction) entryOfficialProgramSoundSelected:(id)sender

- (IBAction) startOfficialProgramSoundSelected:(id)sender
{
	NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
	[ud setValue:[sender title] forKey:PrefkeyStartOfficialProgramSound];
	[self playSound:[sender title]];
}// end - (IBAction) startOfficialProgramSoundSelected:(id)sender

#pragma mark - messages
#pragma mark - private
- (NSArray *) soundsList
{
	NSString *mySoundsDir = [LocalSoundsDir stringByExpandingTildeInPath];
	NSArray *soundsDirs = [NSArray arrayWithObjects:SystemSoundsDir, mySoundsDir, nil];
	NSFileManager *fm = [NSFileManager defaultManager];
	NSMutableArray *tmpSounds = [NSMutableArray array];
	
	for (NSString *dir in soundsDirs)
		for (NSString *file in [fm contentsOfDirectoryAtPath:dir error:nil])
			[tmpSounds addObject:[file stringByDeletingPathExtension]];
		// end foreach sound
	// end foreach sounds directory
	
	return [NSArray arrayWithArray:tmpSounds];
}// end - (NSArray *) soundsList

- (void) playSound:(NSString *)soundName
{
	NSSound *sound = [NSSound soundNamed:soundName];
	[sound setPlaybackDeviceIdentifier:[playbackAudioDeviceDict valueForKey:playbackDeviceName]];
	[sound play];
}// - (void) playSound:(NSString *)soundName
#pragma mark - C functions


#pragma mark - MASPreferencesViewController
- (NSString *)identifier
{
    return NotifyPrefIdentifier;
}// end - (NSString *)identifier

- (NSImage *)toolbarItemImage
{
    return [NSImage imageNamed:NotifyImageName];
}// end - (NSImage *)toolbarItemImage

- (NSString *)toolbarItemLabel
{
    return NotifyToolBarTitle;
}// end - (NSString *)toolbarItemLabel

@end
