.class public Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;
.super Ljava/lang/Object;
.source "BrowserAccessibilityManager.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "content"
.end annotation


# static fields
.field private static final ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE:Ljava/lang/String; = "ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE"

.field private static final ACTION_SET_TEXT:I = 0x200000

.field private static final TAG:Ljava/lang/String; = "BrowserAccessibilityManager"

.field private static final WINDOW_CONTENT_CHANGED_DELAY_MS:I = 0x1f4


# instance fields
.field protected mAccessibilityFocusId:I

.field private mAccessibilityFocusRect:Landroid/graphics/Rect;

.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mAccessibilityNodeProvider:Landroid/view/accessibility/AccessibilityNodeProvider;

.field private mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

.field protected mCurrentRootId:I

.field private mIsHovering:Z

.field private mLastHoverId:I

.field private mNativeObj:J

.field private mNotifyFrameInfoInitializedCalled:Z

.field private mPendingScrollToMakeNodeVisible:Z

.field private final mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

.field private mSelectionEndIndex:I

.field private mSelectionGranularity:I

.field private mSelectionStartIndex:I

.field private mSendWindowContentChangedRunnable:Ljava/lang/Runnable;

.field private final mTempLocation:[I

.field private mUserHasTouchExplored:Z

.field private final mView:Landroid/view/ViewGroup;


# direct methods
.method protected constructor <init>(JLorg/chromium/content/browser/ContentViewCore;)V
    .locals 3
    .param p1, "nativeBrowserAccessibilityManagerAndroid"    # J
    .param p3, "contentViewCore"    # Lorg/chromium/content/browser/ContentViewCore;

    .prologue
    const/4 v2, -0x1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mLastHoverId:I

    .line 55
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mTempLocation:[I

    .line 90
    iput-wide p1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    .line 91
    iput-object p3, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    .line 92
    iput v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    .line 93
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mIsHovering:Z

    .line 94
    iput v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mCurrentRootId:I

    .line 95
    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    .line 96
    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinates;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    .line 97
    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 101
    move-object v0, p0

    .line 102
    .local v0, "delegate":Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;
    new-instance v1, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager$1;

    invoke-direct {v1, p0, v0}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager$1;-><init>(Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;)V

    iput-object v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityNodeProvider:Landroid/view/accessibility/AccessibilityNodeProvider;

    .line 121
    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1, p0}, Lorg/chromium/content/browser/ContentViewCore;->setBrowserAccessibilityManager(Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;)V

    .line 122
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->sendWindowContentChangedOnView()V

    return-void
.end method

.method private addAccessibilityNodeInfoChild(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    .locals 1
    .param p1, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "childId"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 753
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 754
    return-void
.end method

.method private announceLiveRegionText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 743
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 744
    return-void
.end method

.method private buildAccessibilityEvent(II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 8
    .param p1, "virtualViewId"    # I
    .param p2, "eventType"    # I

    .prologue
    const/4 v0, 0x0

    .line 569
    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->isFrameInfoInitialized()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    move-object v4, v0

    .line 587
    :cond_1
    :goto_0
    return-object v4

    .line 578
    :cond_2
    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->postInvalidate()V

    .line 580
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v4

    .line 581
    .local v4, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 582
    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 583
    iget-wide v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    move-object v1, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativePopulateAccessibilityEvent(JLandroid/view/accessibility/AccessibilityEvent;II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 584
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    move-object v4, v0

    .line 585
    goto :goto_0
.end method

.method private static create(JLorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;
    .locals 2
    .param p0, "nativeBrowserAccessibilityManagerAndroid"    # J
    .param p2, "contentViewCore"    # Lorg/chromium/content/browser/ContentViewCore;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 76
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 77
    new-instance v0, Lorg/chromium/content/browser/accessibility/LollipopBrowserAccessibilityManager;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/content/browser/accessibility/LollipopBrowserAccessibilityManager;-><init>(JLorg/chromium/content/browser/ContentViewCore;)V

    .line 83
    :goto_0
    return-object v0

    .line 79
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 80
    new-instance v0, Lorg/chromium/content/browser/accessibility/KitKatBrowserAccessibilityManager;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/content/browser/accessibility/KitKatBrowserAccessibilityManager;-><init>(JLorg/chromium/content/browser/ContentViewCore;)V

    goto :goto_0

    .line 83
    :cond_1
    new-instance v0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;-><init>(JLorg/chromium/content/browser/ContentViewCore;)V

    goto :goto_0
.end method

.method private createNodeForHost(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 5
    .param p1, "rootId"    # I

    .prologue
    .line 602
    iget-object v4, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 603
    .local v2, "result":Landroid/view/accessibility/AccessibilityNodeInfo;
    iget-object v4, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    .line 604
    .local v3, "source":Landroid/view/accessibility/AccessibilityNodeInfo;
    iget-object v4, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 607
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 608
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {v3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 609
    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 610
    invoke-virtual {v3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 611
    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 614
    iget-object v4, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v0

    .line 615
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v4, v0, Landroid/view/View;

    if-eqz v4, :cond_0

    .line 616
    check-cast v0, Landroid/view/View;

    .end local v0    # "parent":Landroid/view/ViewParent;
    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 620
    :cond_0
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 621
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 622
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 623
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 626
    invoke-direct {p0}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->isFrameInfoInitialized()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 627
    iget-object v4, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 630
    :cond_1
    return-object v2
.end method

.method private finishGranularityMove(Ljava/lang/String;ZIIZ)V
    .locals 8
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "extendSelection"    # Z
    .param p3, "itemStartIndex"    # I
    .param p4, "itemEndIndex"    # I
    .param p5, "forwards"    # Z
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 409
    iget-wide v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 461
    :cond_0
    :goto_0
    return-void

    .line 412
    :cond_1
    iget v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    const/16 v2, 0x2000

    invoke-direct {p0, v1, v2}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->buildAccessibilityEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 414
    .local v0, "selectionEvent":Landroid/view/accessibility/AccessibilityEvent;
    if-eqz v0, :cond_0

    .line 415
    iget v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    const/high16 v2, 0x20000

    invoke-direct {p0, v1, v2}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->buildAccessibilityEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v7

    .line 417
    .local v7, "traverseEvent":Landroid/view/accessibility/AccessibilityEvent;
    if-nez v7, :cond_2

    .line 418
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    goto :goto_0

    .line 424
    :cond_2
    if-eqz p5, :cond_5

    .line 425
    iput p4, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionEndIndex:I

    .line 429
    :goto_1
    if-nez p2, :cond_3

    .line 430
    iget v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionEndIndex:I

    iput v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionStartIndex:I

    .line 432
    :cond_3
    iget-wide v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    iget v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    invoke-direct {p0, v2, v3, v1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeIsEditableText(JI)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 433
    iget-wide v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    iget v4, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    iget v5, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionStartIndex:I

    iget v6, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionEndIndex:I

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeSetSelection(JIII)V

    .line 439
    :cond_4
    iget v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionStartIndex:I

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 440
    iget v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionStartIndex:I

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 441
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 445
    invoke-virtual {v7, p3}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 446
    invoke-virtual {v7, p4}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 447
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 448
    iget v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionGranularity:I

    invoke-virtual {v7, v1}, Landroid/view/accessibility/AccessibilityEvent;->setMovementGranularity(I)V

    .line 449
    invoke-virtual {v7, p1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 452
    if-eqz p5, :cond_6

    .line 453
    const/16 v1, 0x100

    invoke-virtual {v7, v1}, Landroid/view/accessibility/AccessibilityEvent;->setAction(I)V

    .line 459
    :goto_2
    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 460
    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v7}, Landroid/view/ViewGroup;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    goto :goto_0

    .line 427
    :cond_5
    iput p3, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionEndIndex:I

    goto :goto_1

    .line 455
    :cond_6
    const/16 v1, 0x200

    invoke-virtual {v7, v1}, Landroid/view/accessibility/AccessibilityEvent;->setAction(I)V

    goto :goto_2
.end method

.method private getOrCreateBundleForAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Landroid/os/Bundle;
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 591
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getParcelableData()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 592
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 593
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "bundle":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 594
    .restart local v0    # "bundle":Landroid/os/Bundle;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setParcelableData(Landroid/os/Parcelable;)V

    .line 596
    :cond_0
    return-object v0
.end method

.method private handleCheckStateChanged(I)V
    .locals 4
    .param p1, "id"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 665
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 667
    :goto_0
    return-void

    .line 666
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->sendAccessibilityEvent(II)V

    goto :goto_0
.end method

.method private handleClicked(I)V
    .locals 4
    .param p1, "id"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 671
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 673
    :goto_0
    return-void

    .line 672
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->sendAccessibilityEvent(II)V

    goto :goto_0
.end method

.method private handleContentChanged(I)V
    .locals 6
    .param p1, "id"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 695
    iget-wide v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 703
    :goto_0
    return-void

    .line 696
    :cond_0
    iget-wide v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    invoke-direct {p0, v2, v3}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeGetRootId(J)I

    move-result v0

    .line 697
    .local v0, "rootId":I
    iget v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mCurrentRootId:I

    if-eq v0, v1, :cond_1

    .line 698
    iput v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mCurrentRootId:I

    .line 699
    invoke-direct {p0}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->sendWindowContentChangedOnView()V

    goto :goto_0

    .line 701
    :cond_1
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->sendWindowContentChangedOnVirtualView(I)V

    goto :goto_0
.end method

.method private handleEditableTextChanged(I)V
    .locals 4
    .param p1, "id"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 683
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 685
    :goto_0
    return-void

    .line 684
    :cond_0
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->sendAccessibilityEvent(II)V

    goto :goto_0
.end method

.method private handleFocusChanged(I)V
    .locals 4
    .param p1, "id"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 658
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 661
    :goto_0
    return-void

    .line 659
    :cond_0
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->sendAccessibilityEvent(II)V

    .line 660
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->moveAccessibilityFocusToId(I)Z

    goto :goto_0
.end method

.method private handleHover(I)V
    .locals 4
    .param p1, "id"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 729
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 739
    :cond_0
    :goto_0
    return-void

    .line 730
    :cond_1
    iget v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mLastHoverId:I

    if-eq v0, p1, :cond_0

    .line 731
    iget-boolean v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mIsHovering:Z

    if-eqz v0, :cond_0

    .line 734
    const/16 v0, 0x80

    invoke-direct {p0, p1, v0}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->sendAccessibilityEvent(II)V

    .line 735
    iget v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mLastHoverId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 736
    iget v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mLastHoverId:I

    const/16 v1, 0x100

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->sendAccessibilityEvent(II)V

    .line 738
    :cond_2
    iput p1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mLastHoverId:I

    goto :goto_0
.end method

.method private handleNavigate()V
    .locals 4
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 707
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 713
    :goto_0
    return-void

    .line 708
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    .line 709
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusRect:Landroid/graphics/Rect;

    .line 710
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mUserHasTouchExplored:Z

    .line 712
    invoke-direct {p0}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->sendWindowContentChangedOnView()V

    goto :goto_0
.end method

.method private handlePageLoaded(I)V
    .locals 4
    .param p1, "id"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 648
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 654
    :cond_0
    :goto_0
    return-void

    .line 649
    :cond_1
    iget-boolean v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mUserHasTouchExplored:Z

    if-nez v0, :cond_0

    .line 651
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->shouldSetAccessibilityFocusOnPageLoad()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 652
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->moveAccessibilityFocusToIdAndRefocusIfNeeded(I)V

    goto :goto_0
.end method

.method private handleScrollPositionChanged(I)V
    .locals 4
    .param p1, "id"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 717
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 719
    :goto_0
    return-void

    .line 718
    :cond_0
    const/16 v0, 0x1000

    invoke-direct {p0, p1, v0}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->sendAccessibilityEvent(II)V

    goto :goto_0
.end method

.method private handleScrolledToAnchor(I)V
    .locals 4
    .param p1, "id"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 723
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 725
    :goto_0
    return-void

    .line 724
    :cond_0
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->moveAccessibilityFocusToId(I)Z

    goto :goto_0
.end method

.method private handleSliderChanged(I)V
    .locals 4
    .param p1, "id"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 689
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 691
    :goto_0
    return-void

    .line 690
    :cond_0
    const/16 v0, 0x1000

    invoke-direct {p0, p1, v0}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->sendAccessibilityEvent(II)V

    goto :goto_0
.end method

.method private handleTextSelectionChanged(I)V
    .locals 4
    .param p1, "id"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 677
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 679
    :goto_0
    return-void

    .line 678
    :cond_0
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->sendAccessibilityEvent(II)V

    goto :goto_0
.end method

.method private isFrameInfoInitialized()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 642
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getContentWidthCss()F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getContentHeightCss()F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isValidMovementGranularity(I)Z
    .locals 1
    .param p0, "granularity"    # I

    .prologue
    .line 188
    packed-switch p0, :pswitch_data_0

    .line 194
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 192
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 188
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private jumpToElementType(Ljava/lang/String;Z)Z
    .locals 7
    .param p1, "elementType"    # Ljava/lang/String;
    .param p2, "forwards"    # Z

    .prologue
    .line 369
    iget-wide v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    iget v4, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    move-object v1, p0

    move-object v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeFindElementType(JILjava/lang/String;Z)I

    move-result v0

    .line 370
    .local v0, "id":I
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 375
    :goto_0
    return v1

    .line 372
    :cond_0
    invoke-direct {p0, v0}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->moveAccessibilityFocusToId(I)Z

    .line 373
    iget-wide v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    iget v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    invoke-direct {p0, v2, v3, v1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeScrollToMakeNodeVisible(JI)V

    .line 375
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private moveAccessibilityFocusToId(I)Z
    .locals 3
    .param p1, "newAccessibilityFocusId"    # I

    .prologue
    const/4 v0, 0x0

    .line 480
    iget v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    if-ne p1, v1, :cond_0

    .line 500
    :goto_0
    return v0

    .line 482
    :cond_0
    iput p1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    .line 483
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusRect:Landroid/graphics/Rect;

    .line 484
    iput v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionGranularity:I

    .line 485
    iput v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionStartIndex:I

    .line 486
    iput v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionEndIndex:I

    .line 492
    iget v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    iget v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mCurrentRootId:I

    if-ne v0, v1, :cond_1

    .line 493
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    const/4 v2, -0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeSetAccessibilityFocus(JI)V

    .line 498
    :goto_1
    iget v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    const v1, 0x8000

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->sendAccessibilityEvent(II)V

    .line 500
    const/4 v0, 0x1

    goto :goto_0

    .line 495
    :cond_1
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    iget v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    invoke-direct {p0, v0, v1, v2}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeSetAccessibilityFocus(JI)V

    goto :goto_1
.end method

.method private moveAccessibilityFocusToIdAndRefocusIfNeeded(I)V
    .locals 1
    .param p1, "newAccessibilityFocusId"    # I

    .prologue
    .line 507
    iget v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    if-ne p1, v0, :cond_0

    .line 508
    const/high16 v0, 0x10000

    invoke-direct {p0, p1, v0}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->sendAccessibilityEvent(II)V

    .line 510
    const/4 v0, -0x1

    iput v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    .line 513
    :cond_0
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->moveAccessibilityFocusToId(I)Z

    .line 514
    return-void
.end method

.method private native nativeAdjustSlider(JIZ)Z
.end method

.method private native nativeBlur(J)V
.end method

.method private native nativeClick(JI)V
.end method

.method private native nativeFindElementType(JILjava/lang/String;Z)I
.end method

.method private native nativeFocus(JI)V
.end method

.method private native nativeGetEditableTextSelectionEnd(JI)I
.end method

.method private native nativeGetEditableTextSelectionStart(JI)I
.end method

.method private native nativeGetRootId(J)I
.end method

.method private native nativeHitTest(JII)V
.end method

.method private native nativeIsEditableText(JI)Z
.end method

.method private native nativeIsNodeValid(JI)Z
.end method

.method private native nativeIsSlider(JI)Z
.end method

.method private native nativeNextAtGranularity(JIZII)Z
.end method

.method private native nativePopulateAccessibilityEvent(JLandroid/view/accessibility/AccessibilityEvent;II)Z
.end method

.method private native nativePopulateAccessibilityNodeInfo(JLandroid/view/accessibility/AccessibilityNodeInfo;I)Z
.end method

.method private native nativePreviousAtGranularity(JIZII)Z
.end method

.method private native nativeScroll(JII)Z
.end method

.method private native nativeScrollToMakeNodeVisible(JI)V
.end method

.method private native nativeSetAccessibilityFocus(JI)V
.end method

.method private native nativeSetSelection(JIII)V
.end method

.method private native nativeSetTextFieldValue(JILjava/lang/String;)V
.end method

.method private nextAtGranularity(IZ)Z
    .locals 8
    .param p1, "granularity"    # I
    .param p2, "extendSelection"    # Z

    .prologue
    .line 393
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->setGranularityAndUpdateSelection(I)V

    .line 395
    iget-wide v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    iget v4, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionGranularity:I

    iget v6, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    iget v7, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionEndIndex:I

    move-object v1, p0

    move v5, p2

    invoke-direct/range {v1 .. v7}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeNextAtGranularity(JIZII)Z

    move-result v0

    return v0
.end method

.method private onNativeObjectDestroyed(J)V
    .locals 3
    .param p1, "nativeBrowserAccessibilityManagerAndroid"    # J
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 128
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 136
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getBrowserAccessibilityManager()Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;

    move-result-object v0

    if-ne v0, p0, :cond_1

    .line 132
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, v2}, Lorg/chromium/content/browser/ContentViewCore;->setBrowserAccessibilityManager(Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;)V

    .line 134
    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    .line 135
    iput-object v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    goto :goto_0
.end method

.method private previousAtGranularity(IZ)Z
    .locals 8
    .param p1, "granularity"    # I
    .param p2, "extendSelection"    # Z

    .prologue
    .line 400
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->setGranularityAndUpdateSelection(I)V

    .line 402
    iget-wide v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    iget v4, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionGranularity:I

    iget v6, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    iget v7, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionEndIndex:I

    move-object v1, p0

    move v5, p2

    invoke-direct/range {v1 .. v7}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativePreviousAtGranularity(JIZII)Z

    move-result v0

    return v0
.end method

.method private scrollBackward(I)Z
    .locals 3
    .param p1, "virtualViewId"    # I

    .prologue
    .line 472
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeIsSlider(JI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeAdjustSlider(JIZ)Z

    move-result v0

    .line 475
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, p1, v2}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeScroll(JII)Z

    move-result v0

    goto :goto_0
.end method

.method private scrollForward(I)Z
    .locals 3
    .param p1, "virtualViewId"    # I

    .prologue
    .line 464
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeIsSlider(JI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, p1, v2}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeAdjustSlider(JIZ)Z

    move-result v0

    .line 467
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeScroll(JII)Z

    move-result v0

    goto :goto_0
.end method

.method private sendAccessibilityEvent(II)V
    .locals 3
    .param p1, "virtualViewId"    # I
    .param p2, "eventType"    # I

    .prologue
    .line 554
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 555
    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 563
    :cond_0
    :goto_0
    return-void

    .line 559
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->buildAccessibilityEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 560
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    if-eqz v0, :cond_0

    .line 561
    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    goto :goto_0
.end method

.method private sendDelayedWindowContentChangedEvent()V
    .locals 4
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 522
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 534
    :cond_0
    :goto_0
    return-void

    .line 524
    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSendWindowContentChangedRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 526
    new-instance v0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager$2;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager$2;-><init>(Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;)V

    iput-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSendWindowContentChangedRunnable:Ljava/lang/Runnable;

    .line 533
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSendWindowContentChangedRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private sendWindowContentChangedOnView()V
    .locals 4

    .prologue
    .line 538
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 545
    :cond_0
    :goto_0
    return-void

    .line 540
    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSendWindowContentChangedRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 541
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSendWindowContentChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 542
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSendWindowContentChangedRunnable:Ljava/lang/Runnable;

    .line 544
    :cond_2
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method private sendWindowContentChangedOnVirtualView(I)V
    .locals 1
    .param p1, "virtualViewId"    # I

    .prologue
    .line 548
    const/16 v0, 0x800

    invoke-direct {p0, p1, v0}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->sendAccessibilityEvent(II)V

    .line 549
    return-void
.end method

.method private setAccessibilityEventBooleanAttributes(Landroid/view/accessibility/AccessibilityEvent;ZZZZ)V
    .locals 0
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "checked"    # Z
    .param p3, "enabled"    # Z
    .param p4, "password"    # Z
    .param p5, "scrollable"    # Z
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 960
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    .line 961
    invoke-virtual {p1, p3}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 962
    invoke-virtual {p1, p4}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    .line 963
    invoke-virtual {p1, p5}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 964
    return-void
.end method

.method private setAccessibilityEventClassName(Landroid/view/accessibility/AccessibilityEvent;Ljava/lang/String;)V
    .locals 0
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "className"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 968
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 969
    return-void
.end method

.method private setAccessibilityEventListAttributes(Landroid/view/accessibility/AccessibilityEvent;II)V
    .locals 0
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "currentItemIndex"    # I
    .param p3, "itemCount"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 974
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 975
    invoke-virtual {p1, p3}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 976
    return-void
.end method

.method private setAccessibilityEventScrollAttributes(Landroid/view/accessibility/AccessibilityEvent;IIII)V
    .locals 0
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "scrollX"    # I
    .param p3, "scrollY"    # I
    .param p4, "maxScrollX"    # I
    .param p5, "maxScrollY"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 981
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    .line 982
    invoke-virtual {p1, p3}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 983
    invoke-virtual {p1, p4}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    .line 984
    invoke-virtual {p1, p5}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 985
    return-void
.end method

.method private setAccessibilityEventSelectionAttrs(Landroid/view/accessibility/AccessibilityEvent;IIILjava/lang/String;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "fromIndex"    # I
    .param p3, "toIndex"    # I
    .param p4, "itemCount"    # I
    .param p5, "text"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 1000
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 1001
    invoke-virtual {p1, p3}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 1002
    invoke-virtual {p1, p4}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 1003
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1004
    return-void
.end method

.method private setAccessibilityEventTextChangedAttrs(Landroid/view/accessibility/AccessibilityEvent;IIILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "fromIndex"    # I
    .param p3, "addedCount"    # I
    .param p4, "removedCount"    # I
    .param p5, "beforeText"    # Ljava/lang/String;
    .param p6, "text"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 990
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 991
    invoke-virtual {p1, p3}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    .line 992
    invoke-virtual {p1, p4}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    .line 993
    invoke-virtual {p1, p5}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 994
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 995
    return-void
.end method

.method private setAccessibilityNodeInfoBooleanAttributes(Landroid/view/accessibility/AccessibilityNodeInfo;IZZZZZZZZZZ)V
    .locals 1
    .param p1, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "virtualViewId"    # I
    .param p3, "checkable"    # Z
    .param p4, "checked"    # Z
    .param p5, "clickable"    # Z
    .param p6, "enabled"    # Z
    .param p7, "focusable"    # Z
    .param p8, "focused"    # Z
    .param p9, "password"    # Z
    .param p10, "scrollable"    # Z
    .param p11, "selected"    # Z
    .param p12, "visibleToUser"    # Z
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 762
    invoke-virtual {p1, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 763
    invoke-virtual {p1, p4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 764
    invoke-virtual {p1, p5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 765
    invoke-virtual {p1, p6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 766
    invoke-virtual {p1, p7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    .line 767
    invoke-virtual {p1, p8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocused(Z)V

    .line 768
    invoke-virtual {p1, p9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPassword(Z)V

    .line 769
    invoke-virtual {p1, p10}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 770
    invoke-virtual {p1, p11}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 771
    invoke-virtual {p1, p12}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 773
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMovementGranularities(I)V

    .line 778
    iget v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    if-ne v0, p2, :cond_0

    .line 779
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 783
    :goto_0
    return-void

    .line 781
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    goto :goto_0
.end method

.method private setAccessibilityNodeInfoClassName(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "className"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 836
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 837
    return-void
.end method

.method private setAccessibilityNodeInfoLocation(Landroid/view/accessibility/AccessibilityNodeInfo;IIIIIIIZ)V
    .locals 7
    .param p1, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "virtualViewId"    # I
    .param p3, "absoluteLeft"    # I
    .param p4, "absoluteTop"    # I
    .param p5, "parentRelativeLeft"    # I
    .param p6, "parentRelativeTop"    # I
    .param p7, "width"    # I
    .param p8, "height"    # I
    .param p9, "isRootNode"    # Z
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 863
    new-instance v0, Landroid/graphics/Rect;

    add-int v5, p5, p7

    add-int v6, p6, p8

    invoke-direct {v0, p5, p6, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 865
    .local v0, "boundsInParent":Landroid/graphics/Rect;
    if-eqz p9, :cond_0

    .line 867
    const/4 v5, 0x0

    iget-object v6, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v6}, Lorg/chromium/content/browser/RenderCoordinates;->getContentOffsetYPix()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 869
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 872
    new-instance v1, Landroid/graphics/Rect;

    add-int v5, p3, p7

    add-int v6, p4, p8

    invoke-direct {v1, p3, p4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 875
    .local v1, "rect":Landroid/graphics/Rect;
    iget-object v5, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v5}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollX()F

    move-result v5

    float-to-int v5, v5

    neg-int v5, v5

    iget-object v6, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v6}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollY()F

    move-result v6

    float-to-int v6, v6

    neg-int v6, v6

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 879
    iget-object v5, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    iget v6, v1, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Lorg/chromium/content/browser/RenderCoordinates;->fromLocalCssToPix(F)F

    move-result v5

    float-to-int v5, v5

    iput v5, v1, Landroid/graphics/Rect;->left:I

    .line 880
    iget-object v5, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    iget v6, v1, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Lorg/chromium/content/browser/RenderCoordinates;->fromLocalCssToPix(F)F

    move-result v5

    float-to-int v5, v5

    iput v5, v1, Landroid/graphics/Rect;->top:I

    .line 881
    iget-object v5, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Lorg/chromium/content/browser/RenderCoordinates;->fromLocalCssToPix(F)F

    move-result v5

    float-to-int v5, v5

    iput v5, v1, Landroid/graphics/Rect;->bottom:I

    .line 882
    iget-object v5, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    iget v6, v1, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Lorg/chromium/content/browser/RenderCoordinates;->fromLocalCssToPix(F)F

    move-result v5

    float-to-int v5, v5

    iput v5, v1, Landroid/graphics/Rect;->right:I

    .line 885
    const/4 v5, 0x0

    iget-object v6, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v6}, Lorg/chromium/content/browser/RenderCoordinates;->getContentOffsetYPix()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 889
    const/4 v5, 0x2

    new-array v2, v5, [I

    .line 890
    .local v2, "viewLocation":[I
    iget-object v5, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 891
    const/4 v5, 0x0

    aget v5, v2, v5

    const/4 v6, 0x1

    aget v6, v2, v6

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 894
    const/4 v5, 0x1

    aget v5, v2, v5

    iget-object v6, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v6}, Lorg/chromium/content/browser/RenderCoordinates;->getContentOffsetYPix()F

    move-result v6

    float-to-int v6, v6

    add-int v4, v5, v6

    .line 895
    .local v4, "viewportRectTop":I
    iget-object v5, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v5}, Lorg/chromium/content/browser/ContentViewCore;->getViewportHeightPix()I

    move-result v5

    add-int v3, v4, v5

    .line 896
    .local v3, "viewportRectBottom":I
    iget v5, v1, Landroid/graphics/Rect;->top:I

    if-ge v5, v4, :cond_1

    iput v4, v1, Landroid/graphics/Rect;->top:I

    .line 897
    :cond_1
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    if-le v5, v3, :cond_2

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 899
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 906
    iget v5, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    if-ne p2, v5, :cond_3

    iget v5, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mCurrentRootId:I

    if-eq p2, v5, :cond_3

    .line 907
    iget-object v5, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusRect:Landroid/graphics/Rect;

    if-nez v5, :cond_4

    .line 908
    iput-object v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusRect:Landroid/graphics/Rect;

    .line 914
    :cond_3
    :goto_0
    return-void

    .line 909
    :cond_4
    iget-object v5, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 910
    iput-object v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusRect:Landroid/graphics/Rect;

    .line 911
    invoke-direct {p0, p2}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->moveAccessibilityFocusToIdAndRefocusIfNeeded(I)V

    goto :goto_0
.end method

.method private setAccessibilityNodeInfoParent(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    .locals 1
    .param p1, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "parentId"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 748
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;I)V

    .line 749
    return-void
.end method

.method private setAccessibilityNodeInfoText(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;ZZ)V
    .locals 5
    .param p1, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "annotateAsLink"    # Z
    .param p4, "isEditableText"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 844
    move-object v0, p2

    .line 845
    .local v0, "charSequence":Ljava/lang/CharSequence;
    if-eqz p3, :cond_0

    .line 846
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 847
    .local v1, "spannable":Landroid/text/SpannableString;
    new-instance v2, Landroid/text/style/URLSpan;

    const-string v3, ""

    invoke-direct {v2, v3}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v3

    invoke-virtual {v1, v2, v4, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 848
    move-object v0, v1

    .line 850
    .end local v1    # "spannable":Landroid/text/SpannableString;
    :cond_0
    if-eqz p4, :cond_1

    .line 851
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 855
    :goto_0
    return-void

    .line 853
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setGranularityAndUpdateSelection(I)V
    .locals 3
    .param p1, "granularity"    # I

    .prologue
    const/4 v1, -0x1

    .line 379
    iget v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionGranularity:I

    if-nez v0, :cond_0

    .line 380
    iput v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionStartIndex:I

    .line 381
    iput v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionEndIndex:I

    .line 383
    :cond_0
    iput p1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionGranularity:I

    .line 384
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    iget v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    invoke-direct {p0, v0, v1, v2}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeIsEditableText(JI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 385
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    iget v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    invoke-direct {p0, v0, v1, v2}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeGetEditableTextSelectionStart(JI)I

    move-result v0

    iput v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionStartIndex:I

    .line 387
    iget-wide v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    iget v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    invoke-direct {p0, v0, v1, v2}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeGetEditableTextSelectionEnd(JI)I

    move-result v0

    iput v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionEndIndex:I

    .line 390
    :cond_1
    return-void
.end method


# virtual methods
.method protected addAccessibilityNodeInfoActions(Landroid/view/accessibility/AccessibilityNodeInfo;IZZZZZZZZZZZ)V
    .locals 1
    .param p1, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "virtualViewId"    # I
    .param p3, "canScrollForward"    # Z
    .param p4, "canScrollBackward"    # Z
    .param p5, "canScrollUp"    # Z
    .param p6, "canScrollDown"    # Z
    .param p7, "canScrollLeft"    # Z
    .param p8, "canScrollRight"    # Z
    .param p9, "clickable"    # Z
    .param p10, "editableText"    # Z
    .param p11, "enabled"    # Z
    .param p12, "focusable"    # Z
    .param p13, "focused"    # Z
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 793
    const/16 v0, 0x400

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 794
    const/16 v0, 0x800

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 795
    const/16 v0, 0x100

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 796
    const/16 v0, 0x200

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 798
    if-eqz p10, :cond_0

    if-eqz p11, :cond_0

    .line 799
    const/high16 v0, 0x200000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 800
    const/high16 v0, 0x20000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 803
    :cond_0
    if-eqz p3, :cond_1

    .line 804
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 807
    :cond_1
    if-eqz p4, :cond_2

    .line 808
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 814
    :cond_2
    if-eqz p12, :cond_3

    .line 815
    if-eqz p13, :cond_5

    .line 816
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 822
    :cond_3
    :goto_0
    iget v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    if-ne v0, p2, :cond_6

    .line 823
    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 828
    :goto_1
    if-eqz p9, :cond_4

    .line 829
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 831
    :cond_4
    return-void

    .line 818
    :cond_5
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_0

    .line 825
    :cond_6
    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_1
.end method

.method protected createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 8
    .param p1, "virtualViewId"    # I

    .prologue
    const/4 v2, 0x0

    .line 149
    iget-object v3, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-wide v4, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    :cond_0
    move-object v0, v2

    .line 175
    :cond_1
    :goto_0
    return-object v0

    .line 153
    :cond_2
    iget-wide v4, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    invoke-direct {p0, v4, v5}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeGetRootId(J)I

    move-result v1

    .line 155
    .local v1, "rootId":I
    const/4 v3, -0x1

    if-ne p1, v3, :cond_3

    .line 156
    invoke-direct {p0, v1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->createNodeForHost(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    goto :goto_0

    .line 159
    :cond_3
    invoke-direct {p0}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->isFrameInfoInitialized()Z

    move-result v3

    if-nez v3, :cond_4

    move-object v0, v2

    .line 160
    goto :goto_0

    .line 163
    :cond_4
    iget-object v3, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 164
    .local v0, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    iget-object v3, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v3}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v3, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 167
    if-ne p1, v1, :cond_5

    .line 168
    iget-object v3, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 171
    :cond_5
    iget-wide v4, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    invoke-direct {p0, v4, v5, v0, p1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativePopulateAccessibilityNodeInfo(JLandroid/view/accessibility/AccessibilityNodeInfo;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 174
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    move-object v0, v2

    .line 175
    goto :goto_0
.end method

.method protected findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "virtualViewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityNodeProvider:Landroid/view/accessibility/AccessibilityNodeProvider;

    return-object v0
.end method

.method protected native nativeGetSupportedHtmlElementTypes(J)Ljava/lang/String;
.end method

.method public notifyFrameInfoInitialized()V
    .locals 2

    .prologue
    .line 353
    iget-boolean v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNotifyFrameInfoInitializedCalled:Z

    if-eqz v0, :cond_1

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNotifyFrameInfoInitializedCalled:Z

    .line 359
    invoke-direct {p0}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->sendWindowContentChangedOnView()V

    .line 363
    iget v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 364
    iget v0, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->moveAccessibilityFocusToIdAndRefocusIfNeeded(I)V

    goto :goto_0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 314
    iget-object v6, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-wide v6, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    :cond_0
    move v4, v5

    .line 344
    :goto_0
    return v4

    .line 318
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/16 v7, 0xa

    if-ne v6, v7, :cond_4

    .line 319
    iput-boolean v5, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mIsHovering:Z

    .line 320
    iget v6, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mLastHoverId:I

    if-eq v6, v10, :cond_2

    .line 321
    iget v6, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mLastHoverId:I

    const/16 v7, 0x100

    invoke-direct {p0, v6, v7}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->sendAccessibilityEvent(II)V

    .line 322
    iput v10, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mLastHoverId:I

    .line 324
    :cond_2
    iget-boolean v6, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mPendingScrollToMakeNodeVisible:Z

    if-eqz v6, :cond_3

    .line 325
    iget-wide v6, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    iget v8, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    invoke-direct {p0, v6, v7, v8}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeScrollToMakeNodeVisible(JI)V

    .line 328
    :cond_3
    iput-boolean v5, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mPendingScrollToMakeNodeVisible:Z

    goto :goto_0

    .line 332
    :cond_4
    iput-boolean v4, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mIsHovering:Z

    .line 333
    iput-boolean v4, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mUserHasTouchExplored:Z

    .line 334
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 335
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 338
    .local v3, "y":F
    iget-object v5, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v5, v2}, Lorg/chromium/content/browser/RenderCoordinates;->fromPixToLocalCss(F)F

    move-result v5

    float-to-int v0, v5

    .line 339
    .local v0, "cssX":I
    iget-object v5, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v5, v3}, Lorg/chromium/content/browser/RenderCoordinates;->fromPixToLocalCss(F)F

    move-result v5

    float-to-int v1, v5

    .line 343
    .local v1, "cssY":I
    iget-wide v6, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    invoke-direct {p0, v6, v7, v0, v1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeHitTest(JII)V

    goto :goto_0
.end method

.method protected performAction(IILandroid/os/Bundle;)Z
    .locals 12
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 203
    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    const-wide/16 v10, 0x0

    cmp-long v1, v2, v10

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    invoke-direct {p0, v2, v3, p1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeIsNodeValid(JI)Z

    move-result v1

    if-nez v1, :cond_1

    .line 205
    :cond_0
    const/4 v1, 0x0

    .line 307
    :goto_0
    return v1

    .line 208
    :cond_1
    sparse-switch p2, :sswitch_data_0

    .line 307
    const/4 v1, 0x0

    goto :goto_0

    .line 210
    :sswitch_0
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->moveAccessibilityFocusToId(I)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    .line 212
    :cond_2
    iget-boolean v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mIsHovering:Z

    if-nez v1, :cond_3

    .line 213
    iget-wide v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    iget v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    invoke-direct {p0, v2, v3, v1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeScrollToMakeNodeVisible(JI)V

    .line 218
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 216
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mPendingScrollToMakeNodeVisible:Z

    goto :goto_1

    .line 222
    :sswitch_1
    const/high16 v1, 0x10000

    invoke-direct {p0, p1, v1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->sendAccessibilityEvent(II)V

    .line 224
    iget v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    if-ne v1, p1, :cond_4

    .line 225
    const/4 v1, -0x1

    iput v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    .line 226
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusRect:Landroid/graphics/Rect;

    .line 228
    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    .line 230
    :sswitch_2
    iget-wide v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    invoke-direct {p0, v2, v3, p1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeClick(JI)V

    .line 231
    const/4 v1, 0x1

    goto :goto_0

    .line 233
    :sswitch_3
    iget-wide v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    invoke-direct {p0, v2, v3, p1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeFocus(JI)V

    .line 234
    const/4 v1, 0x1

    goto :goto_0

    .line 236
    :sswitch_4
    iget-wide v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    invoke-direct {p0, v2, v3}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeBlur(J)V

    .line 237
    const/4 v1, 0x1

    goto :goto_0

    .line 239
    :sswitch_5
    if-nez p3, :cond_5

    const/4 v1, 0x0

    goto :goto_0

    .line 240
    :cond_5
    const-string v1, "ACTION_ARGUMENT_HTML_ELEMENT_STRING"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "elementType":Ljava/lang/String;
    if-nez v0, :cond_6

    const/4 v1, 0x0

    goto :goto_0

    .line 243
    :cond_6
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 244
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->jumpToElementType(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0

    .line 247
    .end local v0    # "elementType":Ljava/lang/String;
    :sswitch_6
    if-nez p3, :cond_7

    const/4 v1, 0x0

    goto :goto_0

    .line 248
    :cond_7
    const-string v1, "ACTION_ARGUMENT_HTML_ELEMENT_STRING"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 250
    .restart local v0    # "elementType":Ljava/lang/String;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_0

    .line 251
    :cond_8
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 252
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->jumpToElementType(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0

    .line 255
    .end local v0    # "elementType":Ljava/lang/String;
    :sswitch_7
    iget-wide v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    invoke-direct {p0, v2, v3, p1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeIsEditableText(JI)Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v1, 0x0

    goto/16 :goto_0

    .line 256
    :cond_9
    if-nez p3, :cond_a

    const/4 v1, 0x0

    goto/16 :goto_0

    .line 257
    :cond_a
    const-string v1, "ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 259
    .local v9, "newText":Ljava/lang/String;
    if-nez v9, :cond_b

    const/4 v1, 0x0

    goto/16 :goto_0

    .line 260
    :cond_b
    iget-wide v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    invoke-direct {p0, v2, v3, p1, v9}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeSetTextFieldValue(JILjava/lang/String;)V

    .line 262
    iget-wide v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v6

    move-object v1, p0

    move v4, p1

    invoke-direct/range {v1 .. v6}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeSetSelection(JIII)V

    .line 263
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 266
    .end local v9    # "newText":Ljava/lang/String;
    :sswitch_8
    iget-wide v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    invoke-direct {p0, v2, v3, p1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeIsEditableText(JI)Z

    move-result v1

    if-nez v1, :cond_c

    const/4 v1, 0x0

    goto/16 :goto_0

    .line 267
    :cond_c
    const/4 v5, 0x0

    .line 268
    .local v5, "selectionStart":I
    const/4 v6, 0x0

    .line 269
    .local v6, "selectionEnd":I
    if-eqz p3, :cond_d

    .line 270
    const-string v1, "ACTION_ARGUMENT_SELECTION_START_INT"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 272
    const-string v1, "ACTION_ARGUMENT_SELECTION_END_INT"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 275
    :cond_d
    iget-wide v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    move-object v1, p0

    move v4, p1

    invoke-direct/range {v1 .. v6}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeSetSelection(JIII)V

    .line 276
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 279
    .end local v5    # "selectionStart":I
    .end local v6    # "selectionEnd":I
    :sswitch_9
    if-nez p3, :cond_e

    const/4 v1, 0x0

    goto/16 :goto_0

    .line 280
    :cond_e
    const-string v1, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 282
    .local v8, "granularity":I
    const-string v1, "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 284
    .local v7, "extend":Z
    invoke-static {v8}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->isValidMovementGranularity(I)Z

    move-result v1

    if-nez v1, :cond_f

    .line 285
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 287
    :cond_f
    invoke-direct {p0, v8, v7}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nextAtGranularity(IZ)Z

    move-result v1

    goto/16 :goto_0

    .line 290
    .end local v7    # "extend":Z
    .end local v8    # "granularity":I
    :sswitch_a
    if-nez p3, :cond_10

    const/4 v1, 0x0

    goto/16 :goto_0

    .line 291
    :cond_10
    const-string v1, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 293
    .restart local v8    # "granularity":I
    const-string v1, "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 295
    .restart local v7    # "extend":Z
    invoke-static {v8}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->isValidMovementGranularity(I)Z

    move-result v1

    if-nez v1, :cond_11

    .line 296
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 298
    :cond_11
    invoke-direct {p0, v8, v7}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->previousAtGranularity(IZ)Z

    move-result v1

    goto/16 :goto_0

    .line 301
    .end local v7    # "extend":Z
    .end local v8    # "granularity":I
    :sswitch_b
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->scrollForward(I)Z

    move-result v1

    goto/16 :goto_0

    .line 303
    :sswitch_c
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->scrollBackward(I)Z

    move-result v1

    goto/16 :goto_0

    .line 208
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_4
        0x10 -> :sswitch_2
        0x40 -> :sswitch_0
        0x80 -> :sswitch_1
        0x100 -> :sswitch_9
        0x200 -> :sswitch_a
        0x400 -> :sswitch_5
        0x800 -> :sswitch_6
        0x1000 -> :sswitch_b
        0x2000 -> :sswitch_c
        0x20000 -> :sswitch_8
        0x200000 -> :sswitch_7
    .end sparse-switch
.end method

.method protected setAccessibilityEventCollectionInfo(Landroid/view/accessibility/AccessibilityEvent;IIZ)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "rowCount"    # I
    .param p3, "columnCount"    # I
    .param p4, "hierarchical"    # Z
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 1028
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->getOrCreateBundleForAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Landroid/os/Bundle;

    move-result-object v0

    .line 1029
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "AccessibilityNodeInfo.CollectionInfo.rowCount"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1030
    const-string v1, "AccessibilityNodeInfo.CollectionInfo.columnCount"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1031
    const-string v1, "AccessibilityNodeInfo.CollectionInfo.hierarchical"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1032
    return-void
.end method

.method protected setAccessibilityEventCollectionItemInfo(Landroid/view/accessibility/AccessibilityEvent;IIII)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "rowIndex"    # I
    .param p3, "rowSpan"    # I
    .param p4, "columnIndex"    # I
    .param p5, "columnSpan"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 1046
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->getOrCreateBundleForAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Landroid/os/Bundle;

    move-result-object v0

    .line 1047
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "AccessibilityNodeInfo.CollectionItemInfo.rowIndex"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1048
    const-string v1, "AccessibilityNodeInfo.CollectionItemInfo.rowSpan"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1049
    const-string v1, "AccessibilityNodeInfo.CollectionItemInfo.columnIndex"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1050
    const-string v1, "AccessibilityNodeInfo.CollectionItemInfo.columnSpan"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1051
    return-void
.end method

.method protected setAccessibilityEventHeadingFlag(Landroid/view/accessibility/AccessibilityEvent;Z)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "heading"    # Z
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 1038
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->getOrCreateBundleForAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Landroid/os/Bundle;

    move-result-object v0

    .line 1039
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "AccessibilityNodeInfo.CollectionItemInfo.heading"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1040
    return-void
.end method

.method protected setAccessibilityEventLollipopAttributes(Landroid/view/accessibility/AccessibilityEvent;ZZZZII)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "canOpenPopup"    # Z
    .param p3, "contentInvalid"    # Z
    .param p4, "dismissable"    # Z
    .param p5, "multiLine"    # Z
    .param p6, "inputType"    # I
    .param p7, "liveRegion"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 1015
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->getOrCreateBundleForAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Landroid/os/Bundle;

    move-result-object v0

    .line 1016
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "AccessibilityNodeInfo.canOpenPopup"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1017
    const-string v1, "AccessibilityNodeInfo.contentInvalid"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1018
    const-string v1, "AccessibilityNodeInfo.dismissable"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1019
    const-string v1, "AccessibilityNodeInfo.multiLine"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1020
    const-string v1, "AccessibilityNodeInfo.inputType"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1021
    const-string v1, "AccessibilityNodeInfo.liveRegion"

    invoke-virtual {v0, v1, p7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1022
    return-void
.end method

.method protected setAccessibilityEventRangeInfo(Landroid/view/accessibility/AccessibilityEvent;IFFF)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "rangeType"    # I
    .param p3, "min"    # F
    .param p4, "max"    # F
    .param p5, "current"    # F
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 1057
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->getOrCreateBundleForAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Landroid/os/Bundle;

    move-result-object v0

    .line 1058
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "AccessibilityNodeInfo.RangeInfo.type"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1059
    const-string v1, "AccessibilityNodeInfo.RangeInfo.min"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1060
    const-string v1, "AccessibilityNodeInfo.RangeInfo.max"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1061
    const-string v1, "AccessibilityNodeInfo.RangeInfo.current"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1062
    return-void
.end method

.method protected setAccessibilityNodeInfoCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo;IIZ)V
    .locals 0
    .param p1, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "rowCount"    # I
    .param p3, "columnCount"    # I
    .param p4, "hierarchical"    # Z
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 937
    return-void
.end method

.method protected setAccessibilityNodeInfoCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo;IIIIZ)V
    .locals 0
    .param p1, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "rowIndex"    # I
    .param p3, "rowSpan"    # I
    .param p4, "columnIndex"    # I
    .param p5, "columnSpan"    # I
    .param p6, "heading"    # Z
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 943
    return-void
.end method

.method protected setAccessibilityNodeInfoKitKatAttributes(Landroid/view/accessibility/AccessibilityNodeInfo;ZZLjava/lang/String;)V
    .locals 0
    .param p1, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "isRoot"    # Z
    .param p3, "isEditableText"    # Z
    .param p4, "roleDescription"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 920
    return-void
.end method

.method protected setAccessibilityNodeInfoLollipopAttributes(Landroid/view/accessibility/AccessibilityNodeInfo;ZZZZII)V
    .locals 0
    .param p1, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "canOpenPopup"    # Z
    .param p3, "contentInvalid"    # Z
    .param p4, "dismissable"    # Z
    .param p5, "multiLine"    # Z
    .param p6, "inputType"    # I
    .param p7, "liveRegion"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 931
    return-void
.end method

.method protected setAccessibilityNodeInfoRangeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;IFFF)V
    .locals 0
    .param p1, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "rangeType"    # I
    .param p3, "min"    # F
    .param p4, "max"    # F
    .param p5, "current"    # F
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 949
    return-void
.end method

.method protected setAccessibilityNodeInfoViewIdResourceName(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "viewIdResourceName"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 955
    return-void
.end method

.method shouldExposePasswordText()Z
    .locals 4
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1066
    iget-object v2, p0, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "speak_password"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
