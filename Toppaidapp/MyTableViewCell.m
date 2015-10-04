//
//  MyTableViewCell.m
//  Toppaidapp
//
//  Created by Jang Young bin on 2015. 9. 18..
//  Copyright © 2015년 Jang Young bin. All rights reserved.
//

#import "MyTableViewCell.h"

@implementation MyTableViewCell
{
    UILabel *title;
    UILabel *rights;
    UIImageView *thumbnail;
}

@synthesize title = title;
@synthesize rights = rights;
@synthesize thumbnail = thumbnail;

- (instancetype) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if (self) {
        title = [[UILabel alloc] init];
        rights = [[UILabel alloc] init];
        thumbnail = [[UIImageView alloc] init];
        [thumbnail setBackgroundColor:[UIColor blueColor]];
    }
    
    return self;
}
- (void)awakeFromNib {
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    [title setFrame:CGRectMake(55, 10, 300, 40)];
    [rights setFrame:CGRectMake(55, 40, 300, 30)];
    [thumbnail setFrame:CGRectMake(0, 10, 53, 53)];
    
    [self addSubview:title];
    [self addSubview:rights];
    [self addSubview:thumbnail];
}
- (void) dealloc {
    [title release];
    [rights release];
    [thumbnail release];
    
    [super dealloc];
}
@end
