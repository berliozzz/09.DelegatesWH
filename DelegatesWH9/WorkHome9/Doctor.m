//
//  Doctor.m
//  WorkHome9
//
//  Created by Nikolay Berlioz on 12.09.15.
//  Copyright (c) 2015 Nikolay Berlioz. All rights reserved.
//

#import "Doctor.h"

@implementation Doctor


#pragma mark - PatientDelegate

- (void) patientWorse : (Patient*) patient
{
    NSLog(@"Patient %@ is worse!", patient.name);
    
    if (patient.temperature >= 37.f && patient.temperature <= 39.f)
    {
        NSLog(@"Patient %@ have temperature %.1f!", patient.name, patient.temperature);
        [patient takePill];
    }
    else if (patient.temperature > 39.f)
    {
        NSLog(@"Patient %@ have temperature %.1f!", patient.name, patient.temperature);
        [patient makeShot];
    }
    else
    {
        NSLog(@"Patient %@ have temperature %.1f!", patient.name, patient.temperature);
        NSLog(@"Patient %@ should rest!", patient.name);
    }
    NSLog(@"-----------------------------------");
    if (patient.headache)
    {
        NSLog(@"Patient %@ is headache", patient.name);
        [patient takePill];
    }
    else
        NSLog(@"Patient %@ is not headache", patient.name);
    NSLog(@"-----------------------------------");
    if (patient.cough)
    {
        NSLog(@"Patient %@ is cough", patient.name);
        [patient takePill];
    }
    else
        NSLog(@"Patient %@ is not cough", patient.name);
    NSLog(@"-----------------------------------");
}

- (void) whatYourHurts:(Patient *)patient
{

        if (patient.whatHurts == WhatHurtsHead)
        {
            NSLog(@"The patient %@ has headache!", patient.name);
        }
        else if (patient.whatHurts == WhatHurtsStomach)
        {
            NSLog(@"The patient %@ has stomachache!", patient.name);
        }
        else if (patient.whatHurts == WhatHurtsTooth)
        {
            NSLog(@"The patient %@ has toothache!", patient.name);
        }
}




@end
