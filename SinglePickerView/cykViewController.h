//
//  cykViewController.h
//  SinglePickerView
//
//  Created by Yann Folkestad on 1/12/14.
//  Copyright (c) 2014 Cooking Yann & Ken. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface cykViewController : UIViewController <UIPickerViewDelegate,UIPickerViewDataSource>
@property (weak, nonatomic) IBOutlet UIPickerView *pickerView;

@end
