.class public Lorg/chromium/content/app/DownloadProcessService;
.super Lorg/chromium/content/app/ChildProcessService;
.source "DownloadProcessService.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "content"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final TAG:Ljava/lang/String; = "DownloadProcess"


# instance fields
.field private mCallback:Lorg/chromium/content/common/IChildProcessCallback;

.field private mClientContext:J

.field private mDownloadCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lorg/chromium/content/app/DownloadProcessService;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/app/DownloadProcessService;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/chromium/content/app/ChildProcessService;-><init>()V

    return-void
.end method

.method private onDownloadCompleted(Z)V
    .locals 1
    .param p1, "success"    # Z

    .prologue
    .line 75
    iget v0, p0, Lorg/chromium/content/app/DownloadProcessService;->mDownloadCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/chromium/content/app/DownloadProcessService;->mDownloadCount:I

    .line 76
    iget v0, p0, Lorg/chromium/content/app/DownloadProcessService;->mDownloadCount:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/app/DownloadProcessService;->stopSelf()V

    .line 77
    :cond_0
    return-void
.end method

.method private onDownloadStarted(ZI)V
    .locals 5
    .param p1, "started"    # Z
    .param p2, "downloadId"    # I

    .prologue
    .line 59
    iget-object v1, p0, Lorg/chromium/content/app/DownloadProcessService;->mCallback:Lorg/chromium/content/common/IChildProcessCallback;

    if-eqz v1, :cond_0

    .line 61
    :try_start_0
    iget-object v1, p0, Lorg/chromium/content/app/DownloadProcessService;->mCallback:Lorg/chromium/content/common/IChildProcessCallback;

    invoke-interface {v1, p1, p2}, Lorg/chromium/content/common/IChildProcessCallback;->onDownloadStarted(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    iget v1, p0, Lorg/chromium/content/app/DownloadProcessService;->mDownloadCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/chromium/content/app/DownloadProcessService;->mDownloadCount:I

    .line 67
    :cond_1
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DownloadProcess"

    const-string v2, "Unable to callback the browser process."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 33
    invoke-super {p0}, Lorg/chromium/content/app/ChildProcessService;->onCreate()V

    .line 36
    sget v0, Lorg/chromium/content/R$id;->download_service_notification:I

    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/chromium/content/app/DownloadProcessService;->startForeground(ILandroid/app/Notification;)V

    .line 37
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 42
    sget-boolean v2, Lorg/chromium/content/app/DownloadProcessService;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-ge v2, v3, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 43
    :cond_0
    invoke-virtual {p0, p1}, Lorg/chromium/content/app/DownloadProcessService;->initializeParams(Landroid/content/Intent;)V

    .line 44
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 45
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 46
    const-string v2, "com.google.android.apps.chrome.extra.child_process_callback"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 47
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Lorg/chromium/content/common/IChildProcessCallback$Stub;->asInterface(Landroid/os/IBinder;)Lorg/chromium/content/common/IChildProcessCallback;

    move-result-object v2

    iput-object v2, p0, Lorg/chromium/content/app/DownloadProcessService;->mCallback:Lorg/chromium/content/common/IChildProcessCallback;

    .line 48
    invoke-virtual {p0, v1}, Lorg/chromium/content/app/DownloadProcessService;->getServiceInfo(Landroid/os/Bundle;)V

    .line 50
    .end local v0    # "binder":Landroid/os/IBinder;
    :cond_1
    const/4 v2, 0x1

    return v2
.end method
