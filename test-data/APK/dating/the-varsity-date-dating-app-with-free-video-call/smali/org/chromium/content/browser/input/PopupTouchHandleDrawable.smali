.class public Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;
.super Landroid/view/View;
.source "PopupTouchHandleDrawable.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "content"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final FADE_IN_DURATION_MS:I = 0xc8

.field private static final MOVING_FADE_IN_DELAY_MS:I = 0x12c


# instance fields
.field private mAlpha:F

.field private mAttachedToWindow:Z

.field private final mContainer:Landroid/widget/PopupWindow;

.field private mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

.field private mDeferredHandleFadeInRunnable:Ljava/lang/Runnable;

.field private mDelayVisibilityUpdateWAR:Z

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mFadeStartTime:J

.field private mFocused:Z

.field private final mGestureStateListener:Lorg/chromium/content_public/browser/GestureStateListener;

.field private mHasPendingInvalidate:Z

.field private mInvalidationRunnable:Ljava/lang/Runnable;

.field private mMirrorHorizontal:Z

.field private mMirrorVertical:Z

.field private mOrientation:I

.field private final mParentPositionListener:Lorg/chromium/content/browser/PositionObserver$Listener;

.field private mParentPositionObserver:Lorg/chromium/content/browser/PositionObserver;

.field private mParentPositionX:I

.field private mParentPositionY:I

.field private final mParentViewObserver:Lorg/chromium/content/browser/ContainerViewObserver;

.field private mPositionX:I

.field private mPositionY:I

.field private mScrolling:Z

.field private final mTempScreenCoords:[I

.field private mTemporarilyHidden:Z

.field private mTemporarilyHiddenExpireTime:J

.field private mTemporarilyHiddenExpiredRunnable:Ljava/lang/Runnable;

.field private mVisible:Z

.field private mWasShowingAllowed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 7
    .param p1, "contentViewCore"    # Lorg/chromium/content/browser/ContentViewCore;

    .prologue
    const/4 v1, 0x1

    const/4 v6, -0x2

    const/4 v2, 0x0

    .line 97
    invoke-virtual {p1}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 62
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mTempScreenCoords:[I

    .line 64
    const/4 v0, 0x3

    iput v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mOrientation:I

    .line 98
    iput-object p1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    .line 99
    new-instance v3, Landroid/widget/PopupWindow;

    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getContext()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const/4 v4, 0x0

    const v5, 0x10102c8

    invoke-direct {v3, v0, v4, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v3, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContainer:Landroid/widget/PopupWindow;

    .line 101
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 102
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 106
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 110
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContainer:Landroid/widget/PopupWindow;

    const/16 v3, 0x3ea

    invoke-static {v0, v3}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->setWindowLayoutType(Landroid/widget/PopupWindow;I)V

    .line 111
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 112
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 114
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mAlpha:F

    .line 115
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mVisible:Z

    .line 116
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->hasWindowFocus()Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mFocused:Z

    .line 118
    new-instance v0, Lorg/chromium/content/browser/ViewPositionObserver;

    iget-object v1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/chromium/content/browser/ViewPositionObserver;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mParentPositionObserver:Lorg/chromium/content/browser/PositionObserver;

    .line 119
    new-instance v0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$1;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$1;-><init>(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mParentPositionListener:Lorg/chromium/content/browser/PositionObserver$Listener;

    .line 125
    new-instance v0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$2;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$2;-><init>(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mParentViewObserver:Lorg/chromium/content/browser/ContainerViewObserver;

    .line 137
    new-instance v0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$3;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$3;-><init>(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mGestureStateListener:Lorg/chromium/content_public/browser/GestureStateListener;

    .line 167
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mGestureStateListener:Lorg/chromium/content_public/browser/GestureStateListener;

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->addGestureStateListener(Lorg/chromium/content_public/browser/GestureStateListener;)V

    .line 168
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mParentViewObserver:Lorg/chromium/content/browser/ContainerViewObserver;

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->addContainerViewObserver(Lorg/chromium/content/browser/ContainerViewObserver;)V

    .line 169
    return-void

    :cond_0
    move v0, v2

    .line 115
    goto :goto_0
.end method

.method static synthetic access$000(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;II)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->updateParentPosition(II)V

    return-void
.end method

.method static synthetic access$100(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;)Lorg/chromium/content/browser/PositionObserver;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;

    .prologue
    .line 40
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mParentPositionObserver:Lorg/chromium/content/browser/PositionObserver;

    return-object v0
.end method

.method static synthetic access$1002(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mHasPendingInvalidate:Z

    return p1
.end method

.method static synthetic access$102(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;Lorg/chromium/content/browser/PositionObserver;)Lorg/chromium/content/browser/PositionObserver;
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;
    .param p1, "x1"    # Lorg/chromium/content/browser/PositionObserver;

    .prologue
    .line 40
    iput-object p1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mParentPositionObserver:Lorg/chromium/content/browser/PositionObserver;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->doInvalidate()V

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;

    .prologue
    .line 40
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContainer:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$300(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;)Lorg/chromium/content/browser/PositionObserver$Listener;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;

    .prologue
    .line 40
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mParentPositionListener:Lorg/chromium/content/browser/PositionObserver$Listener;

    return-object v0
.end method

.method static synthetic access$400(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->setIsScrolling(Z)V

    return-void
.end method

.method static synthetic access$500(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->temporarilyHide()V

    return-void
.end method

.method static synthetic access$600(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->setIsFocused(Z)V

    return-void
.end method

.method static synthetic access$700(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->destroy()V

    return-void
.end method

.method static synthetic access$800(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->setTemporarilyHidden(Z)V

    return-void
.end method

.method static synthetic access$900(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->beginFadeIn()V

    return-void
.end method

.method private beginFadeIn()V
    .locals 2

    .prologue
    .line 389
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 393
    :goto_0
    return-void

    .line 390
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mAlpha:F

    .line 391
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mFadeStartTime:J

    .line 392
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->doInvalidate()V

    goto :goto_0
.end method

.method private cancelFadeIn()V
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDeferredHandleFadeInRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 386
    :goto_0
    return-void

    .line 385
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDeferredHandleFadeInRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private static create(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;
    .locals 1
    .param p0, "contentViewCore"    # Lorg/chromium/content/browser/ContentViewCore;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 225
    new-instance v0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;-><init>(Lorg/chromium/content/browser/ContentViewCore;)V

    return-object v0
.end method

.method private destroy()V
    .locals 2
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 436
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    if-nez v0, :cond_0

    .line 441
    :goto_0
    return-void

    .line 437
    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->hide()V

    .line 438
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mGestureStateListener:Lorg/chromium/content_public/browser/GestureStateListener;

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->removeGestureStateListener(Lorg/chromium/content_public/browser/GestureStateListener;)V

    .line 439
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    iget-object v1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mParentViewObserver:Lorg/chromium/content/browser/ContainerViewObserver;

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->removeContainerViewObserver(Lorg/chromium/content/browser/ContainerViewObserver;)V

    .line 440
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    goto :goto_0
.end method

.method private doInvalidate()V
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 365
    :goto_0
    return-void

    .line 362
    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->updateVisibility()V

    .line 363
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->updatePosition()V

    .line 364
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->invalidate()V

    goto :goto_0
.end method

.method private getContainerPositionX()I
    .locals 2

    .prologue
    .line 257
    iget v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mParentPositionX:I

    iget v1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mPositionX:I

    add-int/2addr v0, v1

    return v0
.end method

.method private getContainerPositionY()I
    .locals 2

    .prologue
    .line 261
    iget v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mParentPositionY:I

    iget v1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mPositionY:I

    add-int/2addr v0, v1

    return v0
.end method

.method private static getHandleDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "orientation"    # I

    .prologue
    .line 187
    packed-switch p1, :pswitch_data_0

    .line 202
    sget-boolean v0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 189
    :pswitch_0
    invoke-static {p0}, Lorg/chromium/content/browser/input/HandleViewResources;->getLeftHandleDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 203
    :goto_0
    return-object v0

    .line 193
    :pswitch_1
    invoke-static {p0}, Lorg/chromium/content/browser/input/HandleViewResources;->getRightHandleDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 197
    :pswitch_2
    invoke-static {p0}, Lorg/chromium/content/browser/input/HandleViewResources;->getCenterHandleDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 203
    :cond_0
    invoke-static {p0}, Lorg/chromium/content/browser/input/HandleViewResources;->getCenterHandleDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 187
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getHandleHorizontalPaddingRatio()F
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 499
    invoke-static {}, Lorg/chromium/content/browser/input/HandleViewResources;->getHandleHorizontalPaddingRatio()F

    move-result v0

    return v0
.end method

.method private getPositionX()I
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 494
    iget v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mPositionX:I

    return v0
.end method

.method private getPositionY()I
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 504
    iget v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mPositionY:I

    return v0
.end method

.method private getVisibleHeight()I
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 515
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 516
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0
.end method

.method private getVisibleWidth()I
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 509
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 510
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0
.end method

.method private hide()V
    .locals 2
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 464
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mTemporarilyHiddenExpireTime:J

    .line 465
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->setTemporarilyHidden(Z)V

    .line 466
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mAlpha:F

    .line 467
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    :try_start_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mParentPositionObserver:Lorg/chromium/content/browser/PositionObserver;

    invoke-interface {v0}, Lorg/chromium/content/browser/PositionObserver;->clearListener()V

    .line 475
    return-void

    .line 470
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private isShowingAllowed()Z
    .locals 1

    .prologue
    .line 270
    iget-boolean v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mAttachedToWindow:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mFocused:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mScrolling:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mTemporarilyHidden:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onVisibilityInputChanged()V
    .locals 2

    .prologue
    .line 326
    iget-object v1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->isShowingAllowed()Z

    move-result v0

    .line 328
    .local v0, "allowed":Z
    iget-boolean v1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mWasShowingAllowed:Z

    if-eq v1, v0, :cond_0

    .line 329
    iput-boolean v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mWasShowingAllowed:Z

    .line 330
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->cancelFadeIn()V

    .line 331
    if-eqz v0, :cond_3

    .line 332
    iget-object v1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDeferredHandleFadeInRunnable:Ljava/lang/Runnable;

    if-nez v1, :cond_2

    .line 333
    new-instance v1, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$5;

    invoke-direct {v1, p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$5;-><init>(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;)V

    iput-object v1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDeferredHandleFadeInRunnable:Ljava/lang/Runnable;

    .line 340
    :cond_2
    iget-object v1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDeferredHandleFadeInRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 342
    :cond_3
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->updateVisibility()V

    goto :goto_0
.end method

.method private scheduleInvalidate()V
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mInvalidationRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 369
    new-instance v0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$6;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$6;-><init>(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mInvalidationRunnable:Ljava/lang/Runnable;

    .line 378
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mHasPendingInvalidate:Z

    if-eqz v0, :cond_1

    .line 381
    :goto_0
    return-void

    .line 379
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mHasPendingInvalidate:Z

    .line 380
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mInvalidationRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private setIsFocused(Z)V
    .locals 1
    .param p1, "focused"    # Z

    .prologue
    .line 297
    iget-boolean v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mFocused:Z

    if-ne v0, p1, :cond_0

    .line 300
    :goto_0
    return-void

    .line 298
    :cond_0
    iput-boolean p1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mFocused:Z

    .line 299
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->onVisibilityInputChanged()V

    goto :goto_0
.end method

.method private setIsScrolling(Z)V
    .locals 1
    .param p1, "scrolling"    # Z

    .prologue
    .line 291
    iget-boolean v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mScrolling:Z

    if-ne v0, p1, :cond_0

    .line 294
    :goto_0
    return-void

    .line 292
    :cond_0
    iput-boolean p1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mScrolling:Z

    .line 293
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->onVisibilityInputChanged()V

    goto :goto_0
.end method

.method private setOrientation(IZZ)V
    .locals 5
    .param p1, "orientation"    # I
    .param p2, "mirrorVertical"    # Z
    .param p3, "mirrorHorizontal"    # Z
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 230
    sget-boolean v4, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    if-ltz p1, :cond_0

    const/4 v4, 0x3

    if-le p1, v4, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 233
    :cond_1
    iget v4, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mOrientation:I

    if-eq v4, p1, :cond_7

    move v1, v2

    .line 234
    .local v1, "orientationChanged":Z
    :goto_0
    iget-boolean v4, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mMirrorHorizontal:Z

    if-ne v4, p3, :cond_2

    iget-boolean v4, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mMirrorVertical:Z

    if-eq v4, p2, :cond_8

    :cond_2
    move v0, v2

    .line 236
    .local v0, "mirroringChanged":Z
    :goto_1
    iput p1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mOrientation:I

    .line 237
    iput-boolean p3, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mMirrorHorizontal:Z

    .line 238
    iput-boolean p2, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mMirrorVertical:Z

    .line 242
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mOrientation:I

    invoke-static {v2, v3}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->getHandleDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 244
    :cond_3
    iget-object v2, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v3, 0x437f0000    # 255.0f

    iget v4, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mAlpha:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 246
    :cond_4
    if-nez v1, :cond_5

    if-eqz v0, :cond_6

    :cond_5
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->scheduleInvalidate()V

    .line 247
    :cond_6
    return-void

    .end local v0    # "mirroringChanged":Z
    .end local v1    # "orientationChanged":Z
    :cond_7
    move v1, v3

    .line 233
    goto :goto_0

    .restart local v1    # "orientationChanged":Z
    :cond_8
    move v0, v3

    .line 234
    goto :goto_1
.end method

.method private setOrigin(FF)V
    .locals 1
    .param p1, "originX"    # F
    .param p2, "originY"    # F
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 479
    iget v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mPositionX:I

    int-to-float v0, v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_1

    iget v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mPositionY:I

    int-to-float v0, v0

    cmpl-float v0, v0, p2

    if-nez v0, :cond_1

    .line 483
    :cond_0
    :goto_0
    return-void

    .line 480
    :cond_1
    float-to-int v0, p1

    iput v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mPositionX:I

    .line 481
    float-to-int v0, p2

    iput v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mPositionY:I

    .line 482
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->scheduleInvalidate()V

    goto :goto_0
.end method

.method private setTemporarilyHidden(Z)V
    .locals 8
    .param p1, "hidden"    # Z

    .prologue
    .line 303
    iget-boolean v4, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mTemporarilyHidden:Z

    if-ne v4, p1, :cond_0

    .line 323
    :goto_0
    return-void

    .line 305
    :cond_0
    iput-boolean p1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mTemporarilyHidden:Z

    .line 306
    iget-boolean v4, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mTemporarilyHidden:Z

    if-eqz v4, :cond_3

    .line 307
    iget-object v4, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mTemporarilyHiddenExpiredRunnable:Ljava/lang/Runnable;

    if-nez v4, :cond_1

    .line 308
    new-instance v4, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$4;

    invoke-direct {v4, p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$4;-><init>(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;)V

    iput-object v4, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mTemporarilyHiddenExpiredRunnable:Ljava/lang/Runnable;

    .line 315
    :cond_1
    iget-object v4, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mTemporarilyHiddenExpiredRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 316
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 317
    .local v2, "now":J
    const-wide/16 v4, 0x0

    iget-wide v6, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mTemporarilyHiddenExpireTime:J

    sub-long/2addr v6, v2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 318
    .local v0, "delay":J
    iget-object v4, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mTemporarilyHiddenExpiredRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v4, v0, v1}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 322
    .end local v0    # "delay":J
    .end local v2    # "now":J
    :cond_2
    :goto_1
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->onVisibilityInputChanged()V

    goto :goto_0

    .line 319
    :cond_3
    iget-object v4, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mTemporarilyHiddenExpiredRunnable:Ljava/lang/Runnable;

    if-eqz v4, :cond_2

    .line 320
    iget-object v4, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mTemporarilyHiddenExpiredRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method private setVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 487
    iget-boolean v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mVisible:Z

    if-ne v0, p1, :cond_0

    .line 490
    :goto_0
    return-void

    .line 488
    :cond_0
    iput-boolean p1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mVisible:Z

    .line 489
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->onVisibilityInputChanged()V

    goto :goto_0
.end method

.method private static setWindowLayoutType(Landroid/widget/PopupWindow;I)V
    .locals 6
    .param p0, "window"    # Landroid/widget/PopupWindow;
    .param p1, "layoutType"    # I

    .prologue
    .line 172
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 173
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 184
    :goto_0
    return-void

    .line 178
    :cond_0
    :try_start_0
    const-class v1, Landroid/widget/PopupWindow;

    const-string v2, "setWindowLayoutType"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 180
    .local v0, "setWindowLayoutTypeMethod":Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 181
    .end local v0    # "setWindowLayoutTypeMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method private show()V
    .locals 6
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 445
    iget-object v1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    if-nez v1, :cond_1

    .line 460
    :cond_0
    :goto_0
    return-void

    .line 446
    :cond_1
    iget-object v1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 450
    iget-object v1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mParentPositionObserver:Lorg/chromium/content/browser/PositionObserver;

    invoke-interface {v1}, Lorg/chromium/content/browser/PositionObserver;->getPositionX()I

    move-result v1

    iget-object v2, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mParentPositionObserver:Lorg/chromium/content/browser/PositionObserver;

    invoke-interface {v2}, Lorg/chromium/content/browser/PositionObserver;->getPositionY()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->updateParentPosition(II)V

    .line 452
    iget-object v1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mParentPositionObserver:Lorg/chromium/content/browser/PositionObserver;

    iget-object v2, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mParentPositionListener:Lorg/chromium/content/browser/PositionObserver$Listener;

    invoke-interface {v1, v2}, Lorg/chromium/content/browser/PositionObserver;->addListener(Lorg/chromium/content/browser/PositionObserver$Listener;)V

    .line 453
    iget-object v1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 455
    :try_start_0
    iget-object v1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContainer:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->getContainerPositionX()I

    move-result v4

    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->getContainerPositionY()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 457
    :catch_0
    move-exception v0

    .line 458
    .local v0, "e":Landroid/view/WindowManager$BadTokenException;
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->hide()V

    goto :goto_0
.end method

.method private temporarilyHide()V
    .locals 4

    .prologue
    .line 355
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 358
    :goto_0
    return-void

    .line 356
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x12c

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mTemporarilyHiddenExpireTime:J

    .line 357
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->setTemporarilyHidden(Z)V

    goto :goto_0
.end method

.method private updateAlpha()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 347
    iget v2, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mAlpha:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_0

    .line 352
    :goto_0
    return-void

    .line 348
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 349
    .local v0, "currentTimeMillis":J
    iget-wide v2, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mFadeStartTime:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    const/high16 v3, 0x43480000    # 200.0f

    div-float/2addr v2, v3

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mAlpha:F

    .line 350
    iget-object v2, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v3, 0x437f0000    # 255.0f

    iget v4, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mAlpha:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 351
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->scheduleInvalidate()V

    goto :goto_0
.end method

.method private updateParentPosition(II)V
    .locals 1
    .param p1, "parentPositionX"    # I
    .param p2, "parentPositionY"    # I

    .prologue
    .line 250
    iget v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mParentPositionX:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mParentPositionY:I

    if-ne v0, p2, :cond_0

    .line 254
    :goto_0
    return-void

    .line 251
    :cond_0
    iput p1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mParentPositionX:I

    .line 252
    iput p2, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mParentPositionY:I

    .line 253
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->temporarilyHide()V

    goto :goto_0
.end method

.method private updatePosition()V
    .locals 6

    .prologue
    .line 265
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContainer:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->getContainerPositionX()I

    move-result v1

    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->getContainerPositionY()I

    move-result v2

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 267
    return-void
.end method

.method private updateVisibility()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 274
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->isShowingAllowed()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 278
    .local v0, "newVisibility":I
    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 279
    iget-boolean v2, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDelayVisibilityUpdateWAR:Z

    if-nez v2, :cond_1

    .line 280
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDelayVisibilityUpdateWAR:Z

    .line 281
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->scheduleInvalidate()V

    .line 288
    :goto_1
    return-void

    .line 274
    .end local v0    # "newVisibility":I
    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    .line 285
    .restart local v0    # "newVisibility":I
    :cond_1
    iput-boolean v1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDelayVisibilityUpdateWAR:Z

    .line 287
    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 422
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 423
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mAttachedToWindow:Z

    .line 424
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->onVisibilityInputChanged()V

    .line 425
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 429
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 430
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mAttachedToWindow:Z

    .line 431
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->onVisibilityInputChanged()V

    .line 432
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v5, 0x0

    .line 406
    iget-object v6, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_1

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    iget-boolean v6, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mMirrorHorizontal:Z

    if-nez v6, :cond_2

    iget-boolean v6, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mMirrorVertical:Z

    if-eqz v6, :cond_4

    :cond_2
    const/4 v0, 0x1

    .line 408
    .local v0, "needsMirror":Z
    :goto_1
    if-eqz v0, :cond_3

    .line 409
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 410
    iget-boolean v6, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mMirrorHorizontal:Z

    if-eqz v6, :cond_5

    move v1, v3

    .line 411
    .local v1, "scaleX":F
    :goto_2
    iget-boolean v6, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mMirrorVertical:Z

    if-eqz v6, :cond_6

    move v2, v3

    .line 412
    .local v2, "scaleY":F
    :goto_3
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v7

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v7

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 414
    .end local v1    # "scaleX":F
    .end local v2    # "scaleY":F
    :cond_3
    invoke-direct {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->updateAlpha()V

    .line 415
    iget-object v3, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->getLeft()I

    move-result v6

    sub-int/2addr v4, v6

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->getBottom()I

    move-result v6

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->getTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v3, v5, v5, v4, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 416
    iget-object v3, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 417
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .end local v0    # "needsMirror":Z
    :cond_4
    move v0, v5

    .line 407
    goto :goto_1

    .restart local v0    # "needsMirror":Z
    :cond_5
    move v1, v4

    .line 410
    goto :goto_2

    .restart local v1    # "scaleX":F
    :cond_6
    move v2, v4

    .line 411
    goto :goto_3
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v1, 0x0

    .line 397
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 398
    invoke-virtual {p0, v1, v1}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->setMeasuredDimension(II)V

    .line 402
    :goto_0
    return-void

    .line 401
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 210
    iget-object v4, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    if-nez v4, :cond_0

    .line 220
    :goto_0
    return v0

    .line 213
    :cond_0
    iget-object v4, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v4}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v4

    iget-object v5, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mTempScreenCoords:[I

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 214
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mTempScreenCoords:[I

    aget v5, v5, v0

    int-to-float v5, v5

    sub-float v2, v4, v5

    .line 215
    .local v2, "offsetX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mTempScreenCoords:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    int-to-float v5, v5

    sub-float v3, v4, v5

    .line 216
    .local v3, "offsetY":F
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 217
    .local v1, "offsetEvent":Landroid/view/MotionEvent;
    invoke-virtual {v1, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 218
    iget-object v4, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v4, v1}, Lorg/chromium/content/browser/ContentViewCore;->onTouchHandleEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 219
    .local v0, "handled":Z
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0
.end method
