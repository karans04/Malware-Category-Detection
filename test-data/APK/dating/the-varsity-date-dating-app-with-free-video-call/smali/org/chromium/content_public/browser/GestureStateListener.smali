.class public Lorg/chromium/content_public/browser/GestureStateListener;
.super Ljava/lang/Object;
.source "GestureStateListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestroyed()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public onFlingEndGesture(II)V
    .locals 0
    .param p1, "scrollOffsetY"    # I
    .param p2, "scrollExtentY"    # I

    .prologue
    .line 30
    return-void
.end method

.method public onFlingStartGesture(IIII)V
    .locals 0
    .param p1, "vx"    # I
    .param p2, "vy"    # I
    .param p3, "scrollOffsetY"    # I
    .param p4, "scrollExtentY"    # I

    .prologue
    .line 25
    return-void
.end method

.method public onPinchEnded()V
    .locals 0

    .prologue
    .line 20
    return-void
.end method

.method public onPinchStarted()V
    .locals 0

    .prologue
    .line 15
    return-void
.end method

.method public onScrollEnded(II)V
    .locals 0
    .param p1, "scrollOffsetY"    # I
    .param p2, "scrollExtentY"    # I

    .prologue
    .line 48
    return-void
.end method

.method public onScrollOffsetOrExtentChanged(II)V
    .locals 0
    .param p1, "scrollOffsetY"    # I
    .param p2, "scrollExtentY"    # I

    .prologue
    .line 53
    return-void
.end method

.method public onScrollStarted(II)V
    .locals 0
    .param p1, "scrollOffsetY"    # I
    .param p2, "scrollExtentY"    # I

    .prologue
    .line 43
    return-void
.end method

.method public onScrollUpdateGestureConsumed()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.method public onShowUnhandledTapUIIfNeeded(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 65
    return-void
.end method

.method public onSingleTap(ZII)V
    .locals 0
    .param p1, "consumed"    # Z
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 59
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 70
    return-void
.end method
