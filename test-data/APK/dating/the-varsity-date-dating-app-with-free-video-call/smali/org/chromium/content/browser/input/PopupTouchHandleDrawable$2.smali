.class Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$2;
.super Lorg/chromium/content/browser/ContainerViewObserver;
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
    .line 125
    iput-object p1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$2;->this$0:Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;

    invoke-direct {p0}, Lorg/chromium/content/browser/ContainerViewObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onContainerViewChanged(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "newContainerView"    # Landroid/view/ViewGroup;

    .prologue
    .line 130
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$2;->this$0:Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;

    invoke-static {v0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->access$100(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;)Lorg/chromium/content/browser/PositionObserver;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content/browser/PositionObserver;->clearListener()V

    .line 131
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$2;->this$0:Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;

    new-instance v1, Lorg/chromium/content/browser/ViewPositionObserver;

    invoke-direct {v1, p1}, Lorg/chromium/content/browser/ViewPositionObserver;-><init>(Landroid/view/View;)V

    invoke-static {v0, v1}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->access$102(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;Lorg/chromium/content/browser/PositionObserver;)Lorg/chromium/content/browser/PositionObserver;

    .line 132
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$2;->this$0:Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;

    invoke-static {v0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->access$200(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$2;->this$0:Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;

    invoke-static {v0}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->access$100(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;)Lorg/chromium/content/browser/PositionObserver;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable$2;->this$0:Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;

    invoke-static {v1}, Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;->access$300(Lorg/chromium/content/browser/input/PopupTouchHandleDrawable;)Lorg/chromium/content/browser/PositionObserver$Listener;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/chromium/content/browser/PositionObserver;->addListener(Lorg/chromium/content/browser/PositionObserver$Listener;)V

    .line 135
    :cond_0
    return-void
.end method
