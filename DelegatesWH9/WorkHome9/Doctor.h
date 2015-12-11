//
//  Doctor.h
//  WorkHome9
//
//  Created by Nikolay Berlioz on 12.09.15.
//  Copyright (c) 2015 Nikolay Berlioz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"


@protocol PatientDelegate;


@interface Doctor : NSObject <PatientDelegate>

@end
