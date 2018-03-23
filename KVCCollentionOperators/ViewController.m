//
//  ViewController.m
//  KVCCollentionOperators
//
//  Created by 小萌 on 2018/3/23.
//  Copyright © 2018年 sunxm. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "Student.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSArray *score = @[@(89),@(80),@(20),@(56),@(89),@(100),@(89),@(89)];
    int sum = 0;
    for (NSNumber *scoreTag in score) {
        sum+= scoreTag.intValue;
    }
    NSLog(@"%d",sum);
    NSLog(@"%@",[score valueForKeyPath:@"@count.self"]);
    NSLog(@"%@",[score valueForKeyPath:@"@sum.self"]);
    NSLog(@"%@",[score valueForKeyPath:@"@max.self"]);
    NSLog(@"%@",[score valueForKeyPath:@"@min.self"]);
    NSLog(@"%@",[score valueForKeyPath:@"@avg.self"]);
    
    Person *person1 = [[Person alloc] init];
    person1.name = @"王五";
    person1.age = 10;
    person1.position = @"学生";
    
    Person *person2 = [[Person alloc] init];
    person2.name = @"赵六";
    person2.age = 19;
    person2.position = @"学生";

    Person *person3 = [[Person alloc] init];
    person3.name = @"张三";
    person3.age = 30;
    person3.position = @"公司高管";

    Person *person4 = [[Person alloc] init];
    person4.name = @"李四";
    person4.age = 25;
    person4.position = @"软件开发";

    Person *person5 = [[Person alloc] init];
    person5.name = @"七七";
    person5.age = 19;
    person5.position = @"学生";
    
    NSArray *personArr = @[person1,person2,person3,person4,person5];
    
    NSLog(@"%@",[personArr valueForKeyPath:@"@distinctUnionOfObjects.age"]);
    NSLog(@"%@",[personArr valueForKeyPath:@"@unionOfObjects.age"]);
    
//    NSLog(@"%@",[personArr valueForKeyPath:@"@distinctUnionOfObjects.position"]);
//    NSLog(@"%@",[personArr valueForKeyPath:@"@unionOfObjects.position"]);
//
    Student *student1 = [[Student alloc] init];
    student1.name = @"张三";
    student1.age = 25;
    
    Student *student2 = [[Student alloc] init];
    student2.name = @"呵呵";
    student2.age = 30;
    
    Student *student3 = [[Student alloc] init];
    student3.name = @"李四";
    student3.age = 28;
    NSArray *studentArr = @[student1,student2,student3];

    NSLog(@"%@",[@[studentArr,personArr] valueForKeyPath:@"@distinctUnionOfArrays.age"]);

    NSLog(@"%@",[@[studentArr,personArr] valueForKeyPath:@"@unionOfArrays.age"]);

    NSSet *studentSet = [NSSet setWithArray:studentArr];
    NSSet *personSet = [NSSet setWithArray:personArr];
    NSSet *allSet = [NSSet setWithObjects:studentSet,personSet, nil];
    NSLog(@"%@",[allSet valueForKeyPath:@"@distinctUnionOfSets.age"]);


}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
