//
//  Copyright (c) 2017 Open Whisper Systems. All rights reserved.
//

#import "OWSViewController.h"

NS_ASSUME_NONNULL_BEGIN

@class ConversationViewItem;
@class SignalAttachment;
@class TSAttachmentStream;

@interface FullImageViewController : OWSViewController

// If viewItem is non-null, long press will show a menu controller.
- (instancetype)initWithAttachmentStream:(TSAttachmentStream *)attachmentStream
                                fromRect:(CGRect)rect
                                viewItem:(ConversationViewItem *_Nullable)viewItem;

- (instancetype)initWithAttachment:(SignalAttachment *)attachment fromRect:(CGRect)rect;

- (void)presentFromViewController:(UIViewController *)viewController;

@end

NS_ASSUME_NONNULL_END
