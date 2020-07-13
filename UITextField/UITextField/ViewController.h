//
//  ViewController.h
//  UITextField
//
//  Created by 张立远 on 2020/7/13.
//  Copyright © 2020 张立远. All rights reserved.
//

#import <UIKit/UIKit.h>

//UITextFieldDelegate协议
@interface ViewController : UIViewController<UITextFieldDelegate>{
    
    //定义一个textField
    //文本输入区域
    //例如：用户名，密码等需要输入文本文字的内容区
    //只能输入单行文字，不能输入或显示多行文字
    UITextField* _textField;
}

//定义属性
@property(retain, nonatomic) UITextField* textField;


@end

