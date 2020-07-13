//
//  ViewController.m
//  UITextField
//
//  Created by 张立远 on 2020/7/13.
//  Copyright © 2020 张立远. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize textField = _textField;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //创建一个文本输入区对象
    self.textField = [[UITextField alloc] init];
    
    //设置文本输入区域的位置和大小
    self.textField.frame = CGRectMake(100, 100, 180, 40);
    
    //设置textField的内容文字
    self.textField.text = @"用户名";
    
    //设置文字的字体大小
    self.textField.font = [UIFont systemFontOfSize:15];
    
    //设置字体的颜色
    self.textField.textColor = [UIColor blackColor];
    
    //设置边框的风格
    //UITextBorderStyleRoundedRect：圆角风格
    //UITextBorderStyleLine:线框风格
    //UITextBorderStyleBezel：线框(好像更帅一点）
    //UITextBorderStyleNone：无边框风格
    self.textField.borderStyle = UITextBorderStyleRoundedRect;
    
    //设置虚拟键盘风格
    //UIKeyboardTypeDefault：默认风格
    //UIKeyboardTypeNamePhonePad:字母和数字小键盘组合风格
    //UIKeyboardTypeNumberPad:纯数字的风格
    self.textField.keyboardType = UIKeyboardTypeDefault;
    
    //提示文字信息
    //当text属性为空的时候，显示此条信息
    //浅灰色提示文字
    self.textField.placeholder = @"请输入用户名。。。";
    
    //是否作为密码输入
    //YES作为密码处理，原点加密
    //NO正常显示输入的文字
    self.textField.secureTextEntry = YES;
    
    [self.view addSubview:self.textField];
    
    //设置代理对象
    self.textField.delegate = self;
    
}

-(void)textFieldDidBeginEditing:(UITextField *)textField{
    NSLog(@"开始编辑了！");
}

-(void) textFieldDidEndEditing:(UITextField *)textField{
    //将文本框内容清空
    self.textField.text = @"";
    NSLog(@"编辑输入结束！");
}

//是否可以进行输入
//如果返回值为YES:可以进行输入，默认为YES
//NO：禁止输入
-(BOOL) textFieldShouldBeginEditing:(UITextField *)textField{
    return YES;
}

//是否可以结束输入
//如果返回值为YES:可以结束输入，默认为YES
//NO:不能结束输入文字（密码的最小位数之前不回收键盘）
-(BOOL) textFieldShouldEndEditing:(UITextField *)textField{
    return YES;
}

//点击屏幕空白处调用此函数
-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    //使虚拟键盘回收，不再作为第一消息响应
    [self.textField resignFirstResponder];
}


@end
