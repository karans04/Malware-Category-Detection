.class Lorg/xwalk/core/internal/XWalkContent$3;
.super Ljava/lang/Object;
.source "XWalkContent.java"

# interfaces
.implements Lorg/xwalk/core/internal/XWalkSettingsInternal$ZoomSupportChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xwalk/core/internal/XWalkContent;->setNativeContent(JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/xwalk/core/internal/XWalkContent;


# direct methods
.method constructor <init>(Lorg/xwalk/core/internal/XWalkContent;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkContent$3;->this$0:Lorg/xwalk/core/internal/XWalkContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGestureZoomSupportChanged(ZZ)V
    .locals 1
    .param p1, "supportsDoubleTapZoom"    # Z
    .param p2, "supportsMultiTouchZoom"    # Z

    .prologue
    .line 249
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent$3;->this$0:Lorg/xwalk/core/internal/XWalkContent;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkContent;->access$400(Lorg/xwalk/core/internal/XWalkContent;)Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewCore;->updateDoubleTapSupport(Z)V

    .line 250
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContent$3;->this$0:Lorg/xwalk/core/internal/XWalkContent;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkContent;->access$400(Lorg/xwalk/core/internal/XWalkContent;)Lorg/chromium/content/browser/ContentViewCore;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/chromium/content/browser/ContentViewCore;->updateMultiTouchZoomSupport(Z)V

    .line 251
    return-void
.end method
