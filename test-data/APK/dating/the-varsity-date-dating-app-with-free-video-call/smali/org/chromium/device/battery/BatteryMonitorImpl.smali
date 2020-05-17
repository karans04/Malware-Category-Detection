.class public Lorg/chromium/device/battery/BatteryMonitorImpl;
.super Ljava/lang/Object;
.source "BatteryMonitorImpl.java"

# interfaces
.implements Lorg/chromium/mojom/device/BatteryMonitor;


# static fields
.field private static final TAG:Ljava/lang/String; = "BatteryMonitorImpl"


# instance fields
.field private mCallback:Lorg/chromium/mojom/device/BatteryMonitor$QueryNextStatusResponse;

.field private final mFactory:Lorg/chromium/device/battery/BatteryMonitorFactory;

.field private mHasStatusToReport:Z

.field private mStatus:Lorg/chromium/mojom/device/BatteryStatus;

.field private mSubscribed:Z


# direct methods
.method public constructor <init>(Lorg/chromium/device/battery/BatteryMonitorFactory;)V
    .locals 1
    .param p1, "batteryMonitorFactory"    # Lorg/chromium/device/battery/BatteryMonitorFactory;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/chromium/device/battery/BatteryMonitorImpl;->mFactory:Lorg/chromium/device/battery/BatteryMonitorFactory;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/device/battery/BatteryMonitorImpl;->mHasStatusToReport:Z

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/device/battery/BatteryMonitorImpl;->mSubscribed:Z

    .line 32
    return-void
.end method

.method private unsubscribe()V
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lorg/chromium/device/battery/BatteryMonitorImpl;->mSubscribed:Z

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lorg/chromium/device/battery/BatteryMonitorImpl;->mFactory:Lorg/chromium/device/battery/BatteryMonitorFactory;

    invoke-virtual {v0, p0}, Lorg/chromium/device/battery/BatteryMonitorFactory;->unsubscribe(Lorg/chromium/device/battery/BatteryMonitorImpl;)V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/device/battery/BatteryMonitorImpl;->mSubscribed:Z

    .line 39
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/chromium/device/battery/BatteryMonitorImpl;->unsubscribe()V

    .line 44
    return-void
.end method

.method didChange(Lorg/chromium/mojom/device/BatteryStatus;)V
    .locals 1
    .param p1, "batteryStatus"    # Lorg/chromium/mojom/device/BatteryStatus;

    .prologue
    .line 67
    iput-object p1, p0, Lorg/chromium/device/battery/BatteryMonitorImpl;->mStatus:Lorg/chromium/mojom/device/BatteryStatus;

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/device/battery/BatteryMonitorImpl;->mHasStatusToReport:Z

    .line 70
    iget-object v0, p0, Lorg/chromium/device/battery/BatteryMonitorImpl;->mCallback:Lorg/chromium/mojom/device/BatteryMonitor$QueryNextStatusResponse;

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lorg/chromium/device/battery/BatteryMonitorImpl;->reportStatus()V

    .line 73
    :cond_0
    return-void
.end method

.method public onConnectionError(Lorg/chromium/mojo/system/MojoException;)V
    .locals 0
    .param p1, "e"    # Lorg/chromium/mojo/system/MojoException;

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/chromium/device/battery/BatteryMonitorImpl;->unsubscribe()V

    .line 49
    return-void
.end method

.method public queryNextStatus(Lorg/chromium/mojom/device/BatteryMonitor$QueryNextStatusResponse;)V
    .locals 2
    .param p1, "callback"    # Lorg/chromium/mojom/device/BatteryMonitor$QueryNextStatusResponse;

    .prologue
    .line 53
    iget-object v0, p0, Lorg/chromium/device/battery/BatteryMonitorImpl;->mCallback:Lorg/chromium/mojom/device/BatteryMonitor$QueryNextStatusResponse;

    if-eqz v0, :cond_1

    .line 54
    const-string v0, "BatteryMonitorImpl"

    const-string v1, "Overlapped call to queryNextStatus!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-direct {p0}, Lorg/chromium/device/battery/BatteryMonitorImpl;->unsubscribe()V

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    iput-object p1, p0, Lorg/chromium/device/battery/BatteryMonitorImpl;->mCallback:Lorg/chromium/mojom/device/BatteryMonitor$QueryNextStatusResponse;

    .line 61
    iget-boolean v0, p0, Lorg/chromium/device/battery/BatteryMonitorImpl;->mHasStatusToReport:Z

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lorg/chromium/device/battery/BatteryMonitorImpl;->reportStatus()V

    goto :goto_0
.end method

.method reportStatus()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lorg/chromium/device/battery/BatteryMonitorImpl;->mCallback:Lorg/chromium/mojom/device/BatteryMonitor$QueryNextStatusResponse;

    iget-object v1, p0, Lorg/chromium/device/battery/BatteryMonitorImpl;->mStatus:Lorg/chromium/mojom/device/BatteryStatus;

    invoke-interface {v0, v1}, Lorg/chromium/mojom/device/BatteryMonitor$QueryNextStatusResponse;->call(Ljava/lang/Object;)V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/device/battery/BatteryMonitorImpl;->mCallback:Lorg/chromium/mojom/device/BatteryMonitor$QueryNextStatusResponse;

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/device/battery/BatteryMonitorImpl;->mHasStatusToReport:Z

    .line 79
    return-void
.end method
