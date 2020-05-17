.class public Lorg/chromium/content/browser/input/JoystickZoomProvider;
.super Ljava/lang/Object;
.source "JoystickZoomProvider.java"


# static fields
.field private static final JOYSTICK_NOISE_THRESHOLD:F = 0.2f

.field private static final TAG:Ljava/lang/String; = "JoystickZoomProvider"

.field private static final ZOOM_SPEED:F = 1.65f


# instance fields
.field protected final mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

.field protected mDeviceScaleFactor:F

.field private mLastAnimateTimeMillis:J

.field private mSystemAnimationIntervalProvider:Lorg/chromium/content/browser/input/AnimationIntervalProvider;

.field private mZoomInVelocity:F

.field private mZoomOutVelocity:F

.field protected mZoomRunnable:Ljava/lang/Runnable;

.field private mZoomXcoord:I

.field private mZoomYcoord:I


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/ContentViewCore;Lorg/chromium/content/browser/input/AnimationIntervalProvider;)V
    .locals 1
    .param p1, "cvc"    # Lorg/chromium/content/browser/ContentViewCore;
    .param p2, "animationTimeProvider"    # Lorg/chromium/content/browser/input/AnimationIntervalProvider;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/chromium/content/browser/input/JoystickZoomProvider;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    .line 50
    iget-object v0, p0, Lorg/chromium/content/browser/input/JoystickZoomProvider;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinates;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getDeviceScaleFactor()F

    move-result v0

    iput v0, p0, Lorg/chromium/content/browser/input/JoystickZoomProvider;->mDeviceScaleFactor:F

    .line 51
    iget-object v0, p0, Lorg/chromium/content/browser/input/JoystickZoomProvider;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getViewportWidthPix()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/chromium/content/browser/input/JoystickZoomProvider;->mZoomXcoord:I

    .line 52
    iget-object v0, p0, Lorg/chromium/content/browser/input/JoystickZoomProvider;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getViewportHeightPix()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/chromium/content/browser/input/JoystickZoomProvider;->mZoomYcoord:I

    .line 53
    iput-object p2, p0, Lorg/chromium/content/browser/input/JoystickZoomProvider;->mSystemAnimationIntervalProvider:Lorg/chromium/content/browser/input/AnimationIntervalProvider;

    .line 54
    return-void
.end method

.method private computeNewZoomVelocity(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 97
    const/16 v0, 0x12

    invoke-direct {p0, p1, v0}, Lorg/chromium/content/browser/input/JoystickZoomProvider;->getFilteredAxisValue(Landroid/view/MotionEvent;I)F

    move-result v0

    iput v0, p0, Lorg/chromium/content/browser/input/JoystickZoomProvider;->mZoomInVelocity:F

    .line 98
    const/16 v0, 0x11

    invoke-direct {p0, p1, v0}, Lorg/chromium/content/browser/input/JoystickZoomProvider;->getFilteredAxisValue(Landroid/view/MotionEvent;I)F

    move-result v0

    iput v0, p0, Lorg/chromium/content/browser/input/JoystickZoomProvider;->mZoomOutVelocity:F

    .line 99
    return-void
.end method

.method private getFilteredAxisValue(Landroid/view/MotionEvent;I)F
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "axis"    # I

    .prologue
    .line 128
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 129
    .local v0, "axisValWithNoise":F
    const v1, 0x3e4ccccd    # 0.2f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .end local v0    # "axisValWithNoise":F
    :goto_0
    return v0

    .restart local v0    # "axisValWithNoise":F
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected animateZoom()V
    .locals 10

    .prologue
    .line 102
    iget-object v5, p0, Lorg/chromium/content/browser/input/JoystickZoomProvider;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v5}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v5

    if-nez v5, :cond_1

    .line 103
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/JoystickZoomProvider;->stop()V

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    iget-wide v6, p0, Lorg/chromium/content/browser/input/JoystickZoomProvider;->mLastAnimateTimeMillis:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_0

    .line 108
    iget-object v5, p0, Lorg/chromium/content/browser/input/JoystickZoomProvider;->mSystemAnimationIntervalProvider:Lorg/chromium/content/browser/input/AnimationIntervalProvider;

    invoke-interface {v5}, Lorg/chromium/content/browser/input/AnimationIntervalProvider;->getLastAnimationFrameInterval()J

    move-result-wide v2

    .line 109
    .local v2, "timeMillis":J
    iget-wide v6, p0, Lorg/chromium/content/browser/input/JoystickZoomProvider;->mLastAnimateTimeMillis:J

    sub-long v0, v2, v6

    .line 110
    .local v0, "dt":J
    const-wide v6, 0x3ffa666660000000L    # 1.649999976158142

    iget v5, p0, Lorg/chromium/content/browser/input/JoystickZoomProvider;->mDeviceScaleFactor:F

    iget v8, p0, Lorg/chromium/content/browser/input/JoystickZoomProvider;->mZoomInVelocity:F

    iget v9, p0, Lorg/chromium/content/browser/input/JoystickZoomProvider;->mZoomOutVelocity:F

    sub-float/2addr v8, v9

    mul-float/2addr v5, v8

    long-to-float v8, v0

    mul-float/2addr v5, v8

    const/high16 v8, 0x447a0000    # 1000.0f

    div-float/2addr v5, v8

    float-to-double v8, v5

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v4, v6

    .line 112
    .local v4, "zoomFactor":F
    iget-object v5, p0, Lorg/chromium/content/browser/input/JoystickZoomProvider;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    iget v6, p0, Lorg/chromium/content/browser/input/JoystickZoomProvider;->mZoomXcoord:I

    iget v7, p0, Lorg/chromium/content/browser/input/JoystickZoomProvider;->mZoomYcoord:I

    invoke-virtual {v5, v6, v7, v4}, Lorg/chromium/content/browser/ContentViewCore;->pinchBy(IIF)Z

    .line 113
    iput-wide v2, p0, Lorg/chromium/content/browser/input/JoystickZoomProvider;->mLastAnimateTimeMillis:J

    .line 114
    iget-object v5, p0, Lorg/chromium/content/browser/input/JoystickZoomProvider;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v5}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v5

    iget-object v6, p0, Lorg/chromium/content/browser/input/JoystickZoomProvider;->mZoomRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onMotion(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 65
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_0

    .line 86
    :goto_0
    return v0

    .line 67
    :cond_0
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/input/JoystickZoomProvider;->computeNewZoomVelocity(Landroid/view/MotionEvent;)V

    .line 68
    iget v1, p0, Lorg/chromium/content/browser/input/JoystickZoomProvider;->mZoomInVelocity:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iget v1, p0, Lorg/chromium/content/browser/input/JoystickZoomProvider;->mZoomOutVelocity:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 69
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/JoystickZoomProvider;->stop()V

    goto :goto_0

    .line 72
    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/input/JoystickZoomProvider;->mZoomRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_2

    .line 73
    new-instance v0, Lorg/chromium/content/browser/input/JoystickZoomProvider$1;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/input/JoystickZoomProvider$1;-><init>(Lorg/chromium/content/browser/input/JoystickZoomProvider;)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/JoystickZoomProvider;->mZoomRunnable:Ljava/lang/Runnable;

    .line 80
    :cond_2
    iget-wide v0, p0, Lorg/chromium/content/browser/input/JoystickZoomProvider;->mLastAnimateTimeMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 81
    iget-object v0, p0, Lorg/chromium/content/browser/input/JoystickZoomProvider;->mSystemAnimationIntervalProvider:Lorg/chromium/content/browser/input/AnimationIntervalProvider;

    invoke-interface {v0}, Lorg/chromium/content/browser/input/AnimationIntervalProvider;->getLastAnimationFrameInterval()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/content/browser/input/JoystickZoomProvider;->mLastAnimateTimeMillis:J

    .line 83
    iget-object v0, p0, Lorg/chromium/content/browser/input/JoystickZoomProvider;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/content/browser/input/JoystickZoomProvider;->mZoomRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 84
    iget-object v0, p0, Lorg/chromium/content/browser/input/JoystickZoomProvider;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    iget v1, p0, Lorg/chromium/content/browser/input/JoystickZoomProvider;->mZoomXcoord:I

    iget v2, p0, Lorg/chromium/content/browser/input/JoystickZoomProvider;->mZoomYcoord:I

    invoke-virtual {v0, v1, v2}, Lorg/chromium/content/browser/ContentViewCore;->pinchBegin(II)Z

    .line 86
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected stop()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 90
    iget-wide v0, p0, Lorg/chromium/content/browser/input/JoystickZoomProvider;->mLastAnimateTimeMillis:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lorg/chromium/content/browser/input/JoystickZoomProvider;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->pinchEnd()Z

    .line 92
    iput-wide v2, p0, Lorg/chromium/content/browser/input/JoystickZoomProvider;->mLastAnimateTimeMillis:J

    .line 94
    :cond_0
    return-void
.end method
