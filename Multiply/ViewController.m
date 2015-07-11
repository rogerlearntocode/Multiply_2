//
//  ViewController.m
//  Multiply
//
//  Created by roger.tan on 11/7/15.
//  Copyright (c) 2015 iKompass. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *numberTextField;
@property (weak, nonatomic) IBOutlet UILabel *multiplierLabel;
@property (weak, nonatomic) IBOutlet UILabel *answer;
@property (weak, nonatomic) IBOutlet UISegmentedControl *operatorSegmentControl;

@end

@implementation ViewController

- (IBAction)onCalculateButtonPressed:(UIButton *)sender {
    [self doMultiplicationAndShowColor];
    
}

- (IBAction)onSliderValueChanged:(UISlider *)sender {
    self.multiplierLabel.text = [NSString stringWithFormat:@"%.0f", sender.value];
    
    
}

- (void) doMultiplicationAndShowColor{
    
    
    
    int numbertextField = self.numberTextField.text.intValue;
    
    int multiplierLabel = self.multiplierLabel.text.intValue;
    
   
    
    
    long result;
    
    if(self.operatorSegmentControl.selectedSegmentIndex == 0){
        result = numbertextField * multiplierLabel;
    }
    else{
        

    result = numbertextField / multiplierLabel;
    }
    

    
    if ((result % 3==0) && (result % 5==0)) {
        self.answer.text = @"fizzbuzz";
    }
    else if((result % 3==0)) {
        self.answer.text = @"fizz";
    }
    else if((result % 5==0)) {
        self.answer.text = @"buzz";
    }
    else{
        self.answer.text = [NSString stringWithFormat:@"%ld",result];
    }
    
    
    if (result>=20){
        
        self.view.backgroundColor = [UIColor greenColor];
        
    }
    else{
        self.view.backgroundColor = [UIColor whiteColor];

    
    }
 [self.numberTextField resignFirstResponder];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
