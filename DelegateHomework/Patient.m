//
//  Patient.m
//  DelegateHomework
//
//  Created by Zhuravlev Aleksandr on 12.02.15.
//  Copyright (c) 2015 AlexHome. All rights reserved.
//

#import "Patient.h"

@implementation Patient

-(BOOL) howAreYou
{
    BOOL iFeelGood = NO; //arc4random() % 2;
    
    if (!iFeelGood)
    {
        [self.delegate patientFeelsBad:self];
    }
    return iFeelGood;
}

-(void) MRT
{
    NSLog(@"%@ go to MRT", self.name);
}

-(void) toDoctorHouse
{
    NSLog(@"%@ need to go to Doctor House", self.name);
}



-(void) question
{
    NSLog(@"%@ are you OK?", self.name);
}

@end
