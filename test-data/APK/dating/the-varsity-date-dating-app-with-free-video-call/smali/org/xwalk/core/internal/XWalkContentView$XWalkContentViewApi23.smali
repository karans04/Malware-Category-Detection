.class Lorg/xwalk/core/internal/XWalkContentView$XWalkContentViewApi23;
.super Lorg/xwalk/core/internal/XWalkContentView$XWalkContentViewApi16;
.source "XWalkContentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xwalk/core/internal/XWalkContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "XWalkContentViewApi23"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/chromium/content/browser/ContentViewCore;Lorg/xwalk/core/internal/XWalkViewInternal;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cvc"    # Lorg/chromium/content/browser/ContentViewCore;
    .param p3, "xwView"    # Lorg/xwalk/core/internal/XWalkViewInternal;

    .prologue
    .line 136
    invoke-direct {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkContentView$XWalkContentViewApi16;-><init>(Landroid/content/Context;Lorg/chromium/content/browser/ContentViewCore;Lorg/xwalk/core/internal/XWalkViewInternal;)V

    .line 137
    return-void
.end method


# virtual methods
.method public onProvideVirtualStructure(Landroid/view/ViewStructure;)V
    .locals 2
    .param p1, "structure"    # Landroid/view/ViewStructure;

    .prologue
    .line 141
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentView$XWalkContentViewApi23;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/chromium/content/browser/ContentViewCore;->onProvideVirtualStructure(Landroid/view/ViewStructure;Z)V

    .line 142
    return-void
.end method
