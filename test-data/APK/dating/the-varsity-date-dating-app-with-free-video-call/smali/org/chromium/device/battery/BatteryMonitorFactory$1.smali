.class Lorg/chromium/device/battery/BatteryMonitorFactory$1;
.super Ljava/lang/Object;
.source "BatteryMonitorFactory.java"

# interfaces
.implements Lorg/chromium/device/battery/BatteryStatusManager$BatteryStatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/device/battery/BatteryMonitorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/device/battery/BatteryMonitorFactory;


# direct methods
.method constructor <init>(Lorg/chromium/device/battery/BatteryMonitorFactory;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lorg/chromium/device/battery/BatteryMonitorFactory$1;->this$0:Lorg/chromium/device/battery/BatteryMonitorFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatteryStatusChanged(Lorg/chromium/mojom/device/BatteryStatus;)V
    .locals 3
    .param p1, "batteryStatus"    # Lorg/chromium/mojom/device/BatteryStatus;

    .prologue
    .line 33
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 35
    iget-object v2, p0, Lorg/chromium/device/battery/BatteryMonitorFactory$1;->this$0:Lorg/chromium/device/battery/BatteryMonitorFactory;

    invoke-static {v2}, Lorg/chromium/device/battery/BatteryMonitorFactory;->access$000(Lorg/chromium/device/battery/BatteryMonitorFactory;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/device/battery/BatteryMonitorImpl;

    .line 36
    .local v1, "monitor":Lorg/chromium/device/battery/BatteryMonitorImpl;
    invoke-virtual {v1, p1}, Lorg/chromium/device/battery/BatteryMonitorImpl;->didChange(Lorg/chromium/mojom/device/BatteryStatus;)V

    goto :goto_0

    .line 38
    .end local v1    # "monitor":Lorg/chromium/device/battery/BatteryMonitorImpl;
    :cond_0
    return-void
.end method
