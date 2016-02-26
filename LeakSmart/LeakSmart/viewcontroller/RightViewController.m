//
//  RightViewController.m
//  LeakSmart
//
//  Created by AnCheng on 2/26/16.
//  Copyright © 2016 Radu Vila. All rights reserved.
//

#import "RightViewController.h"
#import "NSString+FontAwesome.h"

@interface RightViewController ()

@property (nonatomic ,assign) IBOutlet UITableView *tableView;

@end

#define SETTING_ARRAY @[@[@"Sensor E" , @"Sensor S" ,@"Add a New Sensor"] ,@[@"Activity"]]

@implementation RightViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark - UITableViewDataSource ,UITableViewDelegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [[SETTING_ARRAY objectAtIndex:section] count];
}

- (nullable NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    if (section == 0) return @"Sensors";
    return @"Ceneral";
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"settingCell" forIndexPath:indexPath];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    NSArray *arr = [SETTING_ARRAY objectAtIndex:indexPath.section];
    cell.textLabel.text = [arr objectAtIndex:indexPath.row];
    
    if (indexPath.section == 0 && indexPath.row == 2)
    {
        cell.textLabel.textColor = [UIColor colorWithHexString:@"#00b8f0"];
        cell.accessoryType = UITableViewCellAccessoryNone;
        cell.textLabel.font = [UIFont fontWithName:kFontAwesomeFamilyName size:16];
        cell.textLabel.text = [NSString stringWithFormat:@" %@  %@" , [NSString fontAwesomeIconStringForEnum:FAPlusCircle],[arr objectAtIndex:indexPath.row]];

    }
    else if (indexPath.section == 0)
    {
        cell.textLabel.textColor = [UIColor colorWithHexString:@"#82a6b4"];
 
        cell.textLabel.font = [UIFont fontWithName:kFontAwesomeFamilyName size:16];
        cell.textLabel.text = [NSString stringWithFormat:@" %@  %@" , [NSString fontAwesomeIconStringForEnum:FACheckSquareO],[arr objectAtIndex:indexPath.row]];


    }
    else
    {
        cell.textLabel.textColor = [UIColor colorWithHexString:@"#82a6b4"];

    }
    return cell;
}

@end
