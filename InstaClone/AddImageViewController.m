//
//  AddImageViewController.m
//  InstaClone
//
//  Created by Aaron Bradley on 2/2/15.
//  Copyright (c) 2015 Aaron Bradley. All rights reserved.
//


#import "AddImageViewController.h"

@interface AddImageViewController () <UIImagePickerControllerDelegate, UINavigationControllerDelegate>
@property (strong, nonatomic) IBOutlet UIImageView *imageViewMain;
@property (strong, nonatomic) IBOutlet UIButton *buttonImageFromLibrary;

@end

@implementation AddImageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)onEditImageButtonPressed:(UIButton *)sender {
    UIImagePickerController *imagePicker = [UIImagePickerController new];
    imagePicker.delegate = self;
    imagePicker.allowsEditing = YES;
    imagePicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    [self presentViewController:imagePicker animated:YES completion:nil];
}

- (void)imagePickerController:(UIImagePickerController *)imagePicker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    UIImage *pickedImage = info[UIImagePickerControllerEditedImage];
    self.imageViewMain.image = pickedImage;
    [imagePicker dismissViewControllerAnimated:YES completion:nil];
}

@end
