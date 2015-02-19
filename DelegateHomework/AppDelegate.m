//
//  AppDelegate.m
//  DelegateHomework
//
//  Created by Zhuravlev Aleksandr on 12.02.15.
//  Copyright (c) 2015 AlexHome. All rights reserved.
//

#import "AppDelegate.h"
#import "Doctor.h"
#import "Patient.h"

@interface AppDelegate ()

@end

@implementation AppDelegate



- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
 
    

   
      Patient* patient1 = [[Patient alloc] init];
    patient1.name = @"Alex";
    patient1.tempereture = 36.6f;
    
    Patient* patient2 = [[Patient alloc] init];
    patient2.name = @"Dima";
    patient2.tempereture = 37.7f;
    
    
    Patient* patient3 = [[Patient alloc] init];
    patient3.name = @"Afanasiy";
    patient3.tempereture = 39.0f;

    
    Patient* patient4 = [[Patient alloc] init];
    patient4.name = @"Vadim";
    patient4.tempereture = 38.3f;
   
    Doctor* doctor = [[Doctor alloc] init];

    patient1.delegate = doctor;
    patient2.delegate = doctor;
    patient3.delegate = doctor;
    patient4.delegate = doctor;
    
    /*
   

    NSLog(@"%@ are you OK?", patient1.name);
        NSLog(@"%@", [patient1 howAreYou] ? @"Yes" : @"No");
    NSLog(@"%@ are you OK?", patient2.name);
        NSLog(@"%@", [patient2 howAreYou] ? @"Yes" : @"No");
    NSLog(@"%@ are you OK?", patient3.name);
        NSLog(@"%@", [patient3 howAreYou] ? @"Yes" : @"No");
    NSLog(@"%@ are you OK?", patient4.name);
    NSLog(@"%@", [patient4 howAreYou] ? @"Yes" : @"No");
  //  NSLog(@"%@ are you OK? %@", patient4.name, [patient4 howAreYou] ? @"Yes" : @"No");
    */
 
 
   
    NSArray* qwe = [NSArray arrayWithObjects:patient1, patient2, patient3, patient4, nil];
    
    for ( Patient* patients in qwe)
    {
        [self question: patients];
    }
    
    return YES;
}

-(void) question: (Patient*) patients
    {
        NSLog(@"%@ are you OK?", patients.name );
         NSLog(@"%@", [patients howAreYou] ? @"Yes":@"");
    }

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
