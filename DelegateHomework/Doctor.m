//
//  Doctor.m
//  DelegateHomework
//
//  Created by Zhuravlev Aleksandr on 12.02.15.
//  Copyright (c) 2015 AlexHome. All rights reserved.
//

#import "Doctor.h"

@implementation Doctor





-(void) patientFeelsBad: (Patient*) patient
{
    NSLog(@"Patient %@ feels bad", patient.name);
    if (patient.tempereture >= 37.f && patient.tempereture <=38.f)
    {
        [patient MRT];
    }
    else if ( patient.tempereture >38.f)
    {
        [patient toDoctorHouse];
    }
    else
    {
        NSLog(@"Patient %@ hopeless", patient.name);
    }
}




@end
