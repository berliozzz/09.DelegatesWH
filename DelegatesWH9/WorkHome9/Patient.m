//
//  Patient.m
//  WorkHome9
//
//  Created by Nikolay Berlioz on 12.09.15.
//  Copyright (c) 2015 Nikolay Berlioz. All rights reserved.
//

#import "Patient.h"

@implementation Patient

- (void) takePill
{
    NSLog(@"Patient %@ take pill.", self.name);
}

- (void) makeShot
{
    NSLog(@"Patient %@ make shot.", self.name);
}

- (BOOL) howAreYou
{
    BOOL iFeelGood = arc4random() % 2;
    
    if (!iFeelGood)
    {
        [self.delegate patientWorse:self];
    }
    else
        NSLog(@"Patient %@ is ok!!!", self.name);
    NSLog(@"********************");

    
    return iFeelGood;
}

- (void) whatPatientHurts
{
    [self.delegate whatYourHurts:self];
}





@end
