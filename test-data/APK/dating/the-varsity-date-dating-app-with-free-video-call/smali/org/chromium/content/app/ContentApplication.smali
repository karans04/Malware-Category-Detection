.class public abstract Lorg/chromium/content/app/ContentApplication;
.super Lorg/chromium/base/BaseChromiumApplication;
.source "ContentApplication.java"


# instance fields
.field private mLibraryDependenciesInitialized:Z

.field private mTracingController:Lorg/chromium/content/browser/TracingControllerAndroid;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/chromium/content/app/ContentApplication;-><init>(Z)V

    .line 25
    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 0
    .param p1, "shouldInitializeApplicationStatusTracking"    # Z

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lorg/chromium/base/BaseChromiumApplication;-><init>(Z)V

    .line 29
    return-void
.end method


# virtual methods
.method public areLibraryDependenciesInitialized()Z
    .locals 1
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 76
    iget-boolean v0, p0, Lorg/chromium/content/app/ContentApplication;->mLibraryDependenciesInitialized:Z

    return v0
.end method

.method getTracingController()Lorg/chromium/content/browser/TracingControllerAndroid;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lorg/chromium/content/app/ContentApplication;->mTracingController:Lorg/chromium/content/browser/TracingControllerAndroid;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lorg/chromium/content/browser/TracingControllerAndroid;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/TracingControllerAndroid;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/content/app/ContentApplication;->mTracingController:Lorg/chromium/content/browser/TracingControllerAndroid;

    .line 35
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/app/ContentApplication;->mTracingController:Lorg/chromium/content/browser/TracingControllerAndroid;

    return-object v0
.end method

.method protected initializeLibraryDependencies()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 40
    invoke-super {p0}, Lorg/chromium/base/BaseChromiumApplication;->onCreate()V

    .line 43
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    new-instance v1, Lorg/chromium/content/app/ContentApplication$1;

    invoke-direct {v1, p0}, Lorg/chromium/content/app/ContentApplication$1;-><init>(Lorg/chromium/content/app/ContentApplication;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 59
    invoke-virtual {p0}, Lorg/chromium/content/app/ContentApplication;->initializeLibraryDependencies()V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/app/ContentApplication;->mLibraryDependenciesInitialized:Z

    .line 61
    return-void
.end method

.method public onTerminate()V
    .locals 1

    .prologue
    .line 87
    :try_start_0
    invoke-virtual {p0}, Lorg/chromium/content/app/ContentApplication;->getTracingController()Lorg/chromium/content/browser/TracingControllerAndroid;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/content/browser/TracingControllerAndroid;->unregisterReceiver(Landroid/content/Context;)V

    .line 88
    invoke-virtual {p0}, Lorg/chromium/content/app/ContentApplication;->getTracingController()Lorg/chromium/content/browser/TracingControllerAndroid;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/TracingControllerAndroid;->destroy()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    invoke-super {p0}, Lorg/chromium/base/BaseChromiumApplication;->onTerminate()V

    .line 94
    return-void

    .line 89
    :catch_0
    move-exception v0

    goto :goto_0
.end method
