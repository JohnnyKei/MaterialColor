//
//  ViewController.m
//  MaterialColor
//
//  Created by kei on 2014/12/23.
//  Copyright (c) 2014年 kei. All rights reserved.
//

#import "ViewController.h"
#import "ColorViewController.h"
#import "UIColor+Material.h"
#import "ColorCell.h"

@interface ViewController ()<UICollectionViewDataSource,UICollectionViewDelegate>

@property (nonatomic, strong)UICollectionView *collorCollectionView;
@property (nonatomic, strong)NSArray *colorNames;

@end

@implementation ViewController

- (id)init{
    self = [super init];
    if (self) {
        self.view.backgroundColor = [UIColor whiteColor];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc]init];
    layout.itemSize = CGSizeMake(100, 100);
    layout.sectionInset = UIEdgeInsetsMake(16, 16, 32, 16);

    
    self.collorCollectionView = [[UICollectionView alloc]initWithFrame:self.view.frame collectionViewLayout:layout];
    [self.collorCollectionView registerClass:[ColorCell class] forCellWithReuseIdentifier:@"Cell"];
    self.collorCollectionView.delegate = self;
    self.collorCollectionView.dataSource = self;
    self.collorCollectionView.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:self.collorCollectionView];
    
    self.colorNames = @[@"Red",
                        @"Pink",
                        @"Purple",
                        @"Deep Purple",
                        @"Indigo",
                        @"Blue",
                        @"Light Blue",
                        @"Cyan",
                        @"Teal",
                        @"Green",
                        @"Light Green",
                        @"Lime",
                        @"Yellow",
                        @"Amber",
                        @"Orange",
                        @"Deep Orange",
                        @"Brown",
                        @"Grey",
                        @"Blue Grey"];
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.colorNames.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    ColorCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    
//    NSLog(@"%@",self.colorNames[indexPath.item]);
    cell.titleLabel.text = self.colorNames[indexPath.item];
    cell.titleLabel.textColor = [UIColor whiteColor];
    
//    NSLog(@"%@",cell.titleLabel.text);

//
//    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(5, 5, 100, 30)];
//    label.textColor = [UIColor whiteColor];
//    label.text = self.colorNames[indexPath.item];
//    [cell addSubview:label];
    
    
    switch (indexPath.item) {
        case 0:
            cell.backgroundColor = [UIColor redColorWithNumber:500];
            break;
            
            case 1:
            cell.backgroundColor = [UIColor pinkColorWithNumber:500];
            break;
            
            case 2:
            cell.backgroundColor = [UIColor purpleColorWithNumber:500];
            break;
            
            case 3:
            cell.backgroundColor = [UIColor deepPurpleColorWithNumber:500];
            break;
            
            case 4:
            cell.backgroundColor = [UIColor indigoColorWithNumber:500];
            break;
            
            case 5:
            cell.backgroundColor = [UIColor blueColorWithNumber:500];
            break;
            
            case 6:
            cell.backgroundColor = [UIColor lightBlueColorWithNumber:500];
            break;
            
            case 7:
            cell.backgroundColor = [UIColor cyanColorWithNumber:500];
            break;
            
            case 8:
            cell.backgroundColor = [UIColor tealColorWithNumber:500];
            break;
            
            case 9:
            cell.backgroundColor = [UIColor greenColorWithNumber:500];
            break;
            
            case 10:
            cell.backgroundColor = [UIColor lightGreenColorWithNumber:500];
            break;
            
            case 11:
            cell.backgroundColor = [UIColor limeColorWithNumber:500];
            break;
            
            case 12:
            cell.backgroundColor = [UIColor yellowColorWithNumber:500];
            break;
            
            case 13:
            cell.backgroundColor = [UIColor amberColorWithNumber:500];
            break;
            
            case 14:
            cell.backgroundColor = [UIColor orangeColorWithNumber:500];
            break;
            
            case 15:
            cell.backgroundColor = [UIColor deepOrangeColorWithNumber:500];
            break;
            
            case 16:
            cell.backgroundColor = [UIColor brownColorWithNumber:500];
            break;
            
            case 17:
            cell.backgroundColor = [UIColor greyColorWithNumber:500];
            break;
            
            case 18:
            cell.backgroundColor = [UIColor blueGreyColorWithNumber:500];
            break;
            
        default:
            break;
    }
    
    
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    [collectionView deselectItemAtIndexPath:indexPath animated:YES];
    
    
    switch (indexPath.item) {
        case 0:{
            
            ColorViewController *v = [[ColorViewController alloc]initWithColorType:ColorTypeRed];
            [self.navigationController pushViewController:v animated:YES];
        }break;
            
        case 1:
        {
            ColorViewController *v = [[ColorViewController alloc]initWithColorType:ColorTypePink];
            [self.navigationController pushViewController:v animated:YES];
        }            break;
            
        case 2:
        {
            ColorViewController *v = [[ColorViewController alloc]initWithColorType:ColorTypePurple];
            [self.navigationController pushViewController:v animated:YES];
        }            break;
            
        case 3:
        {
            ColorViewController *v = [[ColorViewController alloc]initWithColorType:ColorTypeDeepPurple];
            [self.navigationController pushViewController:v animated:YES];
        }            break;
            
        case 4:
        {
            ColorViewController *v = [[ColorViewController alloc]initWithColorType:ColorTypeIndigo];
            [self.navigationController pushViewController:v animated:YES];
        }            break;
            
        case 5:
        {
            ColorViewController *v = [[ColorViewController alloc]initWithColorType:ColorTypeBlue];
            [self.navigationController pushViewController:v animated:YES];
        }            break;
            
        case 6:
        {
            ColorViewController *v = [[ColorViewController alloc]initWithColorType:ColorTypeLightBlue];
            [self.navigationController pushViewController:v animated:YES];
        }            break;
            
        case 7:
        {
            ColorViewController *v = [[ColorViewController alloc]initWithColorType:ColorTypeCyan];
            [self.navigationController pushViewController:v animated:YES];
        }            break;
            
        case 8:
        {
            ColorViewController *v = [[ColorViewController alloc]initWithColorType:ColorTypeTeal];
            [self.navigationController pushViewController:v animated:YES];
        }            break;
            
        case 9:
        {
            ColorViewController *v = [[ColorViewController alloc]initWithColorType:ColorTypeGreen];
            [self.navigationController pushViewController:v animated:YES];
        }
            break;
            
        case 10:
        {
            ColorViewController *v = [[ColorViewController alloc]initWithColorType:ColorTypeLightGreen];
            [self.navigationController pushViewController:v animated:YES];
        }
            break;
            
        case 11:
        {
            ColorViewController *v = [[ColorViewController alloc]initWithColorType:ColorTypeLime];
            [self.navigationController pushViewController:v animated:YES];
        }
            break;
            
        case 12:
        {
            ColorViewController *v = [[ColorViewController alloc]initWithColorType:ColorTypeYellow];
            [self.navigationController pushViewController:v animated:YES];
        }
            break;
            
        case 13:
        {
            ColorViewController *v = [[ColorViewController alloc]initWithColorType:ColorTypeAmber];
            [self.navigationController pushViewController:v animated:YES];
        }
            break;
            
        case 14:
        {
            ColorViewController *v = [[ColorViewController alloc]initWithColorType:ColorTypeOrange];
            [self.navigationController pushViewController:v animated:YES];
        }
            break;
            
        case 15:
        {
            ColorViewController *v = [[ColorViewController alloc]initWithColorType:ColorTypeDeepOrange];
            [self.navigationController pushViewController:v animated:YES];
        }
            break;
            
        case 16:
        {
            ColorViewController *v = [[ColorViewController alloc]initWithColorType:ColorTypeBrown];
            [self.navigationController pushViewController:v animated:YES];
        }            break;
            
        case 17:
        {
            ColorViewController *v = [[ColorViewController alloc]initWithColorType:ColorTypeGrey];
            [self.navigationController pushViewController:v animated:YES];
        }            break;
            
        case 18:
        {
            ColorViewController *v = [[ColorViewController alloc]initWithColorType:ColorTypeBlueGrey];
            [self.navigationController pushViewController:v animated:YES];
        }            break;
            
        default:
            break;
    }
    
}


@end
