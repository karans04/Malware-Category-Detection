.class public Lorg/chromium/device/battery/BatteryMonitorFactory;
.super Ljava/lang/Object;
.source "BatteryMonitorFactory.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final TAG:Ljava/lang/String; = "BatteryMonitorFactory"


# instance fields
.field private final mCallback:Lorg/chromium/device/battery/BatteryStatusManager$BatteryStatusCallback;

.field private final mManager:Lorg/chromium/device/battery/BatteryStatusManager;

.field private final mSubscribedMonitors:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lorg/chromium/device/battery/BatteryMonitorImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lorg/chromium/device/battery/BatteryMonitorFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/device/battery/BatteryMonitorFactory;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/chromium/device/battery/BatteryMonitorFactory;->mSubscribedMonitors:Ljava/util/HashSet;

    .line 30
    new-instance v0, Lorg/chromium/device/battery/BatteryMonitorFactory$1;

    invoke-direct {v0, p0}, Lorg/chromium/device/battery/BatteryMonitorFactory$1;-><init>(Lorg/chromium/device/battery/BatteryMonitorFactory;)V

    iput-object v0, p0, Lorg/chromium/device/battery/BatteryMonitorFactory;->mCallback:Lorg/chromium/device/battery/BatteryStatusManager$BatteryStatusCallback;

    .line 42
    sget-boolean v0, Lorg/chromium/device/battery/BatteryMonitorFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 43
    :cond_0
    new-instance v0, Lorg/chromium/device/battery/BatteryStatusManager;

    iget-object v1, p0, Lorg/chromium/device/battery/BatteryMonitorFactory;->mCallback:Lorg/chromium/device/battery/BatteryStatusManager$BatteryStatusCallback;

    invoke-direct {v0, p1, v1}, Lorg/chromium/device/battery/BatteryStatusManager;-><init>(Landroid/content/Context;Lorg/chromium/device/battery/BatteryStatusManager$BatteryStatusCallback;)V

    iput-object v0, p0, Lorg/chromium/device/battery/BatteryMonitorFactory;->mManager:Lorg/chromium/device/battery/BatteryStatusManager;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/device/battery/BatteryMonitorFactory;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/device/battery/BatteryMonitorFactory;

    .prologue
    .line 21
    iget-object v0, p0, Lorg/chromium/device/battery/BatteryMonitorFactory;->mSubscribedMonitors:Ljava/util/HashSet;

    return-object v0
.end method


# virtual methods
.method public createMonitor()Lorg/chromium/mojom/device/BatteryMonitor;
    .locals 3

    .prologue
    .line 47
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 49
    iget-object v1, p0, Lorg/chromium/device/battery/BatteryMonitorFactory;->mSubscribedMonitors:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/chromium/device/battery/BatteryMonitorFactory;->mManager:Lorg/chromium/device/battery/BatteryStatusManager;

    invoke-virtual {v1}, Lorg/chromium/device/battery/BatteryStatusManager;->start()Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    const-string v1, "BatteryMonitorFactory"

    const-string v2, "BatteryStatusManager failed to start."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_0
    new-instance v0, Lorg/chromium/device/battery/BatteryMonitorImpl;

    invoke-direct {v0, p0}, Lorg/chromium/device/battery/BatteryMonitorImpl;-><init>(Lorg/chromium/device/battery/BatteryMonitorFactory;)V

    .line 56
    .local v0, "monitor":Lorg/chromium/device/battery/BatteryMonitorImpl;
    iget-object v1, p0, Lorg/chromium/device/battery/BatteryMonitorFactory;->mSubscribedMonitors:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 57
    return-object v0
.end method

.method unsubscribe(Lorg/chromium/device/battery/BatteryMonitorImpl;)V
    .locals 1
    .param p1, "monitor"    # Lorg/chromium/device/battery/BatteryMonitorImpl;

    .prologue
    .line 61
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 63
    sget-boolean v0, Lorg/chromium/device/battery/BatteryMonitorFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/device/battery/BatteryMonitorFactory;->mSubscribedMonitors:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 64
    :cond_0
    iget-object v0, p0, Lorg/chromium/device/battery/BatteryMonitorFactory;->mSubscribedMonitors:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 65
    iget-object v0, p0, Lorg/chromium/device/battery/BatteryMonitorFactory;->mSubscribedMonitors:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lorg/chromium/device/battery/BatteryMonitorFactory;->mManager:Lorg/chromium/device/battery/BatteryStatusManager;

    invoke-virtual {v0}, Lorg/chromium/device/battery/BatteryStatusManager;->stop()V

    .line 68
    :cond_1
    return-void
.end method
