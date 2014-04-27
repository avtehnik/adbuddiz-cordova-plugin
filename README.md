  Adbuddiz cordova plugin
=======================


http://adbuddiz.com

1. Download SDK

iOS Objective-C SDK 2.3.1:  Download

2. Add mandatory frameworks

iOS mandatory Frameworks
Drag and drop AdBuddiz.framework into the Frameworks/ folder of your app.

In Project target / General / Linked Frameworks and Libraries, also add the following system frameworks :

> - SystemConfiguration.framework
> - AdSupport.framework
> - StoreKit.framework


In your AppDelegate, import the following header : #import ```
```
<AdBuddiz/AdBuddiz.h>
```
Then add the following code depending on your app to didFinishLaunchingWithOptions
```
[[NSNotificationCenter defaultCenter]addObserver:self
    selector:@selector(applicationDidBecomeActive:)
    name:UIApplicationDidBecomeActiveNotification
    object:nil];
```
then add function
```
-(void)applicationDidBecomeActive:(UIApplication *)application
{
    [AdBuddiz setPublisherKey:@"YOUR-PUBLIC-KEY"];
    [AdBuddiz cacheAds];
}
```
### Cordova

Install plugin
```
 cordova plugin add  https://github.com/avtehnik/adbuddiz-cordova-plugin.git
```
 
then in somewhere in your js code run 

```
AdBuddizShow(); 
```
to show advertisement.
