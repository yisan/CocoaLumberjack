#import "CustomLogLevelsAppDelegate.h"

#import "MYLog.h"
#import "DDASLLogger.h"
#import "DDTTYLogger.h"

// Debug levels: off, fatal, error, warn, notice, info, debug
static const int ddLogLevel = LOG_LEVEL_DEBUG;


@implementation CustomLogLevelsAppDelegate

@synthesize window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // since the verbose log level was undefined, we need to specify the log level for every logger
    [DDLog addLogger:[DDASLLogger sharedInstance] withLogLevel:LOG_LEVEL_DEBUG];
    [DDLog addLogger:[DDTTYLogger sharedInstance] withLogLevel:LOG_LEVEL_DEBUG];
    
    DDLogFatal(@"Fatal");
    DDLogError(@"Error");
    DDLogWarn(@"Warn");
    DDLogNotice(@"Notice");
    DDLogInfo(@"Info");
    DDLogDebug(@"Debug");
}

@end
