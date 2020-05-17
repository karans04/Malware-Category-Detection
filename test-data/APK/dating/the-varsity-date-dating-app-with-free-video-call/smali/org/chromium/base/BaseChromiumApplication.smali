.class public Lorg/chromium/base/BaseChromiumApplication;
.super Landroid/app/Application;
.source "BaseChromiumApplication.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "cr.base"


# instance fields
.field private final mShouldInitializeApplicationStatusTracking:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/chromium/base/BaseChromiumApplication;-><init>(Z)V

    .line 21
    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 0
    .param p1, "shouldInitializeApplicationStatusTracking"    # Z

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 24
    iput-boolean p1, p0, Lorg/chromium/base/BaseChromiumApplication;->mShouldInitializeApplicationStatusTracking:Z

    .line 25
    return-void
.end method

.method public static initCommandLine(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/chromium/base/BaseChromiumApplication;

    invoke-virtual {v0}, Lorg/chromium/base/BaseChromiumApplication;->initCommandLine()V

    .line 48
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 30
    invoke-static {p0}, Lorg/chromium/base/multidex/ChromiumMultiDexInstaller;->install(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public initCommandLine()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 34
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 35
    invoke-static {p0}, Lorg/chromium/base/ApplicationStatusManager;->init(Landroid/app/Application;)V

    .line 36
    return-void
.end method
