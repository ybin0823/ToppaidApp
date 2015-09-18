//
//  MyTableViewController.m
//  Toppaidapp
//
//  Created by Jang Young bin on 2015. 9. 18..
//  Copyright © 2015년 Jang Young bin. All rights reserved.
//

#import "MyTableViewController.h"
#import "AppInfoListManager.h"

@interface MyTableViewController ()

@end

@implementation MyTableViewController
{
    NSMutableDictionary *model;
//    AppInfoListManager *appInfoListManager;
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        
        model = [[NSMutableDictionary alloc] init];

        [model setObject:@[@"NAVER", @"Apple", @"IBM", @"Google", @"Facebook",
                           @"Oracle"] forKey:@"section1"];
        [model setObject:@[@"BMW", @"Toyota", @"Honda", @"Mercedes", @"Porsche",
                           @"Nissan", @"Ford", @"VW", @"Audi"] forKey:@"section2"];
//        appInfoListManager = [AppInfoListManager AppInfoListManagerWithURL:[NSURL URLWithString:
//                                                                            @"https://itunes.apple.com/kr/rss/toppaidapplications/limit=100/json"]];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[self tableView] registerClass:[UITableViewCell class]
             forCellReuseIdentifier:@"default cell"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return [model count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSString *key = (section == 0) ? @"section1" : @"section2";
    return [[model objectForKey:key] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"default cell" forIndexPath:indexPath];
    NSString *key = ([indexPath section] == 0) ? @"section1" : @"section2";
    NSString *title = [[model objectForKey:key] objectAtIndex:[indexPath row]];
    
    [[cell textLabel] setText:title];
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
