//
//  GBViewController.m
//  Ghostbin
//
//  Created by James Long on 31/10/2013.
//  Copyright (c) 2013 Evolse Limited. All rights reserved.
//

#import "GBViewController.h"
#import "Chromatism/Chromatism.h"

@interface GBViewController ()

@end

@implementation GBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.navigationController.navigationBar.barStyle = UIBarStyleBlack;
    self.title = @"Ghostbin";

    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Options" style:UIBarButtonItemStylePlain target:self action:@selector(options:)];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Paste!" style:UIBarButtonItemStylePlain target:self action:@selector(paste:)];
    
    JLTextView *textView = [[JLTextView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    [self.view addSubview:textView];
    
//    UITextView *textView = [[UITextView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
//    [textView setBackgroundColor:[UIColor colorWithRed:42/255.0f green:42/255.0f blue:42/255.0f alpha:1.0f]];
//    [textView setTextColor:[UIColor whiteColor]];
//    [self.view addSubview:textView];
//    
//    NSURL *url = [[NSBundle mainBundle] URLForResource:@"template" withExtension:@"html"];
//    UIWebView *webView = [[UIWebView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
//    [webView setBackgroundColor:[UIColor clearColor]];
////    [webView loadHTMLString:template baseURL:[NSURL URLWithString:@""]];
//    [webView loadRequest:[NSURLRequest requestWithURL:url]];
//    [self.view addSubview:webView];
    
    
    // Navigation bar, subtitle
    
    UIView *customView = [[UIView alloc] init];
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 200.0f, 30.0f)];
    titleLabel.font = [UIFont boldSystemFontOfSize:17.0f];
    titleLabel.textColor = [UIColor whiteColor];
    titleLabel.backgroundColor = [UIColor clearColor];
    titleLabel.textAlignment = NSTextAlignmentCenter;

    UILabel *subtitleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 20.0f, 200.0f, 20.0f)];
    subtitleLabel.font = [UIFont systemFontOfSize:10.0f];
    subtitleLabel.textColor = [UIColor whiteColor];
    subtitleLabel.backgroundColor = [UIColor clearColor];
    subtitleLabel.textAlignment = NSTextAlignmentCenter;
    
    titleLabel.text = @"Ghostbin";
    [titleLabel sizeToFit];
    
    subtitleLabel.text = @"Objective-C";
    [subtitleLabel sizeToFit];
    
    
    
    customView.frame = CGRectMake(0,0, titleLabel.frame.size.width, 36.0f);
    
    subtitleLabel.frame = CGRectMake(subtitleLabel.frame.origin.x, subtitleLabel.frame.origin.y, customView.frame.size.width, subtitleLabel.frame.size.height);
    
    [customView addSubview:titleLabel];
    [customView addSubview:subtitleLabel];
    
    NSLog(@"%@", NSStringFromCGRect(customView.frame));
    
    [self.navigationItem setTitleView:customView];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
