.class public Lorg/xwalk/core/internal/XWalkContentsClient$XWalkWebContentsObserver;
.super Lorg/chromium/content_public/browser/WebContentsObserver;
.source "XWalkContentsClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xwalk/core/internal/XWalkContentsClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "XWalkWebContentsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/xwalk/core/internal/XWalkContentsClient;


# direct methods
.method public constructor <init>(Lorg/xwalk/core/internal/XWalkContentsClient;Lorg/chromium/content_public/browser/WebContents;)V
    .locals 0
    .param p2, "webContents"    # Lorg/chromium/content_public/browser/WebContents;

    .prologue
    .line 53
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkContentsClient$XWalkWebContentsObserver;->this$0:Lorg/xwalk/core/internal/XWalkContentsClient;

    .line 54
    invoke-direct {p0, p2}, Lorg/chromium/content_public/browser/WebContentsObserver;-><init>(Lorg/chromium/content_public/browser/WebContents;)V

    .line 55
    return-void
.end method


# virtual methods
.method public didChangeThemeColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 59
    const-string v1, "enable-theme-color"

    invoke-static {v1}, Lorg/xwalk/core/internal/XWalkPreferencesInternal;->getValue(Ljava/lang/String;)Z

    move-result v0

    .line 61
    .local v0, "themecolor":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClient$XWalkWebContentsObserver;->this$0:Lorg/xwalk/core/internal/XWalkContentsClient;

    invoke-virtual {v1, p1}, Lorg/xwalk/core/internal/XWalkContentsClient;->onDidChangeThemeColor(I)V

    .line 62
    :cond_0
    return-void
.end method

.method public didFailLoad(ZZILjava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "isProvisionalLoad"    # Z
    .param p2, "isMainFrame"    # Z
    .param p3, "errorCode"    # I
    .param p4, "description"    # Ljava/lang/String;
    .param p5, "failingUrl"    # Ljava/lang/String;
    .param p6, "wasIgnoredByHandler"    # Z

    .prologue
    .line 72
    const/4 v0, -0x3

    if-eq p3, v0, :cond_0

    if-nez p2, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClient$XWalkWebContentsObserver;->this$0:Lorg/xwalk/core/internal/XWalkContentsClient;

    invoke-static {p3}, Lorg/xwalk/core/internal/ErrorCodeConversionHelper;->convertErrorCode(I)I

    move-result v1

    invoke-virtual {v0, v1, p4, p5}, Lorg/xwalk/core/internal/XWalkContentsClient;->onReceivedError(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public didFinishLoad(JLjava/lang/String;Z)V
    .locals 0
    .param p1, "frameId"    # J
    .param p3, "validatedUrl"    # Ljava/lang/String;
    .param p4, "isMainFrame"    # Z

    .prologue
    .line 99
    return-void
.end method

.method public didNavigateAnyFrame(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "baseUrl"    # Ljava/lang/String;
    .param p3, "isReload"    # Z

    .prologue
    .line 88
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClient$XWalkWebContentsObserver;->this$0:Lorg/xwalk/core/internal/XWalkContentsClient;

    invoke-virtual {v0, p1, p3}, Lorg/xwalk/core/internal/XWalkContentsClient;->doUpdateVisitedHistory(Ljava/lang/String;Z)V

    .line 89
    return-void
.end method

.method public didStopLoading(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 66
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClient$XWalkWebContentsObserver;->this$0:Lorg/xwalk/core/internal/XWalkContentsClient;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkContentsClient;->access$000(Lorg/xwalk/core/internal/XWalkContentsClient;)Lorg/xwalk/core/internal/XWalkContentsClientCallbackHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContentsClientCallbackHelper;->postOnPageFinished(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public documentLoadedInFrame(JZ)V
    .locals 1
    .param p1, "frameId"    # J
    .param p3, "isMainFrame"    # Z

    .prologue
    .line 103
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClient$XWalkWebContentsObserver;->this$0:Lorg/xwalk/core/internal/XWalkContentsClient;

    invoke-virtual {v0, p1, p2}, Lorg/xwalk/core/internal/XWalkContentsClient;->onDocumentLoadedInFrame(J)V

    .line 104
    return-void
.end method
