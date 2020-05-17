.class Lorg/chromium/content/browser/ContentViewCore$ContentViewWebContentsObserver;
.super Lorg/chromium/content_public/browser/WebContentsObserver;
.source "ContentViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/ContentViewCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContentViewWebContentsObserver"
.end annotation


# instance fields
.field private final mWeakContentViewCore:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/chromium/content/browser/ContentViewCore;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 1
    .param p1, "contentViewCore"    # Lorg/chromium/content/browser/ContentViewCore;

    .prologue
    .line 307
    invoke-virtual {p1}, Lorg/chromium/content/browser/ContentViewCore;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/content_public/browser/WebContentsObserver;-><init>(Lorg/chromium/content_public/browser/WebContents;)V

    .line 308
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewWebContentsObserver;->mWeakContentViewCore:Ljava/lang/ref/WeakReference;

    .line 309
    return-void
.end method

.method private determinedProcessVisibility()V
    .locals 2

    .prologue
    .line 349
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewWebContentsObserver;->mWeakContentViewCore:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/ContentViewCore;

    .line 350
    .local v0, "contentViewCore":Lorg/chromium/content/browser/ContentViewCore;
    if-nez v0, :cond_0

    .line 356
    :goto_0
    return-void

    .line 355
    :cond_0
    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getCurrentRenderProcessId()I

    move-result v1

    invoke-static {v1}, Lorg/chromium/content/browser/ChildProcessLauncher;->determinedVisibility(I)V

    goto :goto_0
.end method

.method private resetPopupsAndInput()V
    .locals 2

    .prologue
    .line 341
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewWebContentsObserver;->mWeakContentViewCore:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/ContentViewCore;

    .line 342
    .local v0, "contentViewCore":Lorg/chromium/content/browser/ContentViewCore;
    if-nez v0, :cond_0

    .line 346
    :goto_0
    return-void

    .line 343
    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->access$502(Lorg/chromium/content/browser/ContentViewCore;Z)Z

    .line 344
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewCore;->access$600(Lorg/chromium/content/browser/ContentViewCore;)V

    .line 345
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewCore;->access$700(Lorg/chromium/content/browser/ContentViewCore;)V

    goto :goto_0
.end method


# virtual methods
.method public didFailLoad(ZZILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "isProvisionalLoad"    # Z
    .param p2, "isMainFrame"    # Z
    .param p3, "errorCode"    # I
    .param p4, "description"    # Ljava/lang/String;
    .param p5, "failingUrl"    # Ljava/lang/String;
    .param p6, "wasIgnoredByHandler"    # Z

    .prologue
    .line 317
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore$ContentViewWebContentsObserver;->determinedProcessVisibility()V

    .line 318
    :cond_0
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
    .line 323
    if-nez p3, :cond_0

    .line 325
    :goto_0
    return-void

    .line 324
    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore$ContentViewWebContentsObserver;->resetPopupsAndInput()V

    goto :goto_0
.end method

.method public navigationEntryCommitted()V
    .locals 0

    .prologue
    .line 337
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore$ContentViewWebContentsObserver;->determinedProcessVisibility()V

    .line 338
    return-void
.end method

.method public renderProcessGone(Z)V
    .locals 2
    .param p1, "wasOomProtected"    # Z

    .prologue
    .line 329
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore$ContentViewWebContentsObserver;->resetPopupsAndInput()V

    .line 330
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewWebContentsObserver;->mWeakContentViewCore:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/ContentViewCore;

    .line 331
    .local v0, "contentViewCore":Lorg/chromium/content/browser/ContentViewCore;
    if-nez v0, :cond_0

    .line 333
    :goto_0
    return-void

    .line 332
    :cond_0
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewCore;->access$400(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content/browser/input/ImeAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/input/ImeAdapter;->resetAndHideKeyboard()V

    goto :goto_0
.end method
