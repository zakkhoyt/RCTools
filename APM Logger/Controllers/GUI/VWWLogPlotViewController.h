//
//  VWWLogPlotViewController.h
//  APM Logger
//
//  Created by Zakk Hoyt on 4/12/14.
//  Copyright (c) 2014 Zakk Hoyt. All rights reserved.
//

#import "VWWViewController.h"
@class AP2DataPlot;

@interface VWWLogPlotViewController : VWWViewController
@property (nonatomic, strong) AP2DataPlot *dataPlot;
@end