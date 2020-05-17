.class Lorg/chromium/content/browser/ContentViewCore$ShowKeyboardResultReceiver;
.super Landroid/os/ResultReceiver;
.source "ContentViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/ContentViewCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShowKeyboardResultReceiver"
.end annotation


# instance fields
.field private final mContentViewCore:Ljava/lang/ref/WeakReference;
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
.method public constructor <init>(Lorg/chromium/content/browser/ContentViewCore;Landroid/os/Handler;)V
    .locals 1
    .param p1, "contentViewCore"    # Lorg/chromium/content/browser/ContentViewCore;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 381
    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 382
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$ShowKeyboardResultReceiver;->mContentViewCore:Ljava/lang/ref/WeakReference;

    .line 383
    return-void
.end method


# virtual methods
.method public onReceiveResult(ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 387
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore$ShowKeyboardResultReceiver;->mContentViewCore:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/ContentViewCore;

    .line 388
    .local v0, "contentViewCore":Lorg/chromium/content/browser/ContentViewCore;
    if-nez v0, :cond_0

    .line 390
    :goto_0
    return-void

    .line 389
    :cond_0
    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewCore;->onShowKeyboardReceiveResult(I)V

    goto :goto_0
.end method
