  Adbuddiz cordova plugin
=======================

To start first http://adbuddiz.com


IOS

1 Download SDK

2 Add mandatory frameworks

iOS mandatory Frameworks
Drag and drop AdBuddiz.framework into the Frameworks/ folder of your app.

In Project target / General / Linked Frameworks and Libraries, also add the following system frameworks :

> - SystemConfiguration.framework
> - AdSupport.framework
> - StoreKit.framework


3 In your AppDelegate, import the following header : #import

```
<AdBuddiz/AdBuddiz.h>
```
4 Add the following code depending on your app to didFinishLaunchingWithOptions
```
[[NSNotificationCenter defaultCenter]addObserver:self
    selector:@selector(applicationDidBecomeActive:)
    name:UIApplicationDidBecomeActiveNotification
    object:nil];
```
5 add function
```
-(void)applicationDidBecomeActive:(UIApplication *)application
{
    [AdBuddiz setPublisherKey:@"YOUR-PUBLIC-KEY"];
    [AdBuddiz cacheAds];
}
```
### Cordova

6 Install plugin
```
 cordova plugin add  https://github.com/avtehnik/adbuddiz-cordova-plugin.git
```

7 Rebuild your app
```
 cordova build ios
```
 
8 Somewhere in your js code run next function

```
AdBuddizShow(); 
```
to show advertisement.
