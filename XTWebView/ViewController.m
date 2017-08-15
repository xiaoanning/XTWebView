//
//  ViewController.m
//  XTWebView
//
//  Created by 安宁 on 2017/8/14.
//  Copyright © 2017年 安宁. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIWebViewDelegate>


@property ( nonatomic , strong )  UIWebView * webView ;


@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self createWebView];

}


-(void)createWebView
{
    _webView = [[UIWebView alloc]initWithFrame:CGRectMake(100, 100, 300, 400)];
    _webView.delegate = self ;
    [self.view addSubview:_webView];
    
    [_webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://www.baidu.com"]]] ;
}

- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType
{

    return YES ;
}
- (void)webViewDidStartLoad:(UIWebView *)webView
{

    NSLog(@" ===== %@ ",_webView.request.URL) ;
}
- (void)webViewDidFinishLoad:(UIWebView *)webView
{

}
- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error
{

}


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [_webView goBack];
    
    NSLog(@" %@ ",_webView.request.URL) ;
}


@end
