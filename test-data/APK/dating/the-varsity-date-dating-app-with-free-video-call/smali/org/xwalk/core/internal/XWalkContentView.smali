.class public Lorg/xwalk/core/internal/XWalkContentView;
.super Lorg/chromium/content/browser/ContentView;
.source "XWalkContentView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xwalk/core/internal/XWalkContentView$1;,
        Lorg/xwalk/core/internal/XWalkContentView$XWalkContentViewApi23;,
        Lorg/xwalk/core/internal/XWalkContentView$XWalkContentViewApi16;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "XWalkContentView"


# instance fields
.field private mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lorg/chromium/content/browser/ContentViewCore;Lorg/xwalk/core/internal/XWalkViewInternal;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cvc"    # Lorg/chromium/content/browser/ContentViewCore;
    .param p3, "xwView"    # Lorg/xwalk/core/internal/XWalkViewInternal;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/ContentView;-><init>(Landroid/content/Context;Lorg/chromium/content/browser/ContentViewCore;)V

    .line 39
    iput-object p3, p0, Lorg/xwalk/core/internal/XWalkContentView;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    .line 40
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lorg/chromium/content/browser/ContentViewCore;Lorg/xwalk/core/internal/XWalkViewInternal;Lorg/xwalk/core/internal/XWalkContentView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lorg/chromium/content/browser/ContentViewCore;
    .param p3, "x2"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p4, "x3"    # Lorg/xwalk/core/internal/XWalkContentView$1;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkContentView;-><init>(Landroid/content/Context;Lorg/chromium/content/browser/ContentViewCore;Lorg/xwalk/core/internal/XWalkViewInternal;)V

    return-void
.end method

.method public static createContentView(Landroid/content/Context;Lorg/chromium/content/browser/ContentViewCore;Lorg/xwalk/core/internal/XWalkViewInternal;)Lorg/xwalk/core/internal/XWalkContentView;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cvc"    # Lorg/chromium/content/browser/ContentViewCore;
    .param p2, "xwView"    # Lorg/xwalk/core/internal/XWalkViewInternal;

    .prologue
    .line 29
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 30
    new-instance v0, Lorg/xwalk/core/internal/XWalkContentView$XWalkContentViewApi23;

    invoke-direct {v0, p0, p1, p2}, Lorg/xwalk/core/internal/XWalkContentView$XWalkContentViewApi23;-><init>(Landroid/content/Context;Lorg/chromium/content/browser/ContentViewCore;Lorg/xwalk/core/internal/XWalkViewInternal;)V

    .line 34
    :goto_0
    return-object v0

    .line 31
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 32
    new-instance v0, Lorg/xwalk/core/internal/XWalkContentView$XWalkContentViewApi16;

    invoke-direct {v0, p0, p1, p2}, Lorg/xwalk/core/internal/XWalkContentView$XWalkContentViewApi16;-><init>(Landroid/content/Context;Lorg/chromium/content/browser/ContentViewCore;Lorg/xwalk/core/internal/XWalkViewInternal;)V

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lorg/xwalk/core/internal/XWalkContentView;

    invoke-direct {v0, p0, p1, p2}, Lorg/xwalk/core/internal/XWalkContentView;-><init>(Landroid/content/Context;Lorg/chromium/content/browser/ContentViewCore;Lorg/xwalk/core/internal/XWalkViewInternal;)V

    goto :goto_0
.end method


# virtual methods
.method public computeHorizontalScrollOffsetDelegate()I
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkContentView;->computeHorizontalScrollOffset()I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollRangeDelegate()I
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkContentView;->computeHorizontalScrollRange()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollExtentDelegate()I
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkContentView;->computeVerticalScrollExtent()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollOffsetDelegate()I
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkContentView;->computeVerticalScrollOffset()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollRangeDelegate()I
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkContentView;->computeVerticalScrollRange()I

    move-result v0

    return v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 44
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentView;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkViewInternal;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    return-object v0
.end method

.method public onCreateInputConnectionSuper(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 48
    invoke-super {p0, p1}, Lorg/chromium/content/browser/ContentView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    return-object v0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 100
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentView;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkViewInternal;->onFocusChangedDelegate(ZILandroid/graphics/Rect;)V

    .line 101
    invoke-super {p0, p1, p2, p3}, Lorg/chromium/content/browser/ContentView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 102
    return-void
.end method

.method public onScrollChanged(IIII)V
    .locals 2
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    const/4 v1, 0x0

    .line 67
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentView;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/xwalk/core/internal/XWalkViewInternal;->onScrollChangedDelegate(IIII)V

    .line 71
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentView;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v0, p1, p2, v1, v1}, Lorg/xwalk/core/internal/XWalkViewInternal;->onOverScrolledDelegate(IIZZ)V

    .line 72
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentView;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkViewInternal;->onTouchEventDelegate(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    const/4 v0, 0x1

    .line 62
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewCore;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public performLongClick()Z
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentView;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkViewInternal;->performLongClickDelegate()Z

    move-result v0

    return v0
.end method
