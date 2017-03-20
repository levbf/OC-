//
//  Student.h
//  OC练习
//
//  Created by wubo on 16/5/5.
//  Copyright © 2016年 wubo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject
{
    NSString *firstName;
    NSString *lastName;
    
}
//@property (nonatomic,strong)NSString* firstName;
//@property(nonatomic,strong)NSString* lastName;
+(void)studentWithFirstname:(NSString *)fName lastName:(NSString *)lName bookName:(NSString*)bName ;
@end
