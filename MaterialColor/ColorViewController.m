//
//  ColorViewController.m
//  MaterialColor
//
//  Created by kei on 2014/12/23.
//  Copyright (c) 2014年 kei. All rights reserved.
//

#import "ColorViewController.h"


@interface ColorViewController ()<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic, strong)UITableView *colorTableView;
@property (nonatomic, assign)ColorType type;

@end

@implementation ColorViewController


- (id)initWithColorType:(ColorType)type{
   self = [super init];
    if (self) {
        self.type = type;
        self.colorTableView = [[UITableView alloc]initWithFrame:self.view.frame style:UITableViewStylePlain];
        [self.colorTableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
        self.colorTableView.dataSource = self;
        self.colorTableView.delegate = self;
        [self.view addSubview:self.colorTableView];
        
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    [[UIApplication sharedApplication]setStatusBarStyle:UIStatusBarStyleLightContent animated:YES];
    
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithType:self.type number:500];
    [self.navigationItem setHidesBackButton:YES];
    UIBarButtonItem *left = [[UIBarButtonItem alloc]initWithTitle:@"back" style:UIBarButtonItemStylePlain target:self action:@selector(back)];
    left.tintColor = [UIColor whiteColor];
    [self.navigationItem setLeftBarButtonItem:left];
    
    

}

- (void)back{
    
    [self.navigationController popToRootViewControllerAnimated:YES];
}





- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    
    [[UIApplication sharedApplication]setStatusBarStyle:UIStatusBarStyleDefault animated:YES];

    self.navigationController.navigationBar.barTintColor = [UIColor whiteColor];
    


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    cell.textLabel.textColor = [UIColor whiteColor];
    
    switch (indexPath.row) {
        case 0:
            cell.backgroundColor = [UIColor colorWithType:self.type number:50];
            cell.textLabel.text = @"50";

            break;
            
            case 1:
            cell.backgroundColor = [UIColor colorWithType:self.type number:100];
            cell.textLabel.text = @"100";
            break;
            case 2:
            cell.backgroundColor = [UIColor colorWithType:self.type number:200];
            cell.textLabel.text = @"200";
            break;
            
            case 3:
            cell.backgroundColor = [UIColor colorWithType:self.type number:300];
            cell.textLabel.text = @"300";
            break;
            
            case 4:
            cell.backgroundColor = [UIColor colorWithType:self.type number:400];
            cell.textLabel.text = @"400";
            break;
            
            case 5:
            cell.backgroundColor = [UIColor colorWithType:self.type number:500];
            cell.textLabel.text = @"500";
            break;
            
            case 6:
            cell.backgroundColor = [UIColor colorWithType:self.type number:600];
            cell.textLabel.text = @"600";
            break;
            
            case 7:
            cell.backgroundColor = [UIColor colorWithType:self.type number:700];
            cell.textLabel.text = @"700";
            break;
            
            case 8:
            cell.backgroundColor = [UIColor colorWithType:self.type number:800];
            cell.textLabel.text = @"800";
            break;
            
            case 9:
            cell.backgroundColor = [UIColor colorWithType:self.type number:900];
            cell.textLabel.text = @"900";
            break;
            
            case 10:
            cell.backgroundColor = [UIColor colorWithType:self.type number:1000];
            cell.textLabel.text = @"A100";
            break;
            
            case 11:
            cell.backgroundColor = [UIColor colorWithType:self.type number:2000];
            cell.textLabel.text = @"A200";
            break;
            
            case 12:
            cell.backgroundColor = [UIColor colorWithType:self.type number:4000];
            cell.textLabel.text = @"A400";
            break;
            
            case 13:
            cell.backgroundColor = [UIColor colorWithType:self.type number:7000];
            cell.textLabel.text = @"A700";
            break;
            
        default:
            break;
    }
    
    
    return cell;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (self.type == ColorTypeBrown || self.type == ColorTypeGrey || self.type == ColorTypeBlueGrey) {
        return 10;
    }else{
        return 14;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return 0.1;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
