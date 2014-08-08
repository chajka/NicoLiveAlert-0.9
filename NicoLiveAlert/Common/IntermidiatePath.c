//
//  IntermidiatePath.c
//  NicoLiveAlert
//
//  Created by Чайка on 7/9/14.
//  Copyright (c) 2014 Instrumentality of mankind. All rights reserved.
//

#include <stdio.h>
#import "IntermidiatePath.h"

CFStringRef CreateIntermidiatePath(CFStringRef NumberString)
{
	SInt32 stringNumber = CFStringGetIntValue(NumberString);
	SInt32 IntermidiateNumber = (SInt32)(stringNumber / 1000);

	CFStringRef IntermidiatePath = CFStringCreateWithFormat(kCFAllocatorDefault, NULL, CFSTR("%d"), IntermidiateNumber);
	
	return IntermidiatePath;
}// end CFStringRef CreateIntermidiatePath(CFStringRef NumberString)
