.class public abstract Lorg/chromium/content_public/browser/WebContentsObserver;
.super Ljava/lang/Object;
.source "WebContentsObserver.java"


# instance fields
.field private mWebContents:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/chromium/content_public/browser/WebContents;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 1
    .param p1, "webContents"    # Lorg/chromium/content_public/browser/WebContents;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/chromium/content_public/browser/WebContentsObserver;->mWebContents:Ljava/lang/ref/WeakReference;

    .line 23
    invoke-interface {p1, p0}, Lorg/chromium/content_public/browser/WebContents;->addObserver(Lorg/chromium/content_public/browser/WebContentsObserver;)V

    .line 24
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 178
    iget-object v1, p0, Lorg/chromium/content_public/browser/WebContentsObserver;->mWebContents:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iget-object v1, p0, Lorg/chromium/content_public/browser/WebContentsObserver;->mWebContents:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/WebContents;

    .line 180
    .local v0, "webContents":Lorg/chromium/content_public/browser/WebContents;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/chromium/content_public/browser/WebContentsObserver;->mWebContents:Ljava/lang/ref/WeakReference;

    .line 181
    if-eqz v0, :cond_0

    .line 182
    invoke-interface {v0, p0}, Lorg/chromium/content_public/browser/WebContents;->removeObserver(Lorg/chromium/content_public/browser/WebContentsObserver;)V

    goto :goto_0
.end method

.method public didAttachInterstitialPage()V
    .locals 0

    .prologue
    .line 146
    return-void
.end method

.method public didChangeThemeColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 157
    return-void
.end method

.method public didCommitProvisionalLoadForFrame(JZLjava/lang/String;I)V
    .locals 0
    .param p1, "frameId"    # J
    .param p3, "isMainFrame"    # Z
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "transitionType"    # I

    .prologue
    .line 122
    return-void
.end method

.method public didDetachInterstitialPage()V
    .locals 0

    .prologue
    .line 151
    return-void
.end method

.method public didFailLoad(ZZILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "isProvisionalLoad"    # Z
    .param p2, "isMainFrame"    # Z
    .param p3, "errorCode"    # I
    .param p4, "description"    # Ljava/lang/String;
    .param p5, "failingUrl"    # Ljava/lang/String;
    .param p6, "wasIgnoredByHandler"    # Z

    .prologue
    .line 66
    return-void
.end method

.method public didFinishLoad(JLjava/lang/String;Z)V
    .locals 0
    .param p1, "frameId"    # J
    .param p3, "validatedUrl"    # Ljava/lang/String;
    .param p4, "isMainFrame"    # Z

    .prologue
    .line 130
    return-void
.end method

.method public didFinishNavigation(ZZZ)V
    .locals 0
    .param p1, "isMainFrame"    # Z
    .param p2, "isErrorPage"    # Z
    .param p3, "hasCommitted"    # Z

    .prologue
    .line 45
    return-void
.end method

.method public didFirstVisuallyNonEmptyPaint()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public didNavigateAnyFrame(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "baseUrl"    # Ljava/lang/String;
    .param p3, "isReload"    # Z

    .prologue
    .line 91
    return-void
.end method

.method public didNavigateMainFrame(Ljava/lang/String;Ljava/lang/String;ZZI)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "baseUrl"    # Ljava/lang/String;
    .param p3, "isNavigationToDifferentPage"    # Z
    .param p4, "isFragmentNavigation"    # Z
    .param p5, "statusCode"    # I

    .prologue
    .line 78
    return-void
.end method

.method public didStartLoading(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 51
    return-void
.end method

.method public didStartNavigationToPendingEntry(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 163
    return-void
.end method

.method public didStartProvisionalLoadForFrame(JJZLjava/lang/String;ZZ)V
    .locals 0
    .param p1, "frameId"    # J
    .param p3, "parentFrameId"    # J
    .param p5, "isMainFrame"    # Z
    .param p6, "validatedUrl"    # Ljava/lang/String;
    .param p7, "isErrorPage"    # Z
    .param p8, "isIframeSrcdoc"    # Z

    .prologue
    .line 110
    return-void
.end method

.method public didStopLoading(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 57
    return-void
.end method

.method public documentAvailableInMainFrame()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public documentLoadedInFrame(JZ)V
    .locals 0
    .param p1, "frameId"    # J
    .param p3, "isMainFrame"    # Z

    .prologue
    .line 136
    return-void
.end method

.method public mediaSessionStateChanged(ZZLorg/chromium/content_public/common/MediaMetadata;)V
    .locals 0
    .param p1, "isControllable"    # Z
    .param p2, "isSuspended"    # Z
    .param p3, "metadata"    # Lorg/chromium/content_public/common/MediaMetadata;

    .prologue
    .line 172
    return-void
.end method

.method public navigationEntryCommitted()V
    .locals 0

    .prologue
    .line 141
    return-void
.end method

.method public renderProcessGone(Z)V
    .locals 0
    .param p1, "wasOomProtected"    # Z

    .prologue
    .line 32
    return-void
.end method

.method public renderViewReady()V
    .locals 0

    .prologue
    .line 30
    return-void
.end method
