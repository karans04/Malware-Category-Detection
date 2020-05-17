.class Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;
.super Lorg/chromium/content_public/browser/WebContentsObserver;
.source "WebContentsObserverProxy.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "content"
.end annotation

.annotation build Lorg/chromium/base/annotations/MainDex;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mNativeWebContentsObserverProxy:J

.field private final mObservers:Lorg/chromium/base/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/ObserverList",
            "<",
            "Lorg/chromium/content_public/browser/WebContentsObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/ObserverList$RewindableIterator",
            "<",
            "Lorg/chromium/content_public/browser/WebContentsObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/chromium/content/browser/webcontents/WebContentsImpl;)V
    .locals 2
    .param p1, "webContents"    # Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/chromium/content_public/browser/WebContentsObserver;-><init>()V

    .line 36
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 37
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->nativeInit(Lorg/chromium/content/browser/webcontents/WebContentsImpl;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mNativeWebContentsObserverProxy:J

    .line 38
    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObservers:Lorg/chromium/base/ObserverList;

    .line 39
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->rewindableIterator()Lorg/chromium/base/ObserverList$RewindableIterator;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    .line 40
    return-void
.end method

.method private native nativeDestroy(J)V
.end method

.method private native nativeInit(Lorg/chromium/content/browser/webcontents/WebContentsImpl;)J
.end method


# virtual methods
.method addObserver(Lorg/chromium/content_public/browser/WebContentsObserver;)V
    .locals 4
    .param p1, "observer"    # Lorg/chromium/content_public/browser/WebContentsObserver;

    .prologue
    .line 47
    sget-boolean v0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mNativeWebContentsObserverProxy:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 48
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    .line 49
    return-void
.end method

.method public destroy()V
    .locals 4
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 251
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 252
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->rewind()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/WebContentsObserver;

    invoke-virtual {v0}, Lorg/chromium/content_public/browser/WebContentsObserver;->destroy()V

    goto :goto_0

    .line 257
    :cond_0
    sget-boolean v0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 258
    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->clear()V

    .line 260
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mNativeWebContentsObserverProxy:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 261
    iget-wide v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mNativeWebContentsObserverProxy:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->nativeDestroy(J)V

    .line 262
    iput-wide v2, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mNativeWebContentsObserverProxy:J

    .line 264
    :cond_2
    return-void
.end method

.method public didAttachInterstitialPage()V
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->rewind()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/WebContentsObserver;

    invoke-virtual {v0}, Lorg/chromium/content_public/browser/WebContentsObserver;->didAttachInterstitialPage()V

    goto :goto_0

    .line 209
    :cond_0
    return-void
.end method

.method public didChangeThemeColor(I)V
    .locals 1
    .param p1, "color"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->rewind()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/WebContentsObserver;

    invoke-virtual {v0, p1}, Lorg/chromium/content_public/browser/WebContentsObserver;->didChangeThemeColor(I)V

    goto :goto_0

    .line 225
    :cond_0
    return-void
.end method

.method public didCommitProvisionalLoadForFrame(JZLjava/lang/String;I)V
    .locals 7
    .param p1, "frameId"    # J
    .param p3, "isMainFrame"    # Z
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "transitionType"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->rewind()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/content_public/browser/WebContentsObserver;

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lorg/chromium/content_public/browser/WebContentsObserver;->didCommitProvisionalLoadForFrame(JZLjava/lang/String;I)V

    goto :goto_0

    .line 177
    :cond_0
    return-void
.end method

.method public didDetachInterstitialPage()V
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 214
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->rewind()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/WebContentsObserver;

    invoke-virtual {v0}, Lorg/chromium/content_public/browser/WebContentsObserver;->didDetachInterstitialPage()V

    goto :goto_0

    .line 217
    :cond_0
    return-void
.end method

.method public didFailLoad(ZZILjava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "isProvisionalLoad"    # Z
    .param p2, "isMainFrame"    # Z
    .param p3, "errorCode"    # I
    .param p4, "description"    # Ljava/lang/String;
    .param p5, "failingUrl"    # Ljava/lang/String;
    .param p6, "wasIgnoredByHandler"    # Z
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->rewind()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/WebContentsObserver;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/chromium/content_public/browser/WebContentsObserver;->didFailLoad(ZZILjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 123
    :cond_0
    return-void
.end method

.method public didFinishLoad(JLjava/lang/String;Z)V
    .locals 1
    .param p1, "frameId"    # J
    .param p3, "validatedUrl"    # Ljava/lang/String;
    .param p4, "isMainFrame"    # Z
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->rewind()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/WebContentsObserver;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/chromium/content_public/browser/WebContentsObserver;->didFinishLoad(JLjava/lang/String;Z)V

    goto :goto_0

    .line 185
    :cond_0
    return-void
.end method

.method public didFinishNavigation(ZZZ)V
    .locals 1
    .param p1, "isMainFrame"    # Z
    .param p2, "isErrorPage"    # Z
    .param p3, "hasCommitted"    # Z
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->rewind()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/WebContentsObserver;

    invoke-virtual {v0, p1, p2, p3}, Lorg/chromium/content_public/browser/WebContentsObserver;->didFinishNavigation(ZZZ)V

    goto :goto_0

    .line 97
    :cond_0
    return-void
.end method

.method public didFirstVisuallyNonEmptyPaint()V
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->rewind()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/WebContentsObserver;

    invoke-virtual {v0}, Lorg/chromium/content_public/browser/WebContentsObserver;->didFirstVisuallyNonEmptyPaint()V

    goto :goto_0

    .line 141
    :cond_0
    return-void
.end method

.method public didNavigateAnyFrame(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "baseUrl"    # Ljava/lang/String;
    .param p3, "isReload"    # Z
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->rewind()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/WebContentsObserver;

    invoke-virtual {v0, p1, p2, p3}, Lorg/chromium/content_public/browser/WebContentsObserver;->didNavigateAnyFrame(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 149
    :cond_0
    return-void
.end method

.method public didNavigateMainFrame(Ljava/lang/String;Ljava/lang/String;ZZI)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "baseUrl"    # Ljava/lang/String;
    .param p3, "isNavigationToDifferentPage"    # Z
    .param p4, "isFragmentNavigation"    # Z
    .param p5, "statusCode"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->rewind()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/WebContentsObserver;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/chromium/content_public/browser/WebContentsObserver;->didNavigateMainFrame(Ljava/lang/String;Ljava/lang/String;ZZI)V

    goto :goto_0

    .line 133
    :cond_0
    return-void
.end method

.method public didStartLoading(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->rewind()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/WebContentsObserver;

    invoke-virtual {v0, p1}, Lorg/chromium/content_public/browser/WebContentsObserver;->didStartLoading(Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_0
    return-void
.end method

.method public didStartNavigationToPendingEntry(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 230
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->rewind()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/WebContentsObserver;

    invoke-virtual {v0, p1}, Lorg/chromium/content_public/browser/WebContentsObserver;->didStartNavigationToPendingEntry(Ljava/lang/String;)V

    goto :goto_0

    .line 233
    :cond_0
    return-void
.end method

.method public didStartProvisionalLoadForFrame(JJZLjava/lang/String;ZZ)V
    .locals 11
    .param p1, "frameId"    # J
    .param p3, "parentFrameId"    # J
    .param p5, "isMainFrame"    # Z
    .param p6, "validatedUrl"    # Ljava/lang/String;
    .param p7, "isErrorPage"    # Z
    .param p8, "isIframeSrcdoc"    # Z
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->rewind()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/content_public/browser/WebContentsObserver;

    move-wide v2, p1

    move-wide v4, p3

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lorg/chromium/content_public/browser/WebContentsObserver;->didStartProvisionalLoadForFrame(JJZLjava/lang/String;ZZ)V

    goto :goto_0

    .line 167
    :cond_0
    return-void
.end method

.method public didStopLoading(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->rewind()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/WebContentsObserver;

    invoke-virtual {v0, p1}, Lorg/chromium/content_public/browser/WebContentsObserver;->didStopLoading(Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :cond_0
    return-void
.end method

.method public documentAvailableInMainFrame()V
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->rewind()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/WebContentsObserver;

    invoke-virtual {v0}, Lorg/chromium/content_public/browser/WebContentsObserver;->documentAvailableInMainFrame()V

    goto :goto_0

    .line 157
    :cond_0
    return-void
.end method

.method public documentLoadedInFrame(JZ)V
    .locals 1
    .param p1, "frameId"    # J
    .param p3, "isMainFrame"    # Z
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->rewind()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/WebContentsObserver;

    invoke-virtual {v0, p1, p2, p3}, Lorg/chromium/content_public/browser/WebContentsObserver;->documentLoadedInFrame(JZ)V

    goto :goto_0

    .line 193
    :cond_0
    return-void
.end method

.method public getObserversForTesting()Lorg/chromium/base/ObserverList$RewindableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/chromium/base/ObserverList$RewindableIterator",
            "<",
            "Lorg/chromium/content_public/browser/WebContentsObserver;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->rewindableIterator()Lorg/chromium/base/ObserverList$RewindableIterator;

    move-result-object v0

    return-object v0
.end method

.method hasObservers()Z
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mediaSessionStateChanged(ZZLorg/chromium/content_public/common/MediaMetadata;)V
    .locals 1
    .param p1, "isControllable"    # Z
    .param p2, "isSuspended"    # Z
    .param p3, "metadata"    # Lorg/chromium/content_public/common/MediaMetadata;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->rewind()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/WebContentsObserver;

    invoke-virtual {v0, p1, p2, p3}, Lorg/chromium/content_public/browser/WebContentsObserver;->mediaSessionStateChanged(ZZLorg/chromium/content_public/common/MediaMetadata;)V

    goto :goto_0

    .line 243
    :cond_0
    return-void
.end method

.method public navigationEntryCommitted()V
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 198
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->rewind()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/WebContentsObserver;

    invoke-virtual {v0}, Lorg/chromium/content_public/browser/WebContentsObserver;->navigationEntryCommitted()V

    goto :goto_0

    .line 201
    :cond_0
    return-void
.end method

.method removeObserver(Lorg/chromium/content_public/browser/WebContentsObserver;)V
    .locals 1
    .param p1, "observer"    # Lorg/chromium/content_public/browser/WebContentsObserver;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method

.method public renderProcessGone(Z)V
    .locals 1
    .param p1, "wasOomProtected"    # Z
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->rewind()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/WebContentsObserver;

    invoke-virtual {v0, p1}, Lorg/chromium/content_public/browser/WebContentsObserver;->renderProcessGone(Z)V

    goto :goto_0

    .line 88
    :cond_0
    return-void
.end method

.method public renderViewReady()V
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->rewind()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lorg/chromium/content/browser/webcontents/WebContentsObserverProxy;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/WebContentsObserver;

    invoke-virtual {v0}, Lorg/chromium/content_public/browser/WebContentsObserver;->renderViewReady()V

    goto :goto_0

    .line 80
    :cond_0
    return-void
.end method
