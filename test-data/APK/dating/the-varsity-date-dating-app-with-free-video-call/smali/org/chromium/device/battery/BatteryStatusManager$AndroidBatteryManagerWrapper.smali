.class Lorg/chromium/device/battery/BatteryStatusManager$AndroidBatteryManagerWrapper;
.super Ljava/lang/Object;
.source "BatteryStatusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/device/battery/BatteryStatusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AndroidBatteryManagerWrapper"
.end annotation

.annotation build Lorg/chromium/base/VisibleForTesting;
.end annotation


# instance fields
.field private final mBatteryManager:Landroid/os/BatteryManager;


# direct methods
.method protected constructor <init>(Landroid/os/BatteryManager;)V
    .locals 0
    .param p1, "batteryManager"    # Landroid/os/BatteryManager;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/chromium/device/battery/BatteryStatusManager$AndroidBatteryManagerWrapper;->mBatteryManager:Landroid/os/BatteryManager;

    .line 59
    return-void
.end method


# virtual methods
.method public getIntProperty(I)I
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 62
    iget-object v0, p0, Lorg/chromium/device/battery/BatteryStatusManager$AndroidBatteryManagerWrapper;->mBatteryManager:Landroid/os/BatteryManager;

    invoke-virtual {v0, p1}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v0

    return v0
.end method
