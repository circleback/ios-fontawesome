//
//  FACustomViewController.m
//  FontAwesome-iOS Demo
//
//  Created by Patrick Zearfoss on 9/17/14.
//  Copyright (c) 2014 Alex Usbergo. All rights reserved.
//

#import "FACustomViewController.h"
#import "UIFont+FontAwesome.h"
@interface FACustomViewController ()
@property (strong, nonatomic) IBOutlet UILabel *label;

@end

@implementation FACustomViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.tabBarItem.title = @"Custom";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.label.font = [UIFont fontAwesomeFontOfSize:64];
    self.label.text = nil;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)textFieldChange:(id)sender
{
    if ([[sender text] length] == 4)
    {
        NSScanner *scanner = [[NSScanner alloc] initWithString:[sender text]];
        unsigned result;
        [scanner scanHexInt:&result];
        unichar c = (unichar)result;
        NSString *strVal = [NSString stringWithCharacters:&c length:1];
        self.label.text = strVal;
    }
}

@end
