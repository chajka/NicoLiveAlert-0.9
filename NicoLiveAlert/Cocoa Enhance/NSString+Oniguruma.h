//
//  NSString+Oniguruma.h
//  Charleston
//
//  Created by Чайка on 12/20/12.
//  Copyright (c) 2012 iom. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CocoaOniguruma/oniguruma.h>
#import <CocoaOniguruma/OnigRegexp.h>

#define FoundFirstItem				(1)
#define FoundSecondItem				(2)
#define OnigUCharSize				(2)

@interface NSString (Oniguruma)
- (regex_t *) onigCompile;
- (regex_t *) onigCompileWithOption:(OnigOptionType)option;
- (NSString *) searchWith:(regex_t *)regex;
- (NSString *) searchWith:(regex_t *)regex captueIndex:(NSInteger)index;

@end
