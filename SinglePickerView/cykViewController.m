//
//  cykViewController.m
//  SinglePickerView
//
//  Created by Yann Folkestad on 1/12/14.
//  Copyright (c) 2014 Cooking Yann & Ken. All rights reserved.
//

#import "cykViewController.h"

@interface cykViewController ()

@property (strong,nonatomic) NSArray *listItems;

@end


@implementation cykViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
//    pickerView.delegate = self;
//    pickerView.dataSource = self;
//    pickerView.showsSelectionIndicator = YES;
//    pickerView.opaque = NO;
    
//    NSArray *data = [[NSMutableArray alloc] initWithObjects:@"Badger",@"Mushroom",@"Cheescake",@"Make",@"Images",@"Instead",@"of",@"strings" ,nil];
    UIImage *recipe = [UIImage imageNamed:@"recipe3_460x316.jpg"];
    UIImage *recipe1 = [UIImage imageNamed:@"recipe3_460x316.jpg"];
    UIImage *recipe2 = [UIImage imageNamed:@"recipe3_460x316.jpg"];
    UIImage *recipe3 = [UIImage imageNamed:@"recipe3_460x316.jpg"];
    UIImageView *recipeView = [[UIImageView alloc] initWithImage:recipe];
    UIImageView *recipeView1 = [[UIImageView alloc] initWithImage:recipe1];
    UIImageView *recipeView2 = [[UIImageView alloc] initWithImage:recipe2];
    UIImageView *recipeView3 = [[UIImageView alloc] initWithImage:recipe3];
    NSArray *data = [[NSArray alloc]initWithObjects:recipeView, recipeView1, recipeView2,recipeView3, nil];
    
    self.listItems = data;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Implement the Picker Delegate methods that will populate the pickers list.
//First is numberOfComponents... which returns the amount of "Columns" that the picker will contain ,
//in this case only one.

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}

//returns the amount of items that will be in the list , so naturally we return the array count:

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return [_listItems count];
    //return [self.listItems count];
}

- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view
{
    // self.myImages is an array of UIImageView objects
    UIView * myView = [self.listItems objectAtIndex:row];
    
    // first convert to a UIImage
    UIGraphicsBeginImageContextWithOptions(myView.bounds.size, NO, 0);
    
    [myView.layer renderInContext:UIGraphicsGetCurrentContext()];
    
    UIImage * image = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    // then convert back to a UIImageView and return it
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    
    return imageView;
}

//return the actual entry displayed in the pickerView:
//
//-(NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
//    return [_listItems objectAtIndex:(row%10)];
//}

@end
