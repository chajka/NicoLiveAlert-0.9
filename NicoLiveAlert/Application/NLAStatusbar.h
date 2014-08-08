//
//  NLAStatusbar.h
//  NicoLiveAlert
//
//  Created by Чайка on 8/8/14.
//  Copyright (c) 2014 Instrumentality of mankind. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NLAStatusbar : NSObject {
	NSMenu			*statusMenu;
	NSArray			*userPrograms;
	NSArray			*officialPrograms;
}
- (id) initWithMenu:(NSMenu *)menu;

@end
