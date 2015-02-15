//
//  Doctor.h
//  DelegateHomework
//
//  Created by Zhuravlev Aleksandr on 12.02.15.
//  Copyright (c) 2015 AlexHome. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"

@protocol PatientDelegate;


@interface Doctor : NSObject <PatientDelegate>

@end
