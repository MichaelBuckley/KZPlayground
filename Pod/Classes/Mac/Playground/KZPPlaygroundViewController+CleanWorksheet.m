#import "KZPPlaygroundViewController+CleanWorksheet.h"
#import "KZPPlaygroundViewController+Internal.h"

@implementation KZPPlaygroundViewController (CleanWorksheet)

// Although making the worksheet view layer-backed would allow me to set the
// background color on the layer, I don't want to force all views shown in the
// worksheet to be layer-backed.
@interface KZWorksheetView : NSView
@end

@implementation KZWorksheetView

- (void)drawRect:(NSRect)dirtyRect
{
  [NSColor.lightGrayColor set];
  NSRectFill(dirtyRect);
}

@end

- (NSView *)cleanWorksheet
{
  [self.worksheetContainerView.subviews makeObjectsPerformSelector:@selector(removeFromSuperview)];
  NSView *worksheetView = [[NSView alloc] initWithFrame:self.worksheetContainerView.bounds];
  worksheetView.autoresizingMask = NSViewWidthSizable | NSViewHeightSizable;
  worksheetView.wantsLayer = YES;
  worksheetView.layer.backgroundColor = NSColor.lightGrayColor;
  [self.worksheetContainerView addSubview:worksheetView];
  return worksheetView;
}

@end
