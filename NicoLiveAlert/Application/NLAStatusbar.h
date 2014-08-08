//
//  NLAStatusbar.h
//  NicoLiveAlert
//
//  Created by Чайка on 8/8/14.
//  Copyright (c) 2014 Instrumentality of mankind. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NLAStatusbar : NSObject {
	__strong NSStatusBar	*systemStatusbar;
	__strong NSStatusItem	*statusbarItem;
	__strong NSMenu			*statusMenu;
	NSArray			*userPrograms;
	NSArray			*officialPrograms;
}
- (id) initWithMenu:(NSMenu *)menu;

- (void) installWithImageName:(NSString *)imageName;

@end
