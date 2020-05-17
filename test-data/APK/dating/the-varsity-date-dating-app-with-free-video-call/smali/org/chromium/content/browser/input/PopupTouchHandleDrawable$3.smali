.class Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$3;
.super Lorg/chromium/content_public/browser/GestureStateListener;
.source "PopupTouchHandleDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;-><init>(Lorg/chromium/content/browser/ContentViewCore;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$3;->this$0:Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;

    invoke-direct {p0}, Lorg/chromium/content_public/browser/GestureStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestroyed()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$3;->this$0:Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;

    invoke-static {v0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->access$700(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;)V

    .line 165
    return-void
.end method

.method public onFlingStartGesture(IIII)V
    .locals 2
    .param p1, "vx"    # I
    .param p2, "vy"    # I
    .param p3, "scrollOffsetY"    # I
    .param p4, "scrollExtentY"    # I

    .prologue
    .line 152
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$3;->this$0:Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->access$400(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;Z)V

    .line 153
    return-void
.end method

.method public onScrollEnded(II)V
    .locals 2
    .param p1, "scrollOffsetX"    # I
    .param p2, "scrollOffsetY"    # I

    .prologue
    .line 144
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$3;->this$0:Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->access$400(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;Z)V

    .line 145
    return-void
.end method

.method public onScrollOffsetOrExtentChanged(II)V
    .locals 1
    .param p1, "scrollOffsetY"    # I
    .param p2, "scrollExtentY"    # I

    .prologue
    .line 156
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$3;->this$0:Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;

    invoke-static {v0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->access$500(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;)V

    .line 157
    return-void
.end method

.method public onScrollStarted(II)V
    .locals 2
    .param p1, "scrollOffsetX"    # I
    .param p2, "scrollOffsetY"    # I

    .prologue
    .line 140
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$3;->this$0:Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->access$400(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;Z)V

    .line 141
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 160
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$3;->this$0:Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;

    invoke-static {v0, p1}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->access$600(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;Z)V

    .line 161
    return-void
.end method
