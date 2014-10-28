#import "KZPPlaygroundViewController+CleanWorksheet.h"

@implementation KZPPlaygroundViewController (CleanWorksheet)

- (UIView *)cleanWorksheet
{
  [self.worksheetContainerView.subviews makeObjectsPerformSelector:@selector(removeFromSuperview)];
  UIView *worksheetView = [[UIView alloc] initWithFrame:self.worksheetContainerView.bounds];
  worksheetView.clipsToBounds = YES;
  worksheetView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
  worksheetView.backgroundColor = UIColor.lightGrayColor;
  [self.worksheetContainerView addSubview:worksheetView];
  return worksheetView;
}

@end