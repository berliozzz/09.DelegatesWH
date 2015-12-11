//
//  Patient.h
//  WorkHome9
//
//  Created by Nikolay Berlioz on 12.09.15.
//  Copyright (c) 2015 Nikolay Berlioz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>

@protocol PatientDelegate;//объявляем вначале, чтобы объявить свойство delegate

@interface Patient : NSObject


typedef enum
{
    WhatHurtsHead,
    WhatHurtsStomach,
    WhatHurtsTooth
}WhatHurts;

@property (assign, nonatomic) CGFloat temperature;
@property (assign, nonatomic) BOOL cough;
@property (assign, nonatomic) BOOL headache;
@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) WhatHurts whatHurts;


- (void) takePill;
- (void) makeShot;
- (BOOL) howAreYou;
- (void) whatPatientHurts;


@property (weak, nonatomic) id <PatientDelegate> delegate;


@end

@protocol PatientDelegate <NSObject>
@required

- (void) patientWorse: (Patient*) patient;
- (void) whatYourHurts: (Patient*) patient;

@end
