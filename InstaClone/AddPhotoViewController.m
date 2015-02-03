//
//  AddImageViewController.m
//  InstaClone
//
//  Created by Aaron Bradley on 2/2/15.
//  Copyright (c) 2015 Aaron Bradley. All rights reserved.
//


#import "AddPhotoViewController.h"
#import "AddPhotoDetailsViewController.h"

@interface AddPhotoViewController () <UIImagePickerControllerDelegate, UINavigationControllerDelegate>
@property (strong, nonatomic) IBOutlet UIImageView *imageViewMain;



@end

BOOL hasCamera;

@implementation AddPhotoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self checkForCamera];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)checkForCamera {

    if (![UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
        hasCamera = NO;
        [self noCameraAlert];
    } else {
        hasCamera = YES;
    }
}

- (void)noCameraAlert {
    UIAlertView *myAlertView = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Device has no camera" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
    [myAlertView show];
}

#pragma mark - Image Selection Methods

- (IBAction)takePhoto:(UIButton *)sender {
    if (!hasCamera) {
        [self noCameraAlert];
    } else {
        UIImagePickerController *picker = [UIImagePickerController new];
        picker.delegate = self;
        picker.allowsEditing = YES;
        picker.sourceType = UIImagePickerControllerSourceTypeCamera;

        [self presentViewController:picker animated:YES completion:NULL];
    }
}

- (IBAction)selectPhoto:(UIButton *)sender {

    UIImagePickerController *picker = [UIImagePickerController new];
    picker.delegate = self;
    picker.allowsEditing = YES;
    picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;

    [self presentViewController:picker animated:YES completion:NULL];
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {

    UIImage *chosenImage = info[UIImagePickerControllerEditedImage];
    self.imageViewMain.image = chosenImage;
    [picker dismissViewControllerAnimated:YES completion:NULL];
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    [picker dismissViewControllerAnimated:YES completion:NULL];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    AddPhotoDetailsViewController *photoDetailsVC = [AddPhotoDetailsViewController new];
    photoDetailsVC.photo = self.imageViewMain.image;
}

@end
