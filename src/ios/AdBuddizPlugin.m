//
//  AdBuddizPlugin.m
//  adbuddiz-test-app
//
//  Created by av_tehnik on 4/27/14.
//
//

#import "AdBuddizPlugin.h"
#import <AdBuddiz/AdBuddiz.h>

@implementation AdBuddizPlugin


- (void)showAdds:(CDVInvokedUrlCommand*)command
{
    
    [self.commandDelegate runInBackground:^{
        [AdBuddiz showAd];
    }];

}

@end
