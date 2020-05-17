.class Lorg/xwalk/core/internal/XWalkContentView$XWalkContentViewApi16;
.super Lorg/xwalk/core/internal/XWalkContentView;
.source "XWalkContentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xwalk/core/internal/XWalkContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "XWalkContentViewApi16"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/chromium/content/browser/ContentViewCore;Lorg/xwalk/core/internal/XWalkViewInternal;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cvc"    # Lorg/chromium/content/browser/ContentViewCore;
    .param p3, "xwView"    # Lorg/xwalk/core/internal/XWalkViewInternal;

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/xwalk/core/internal/XWalkContentView;-><init>(Landroid/content/Context;Lorg/chromium/content/browser/ContentViewCore;Lorg/xwalk/core/internal/XWalkViewInternal;Lorg/xwalk/core/internal/XWalkContentView$1;)V

    .line 109
    return-void
.end method


# virtual methods
.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 2

    .prologue
    .line 123
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentView$XWalkContentViewApi16;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    .line 124
    .local v0, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v0, :cond_0

    .line 127
    .end local v0    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :goto_0
    return-object v0

    .restart local v0    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_0
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkContentView;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    goto :goto_0
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 113
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentView$XWalkContentViewApi16;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewCore;->supportsAccessibilityAction(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentView$XWalkContentViewApi16;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/content/browser/ContentViewCore;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    .line 117
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkContentView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_0
.end method
