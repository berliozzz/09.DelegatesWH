//
//  BabaValya.m
//  WorkHome9
//
//  Created by Nikolay Berlioz on 12.09.15.
//  Copyright (c) 2015 Nikolay Berlioz. All rights reserved.
//

#import "BabaValya.h"

@implementation BabaValya

#pragma mark - PatientDelegate

- (void) patientWorse : (Patient*) patient
{
    NSLog(@"Patient %@ is worse!", patient.name);
    
    if (patient.temperature >= 37.f && patient.temperature <= 39.f)
    {
        NSLog(@"Patient %@ have a temperature %.1f. BabaValya say: Nothing bad!", patient.name, patient.temperature);
    }
    else if (patient.temperature > 39.f)
    {
        NSLog(@"Patient %@ have a temperature %.1f. BabaValya say: Need call normal doctor!", patient.name, patient.temperature);
    }
    else
    {
        NSLog(@"Patient %@ have temperature %.1f! All is ok!", patient.name, patient.temperature);
    }
    
    if (patient.headache)
    {
        NSLog(@"Patient %@ is headache", patient.name);
        NSLog(@"BabaValya say: All is ok!!!");
    }
    else
    {
        NSLog(@"Patient %@ is not headache", patient.name);
        NSLog(@"BabaValya say: All is ok!!!");
    }
    
    if (patient.cough)
    {
        NSLog(@"Patient %@ is cough", patient.name);
        NSLog(@"BabaValya say: All is ok!!!");
    }
    else
    {
            NSLog(@"Patient %@ is not cough", patient.name);
            NSLog(@"BabaValya say: All is ok!!!");
    }
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

