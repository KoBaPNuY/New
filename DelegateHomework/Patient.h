//
//  Patient.h
//  DelegateHomework
//
//  Created by Zhuravlev Aleksandr on 12.02.15.
//  Copyright (c) 2015 AlexHome. All rights reserved.
//

#import <Foundation/Foundation.h>



@protocol PatientDelegate;

@interface Patient : NSObject

@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) float tempereture;
@property (weak ,nonatomic) id <PatientDelegate> delegate;

-(BOOL) howAreYou;
-(void) MRT;
-(void) toDoctorHouse;


@end

@protocol PatientDelegate
@required

-(void) patientFeelsBad: (Patient*) patient;
-(void) question;

@end
