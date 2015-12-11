//
//  AppDelegate.m
//  WorkHome9
//
//  Created by Nikolay Berlioz on 12.09.15.
//  Copyright (c) 2015 Nikolay Berlioz. All rights reserved.
//

#import "AppDelegate.h"
#import "Doctor.h"
#import "Patient.h"
#import "BabaValya.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    Patient * patient1 = [[Patient alloc] init];
    Patient * patient2 = [[Patient alloc] init];
    Patient * patient3 = [[Patient alloc] init];
    Patient * patient4 = [[Patient alloc] init];
    Patient * patient5 = [[Patient alloc] init];
    
    Doctor * doctor = [[Doctor alloc] init];
    
    BabaValya * babaValya = [[BabaValya alloc] init];
    BabaValya * babaNina = [[BabaValya alloc] init];
    
    patient1.name = @"Kolya";
    patient1.temperature = 36.6f;
    patient1.cough = YES;
    patient1.headache = YES;
    patient1.whatHurts = WhatHurtsHead;

    
    
    patient2.name = @"Nora";
    patient2.temperature = 39.f;
    patient2.cough = NO;
    patient2.headache = YES;
    patient2.whatHurts = WhatHurtsTooth;

    
    patient3.name = @"Vasyok";
    patient3.temperature = 40.2f;
    patient3.cough = NO;
    patient3.headache = NO;
    patient3.whatHurts = WhatHurtsStomach;

    
    patient4.name = @"Fedya";
    patient4.temperature = 40.1f;
    patient4.cough = YES;
    patient4.headache = YES;
    patient4.whatHurts = WhatHurtsTooth;

    
    patient5.name = @"Vasisualiy";
    patient5.temperature = 38.9f;
    patient5.cough = YES;
    patient5.headache = YES;
    patient5.whatHurts = WhatHurtsHead;

    
    patient1.delegate = doctor;
    patient2.delegate = doctor;
    patient3.delegate = doctor;
    patient4.delegate = babaValya;
    patient5.delegate = babaNina;
    
    NSArray *arrayHealth = [[NSArray alloc] initWithObjects:patient5, patient4, patient1, patient2, patient3,nil];
    
    /**********  выполняем метод делегата (и доктора и бабок)   ***********/
    
    for (id patient in arrayHealth)
    {
        [patient howAreYou];
    }
    
    /**********  выполняем метод делегата доктора (только его)   ***********/

    NSLog(@".............................");
    NSLog(@"Enum ache of all patients:");
    NSLog(@".............................");

    
    for (Patient *patient in arrayHealth)   // с id не дает поставить свойство delegate
    {
        if (patient.delegate == doctor) //если делегат doctor, выводим список у кого что болит
        {
            [patient whatPatientHurts];
        }
    }
    
    return YES;
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
