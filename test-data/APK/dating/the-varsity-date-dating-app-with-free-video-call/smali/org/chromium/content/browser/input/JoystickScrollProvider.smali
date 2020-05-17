.class public Lorg/chromium/content/browser/input/JoystickScrollProvider;
.super Ljava/lang/Object;
.source "JoystickScrollProvider.java"


# static fields
.field private static final JOYSTICK_SCROLL_DEADZONE:F = 0.2f

.field private static final JOYSTICK_SCROLL_FACTOR_MULTIPLIER:F = 20.0f

.field private static final SCROLL_FACTOR_FALLBACK:F = 128.0f

.field private static final TAG:Ljava/lang/String; = "JoystickScroll"


# instance fields
.field private mEnabled:Z

.field private mLastAnimateTimeMillis:J

.field private mScrollFactor:F

.field private mScrollRunnable:Ljava/lang/Runnable;

.field private mScrollVelocityX:F

.field private mScrollVelocityY:F

.field private final mView:Lorg/chromium/content/browser/ContentViewCore;


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 1
    .param p1, "contentView"    # Lorg/chromium/content/browser/ContentViewCore;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/chromium/content/browser/input/JoystickScrollProvider;->mView:Lorg/chromium/content/browser/ContentViewCore;

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/input/JoystickScrollProvider;->mEnabled:Z

    .line 47
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/content/browser/input/JoystickScrollProvider;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/input/JoystickScrollProvider;

    .prologue
    .line 18
    invoke-direct {p0}, Lorg/chromium/content/browser/input/JoystickScrollProvider;->animateScroll()V

    return-void
.end method

.method private animateScroll()V
    .locals 11

    .prologue
    const/high16 v10, 0x447a0000    # 1000.0f

    .line 96
    iget-wide v6, p0, Lorg/chromium/content/browser/input/JoystickScrollProvider;->mLastAnimateTimeMillis:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 106
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    .line 100
    .local v4, "timeMillis":J
    iget-wide v6, p0, Lorg/chromium/content/browser/input/JoystickScrollProvider;->mLastAnimateTimeMillis:J

    sub-long v0, v4, v6

    .line 101
    .local v0, "dt":J
    iget v6, p0, Lorg/chromium/content/browser/input/JoystickScrollProvider;->mScrollVelocityX:F

    long-to-float v7, v0

    mul-float/2addr v6, v7

    div-float v2, v6, v10

    .line 102
    .local v2, "dx":F
    iget v6, p0, Lorg/chromium/content/browser/input/JoystickScrollProvider;->mScrollVelocityY:F

    long-to-float v7, v0

    mul-float/2addr v6, v7

    div-float v3, v6, v10

    .line 103
    .local v3, "dy":F
    iget-object v6, p0, Lorg/chromium/content/browser/input/JoystickScrollProvider;->mView:Lorg/chromium/content/browser/ContentViewCore;

    const/4 v7, 0x1

    invoke-virtual {v6, v2, v3, v7}, Lorg/chromium/content/browser/ContentViewCore;->scrollBy(FFZ)V

    .line 104
    iput-wide v4, p0, Lorg/chromium/content/browser/input/JoystickScrollProvider;->mLastAnimateTimeMillis:J

    .line 105
    iget-object v6, p0, Lorg/chromium/content/browser/input/JoystickScrollProvider;->mView:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v6}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v6

    iget-object v7, p0, Lorg/chromium/content/browser/input/JoystickScrollProvider;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private computeNewScrollVelocity(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x41a00000    # 20.0f

    .line 116
    iget v1, p0, Lorg/chromium/content/browser/input/JoystickScrollProvider;->mScrollFactor:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 117
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 118
    .local v0, "outValue":Landroid/util/TypedValue;
    iget-object v1, p0, Lorg/chromium/content/browser/input/JoystickScrollProvider;->mView:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101004d

    invoke-virtual {v1, v2, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 120
    iget-object v1, p0, Lorg/chromium/content/browser/input/JoystickScrollProvider;->mView:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lorg/chromium/content/browser/input/JoystickScrollProvider;->mScrollFactor:F

    .line 129
    .end local v0    # "outValue":Landroid/util/TypedValue;
    :cond_0
    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lorg/chromium/content/browser/input/JoystickScrollProvider;->getFilteredAxisValue(Landroid/view/MotionEvent;I)F

    move-result v1

    iget v2, p0, Lorg/chromium/content/browser/input/JoystickScrollProvider;->mScrollFactor:F

    mul-float/2addr v1, v2

    mul-float/2addr v1, v3

    iput v1, p0, Lorg/chromium/content/browser/input/JoystickScrollProvider;->mScrollVelocityX:F

    .line 131
    invoke-direct {p0, p1, v4}, Lorg/chromium/content/browser/input/JoystickScrollProvider;->getFilteredAxisValue(Landroid/view/MotionEvent;I)F

    move-result v1

    iget v2, p0, Lorg/chromium/content/browser/input/JoystickScrollProvider;->mScrollFactor:F

    mul-float/2addr v1, v2

    mul-float/2addr v1, v3

    iput v1, p0, Lorg/chromium/content/browser/input/JoystickScrollProvider;->mScrollVelocityY:F

    .line 133
    return-void

    .line 123
    .restart local v0    # "outValue":Landroid/util/TypedValue;
    :cond_1
    const-string v1, "JoystickScroll"

    const-string v2, "Theme attribute listPreferredItemHeight not definedswitching to fallback scroll factor "

    invoke-static {v1, v2}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const/high16 v1, 0x43000000    # 128.0f

    iget-object v2, p0, Lorg/chromium/content/browser/input/JoystickScrollProvider;->mView:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v2}, Lorg/chromium/content/browser/ContentViewCore;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinates;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/RenderCoordinates;->getDeviceScaleFactor()F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, p0, Lorg/chromium/content/browser/input/JoystickScrollProvider;->mScrollFactor:F

    goto :goto_0
.end method

.method private getFilteredAxisValue(Landroid/view/MotionEvent;I)F
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "axis"    # I

    .prologue
    .line 139
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 140
    .local v0, "axisValWithNoise":F
    const v1, 0x3e4ccccd    # 0.2f

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_0

    const v1, -0x41b33333    # -0.2f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 144
    .end local v0    # "axisValWithNoise":F
    :cond_0
    :goto_0
    return v0

    .restart local v0    # "axisValWithNoise":F
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private stop()V
    .locals 2

    .prologue
    .line 109
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/content/browser/input/JoystickScrollProvider;->mLastAnimateTimeMillis:J

    .line 110
    return-void
.end method


# virtual methods
.method public onMotion(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 70
    iget-boolean v2, p0, Lorg/chromium/content/browser/input/JoystickScrollProvider;->mEnabled:Z

    if-nez v2, :cond_1

    .line 92
    :cond_0
    :goto_0
    return v0

    .line 71
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_0

    .line 72
    const-string v2, "JoystickScroll"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Joystick left stick axis: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/input/JoystickScrollProvider;->computeNewScrollVelocity(Landroid/view/MotionEvent;)V

    .line 76
    iget v2, p0, Lorg/chromium/content/browser/input/JoystickScrollProvider;->mScrollVelocityX:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_2

    iget v2, p0, Lorg/chromium/content/browser/input/JoystickScrollProvider;->mScrollVelocityY:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_2

    .line 77
    invoke-direct {p0}, Lorg/chromium/content/browser/input/JoystickScrollProvider;->stop()V

    goto :goto_0

    .line 80
    :cond_2
    iget-object v0, p0, Lorg/chromium/content/browser/input/JoystickScrollProvider;->mScrollRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_3

    .line 81
    new-instance v0, Lorg/chromium/content/browser/input/JoystickScrollProvider$1;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/input/JoystickScrollProvider$1;-><init>(Lorg/chromium/content/browser/input/JoystickScrollProvider;)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/JoystickScrollProvider;->mScrollRunnable:Ljava/lang/Runnable;

    .line 88
    :cond_3
    iget-wide v2, p0, Lorg/chromium/content/browser/input/JoystickScrollProvider;->mLastAnimateTimeMillis:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_4

    .line 89
    iget-object v0, p0, Lorg/chromium/content/browser/input/JoystickScrollProvider;->mView:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v2, p0, Lorg/chromium/content/browser/input/JoystickScrollProvider;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 90
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/chromium/content/browser/input/JoystickScrollProvider;->mLastAnimateTimeMillis:J

    :cond_4
    move v0, v1

    .line 92
    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lorg/chromium/content/browser/input/JoystickScrollProvider;->mEnabled:Z

    .line 56
    if-nez p1, :cond_0

    invoke-direct {p0}, Lorg/chromium/content/browser/input/JoystickScrollProvider;->stop()V

    .line 57
    :cond_0
    return-void
.end method
