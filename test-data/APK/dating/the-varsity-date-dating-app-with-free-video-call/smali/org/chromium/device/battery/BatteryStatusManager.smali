.class Lorg/chromium/device/battery/BatteryStatusManager;
.super Ljava/lang/Object;
.source "BatteryStatusManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/device/battery/BatteryStatusManager$AndroidBatteryManagerWrapper;,
        Lorg/chromium/device/battery/BatteryStatusManager$BatteryStatusCallback;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final TAG:Ljava/lang/String; = "BatteryStatusManager"


# instance fields
.field private mAndroidBatteryManager:Lorg/chromium/device/battery/BatteryStatusManager$AndroidBatteryManagerWrapper;

.field private final mAppContext:Landroid/content/Context;

.field private final mCallback:Lorg/chromium/device/battery/BatteryStatusManager$BatteryStatusCallback;

.field private mEnabled:Z

.field private final mFilter:Landroid/content/IntentFilter;

.field private final mIgnoreBatteryPresentState:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lorg/chromium/device/battery/BatteryStatusManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/device/battery/BatteryStatusManager;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Lorg/chromium/device/battery/BatteryStatusManager$BatteryStatusCallback;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lorg/chromium/device/battery/BatteryStatusManager$BatteryStatusCallback;

    .prologue
    .line 78
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Galaxy Nexus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v1, Lorg/chromium/device/battery/BatteryStatusManager$AndroidBatteryManagerWrapper;

    const-string v0, "batterymanager"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    invoke-direct {v1, v0}, Lorg/chromium/device/battery/BatteryStatusManager$AndroidBatteryManagerWrapper;-><init>(Landroid/os/BatteryManager;)V

    move-object v0, v1

    :goto_0
    invoke-direct {p0, p1, p2, v2, v0}, Lorg/chromium/device/battery/BatteryStatusManager;-><init>(Landroid/content/Context;Lorg/chromium/device/battery/BatteryStatusManager$BatteryStatusCallback;ZLorg/chromium/device/battery/BatteryStatusManager$AndroidBatteryManagerWrapper;)V

    .line 83
    return-void

    .line 78
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;Lorg/chromium/device/battery/BatteryStatusManager$BatteryStatusCallback;ZLorg/chromium/device/battery/BatteryStatusManager$AndroidBatteryManagerWrapper;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lorg/chromium/device/battery/BatteryStatusManager$BatteryStatusCallback;
    .param p3, "ignoreBatteryPresentState"    # Z
    .param p4, "batteryManager"    # Lorg/chromium/device/battery/BatteryStatusManager$AndroidBatteryManagerWrapper;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mFilter:Landroid/content/IntentFilter;

    .line 38
    new-instance v0, Lorg/chromium/device/battery/BatteryStatusManager$1;

    invoke-direct {v0, p0}, Lorg/chromium/device/battery/BatteryStatusManager$1;-><init>(Lorg/chromium/device/battery/BatteryStatusManager;)V

    iput-object v0, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mEnabled:Z

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mAppContext:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mCallback:Lorg/chromium/device/battery/BatteryStatusManager$BatteryStatusCallback;

    .line 71
    iput-boolean p3, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mIgnoreBatteryPresentState:Z

    .line 72
    iput-object p4, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mAndroidBatteryManager:Lorg/chromium/device/battery/BatteryStatusManager$AndroidBatteryManagerWrapper;

    .line 73
    return-void
.end method

.method static createBatteryStatusManagerForTesting(Landroid/content/Context;Lorg/chromium/device/battery/BatteryStatusManager$BatteryStatusCallback;Lorg/chromium/device/battery/BatteryStatusManager$AndroidBatteryManagerWrapper;)Lorg/chromium/device/battery/BatteryStatusManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lorg/chromium/device/battery/BatteryStatusManager$BatteryStatusCallback;
    .param p2, "batteryManager"    # Lorg/chromium/device/battery/BatteryStatusManager$AndroidBatteryManagerWrapper;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 91
    new-instance v0, Lorg/chromium/device/battery/BatteryStatusManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, p2}, Lorg/chromium/device/battery/BatteryStatusManager;-><init>(Landroid/content/Context;Lorg/chromium/device/battery/BatteryStatusManager$BatteryStatusCallback;ZLorg/chromium/device/battery/BatteryStatusManager$AndroidBatteryManagerWrapper;)V

    return-object v0
.end method

.method private updateBatteryStatusForLollipop(Lorg/chromium/mojom/device/BatteryStatus;)V
    .locals 14
    .param p1, "batteryStatus"    # Lorg/chromium/mojom/device/BatteryStatus;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 167
    sget-boolean v10, Lorg/chromium/device/battery/BatteryStatusManager;->$assertionsDisabled:Z

    if-nez v10, :cond_0

    iget-object v10, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mAndroidBatteryManager:Lorg/chromium/device/battery/BatteryStatusManager$AndroidBatteryManagerWrapper;

    if-nez v10, :cond_0

    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    .line 170
    :cond_0
    iget-object v10, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mAndroidBatteryManager:Lorg/chromium/device/battery/BatteryStatusManager$AndroidBatteryManagerWrapper;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Lorg/chromium/device/battery/BatteryStatusManager$AndroidBatteryManagerWrapper;->getIntProperty(I)I

    move-result v10

    int-to-double v10, v10

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    div-double v8, v10, v12

    .line 172
    .local v8, "remainingCapacityRatio":D
    iget-object v10, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mAndroidBatteryManager:Lorg/chromium/device/battery/BatteryStatusManager$AndroidBatteryManagerWrapper;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lorg/chromium/device/battery/BatteryStatusManager$AndroidBatteryManagerWrapper;->getIntProperty(I)I

    move-result v10

    int-to-double v2, v10

    .line 174
    .local v2, "batteryCapacityMicroAh":D
    iget-object v10, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mAndroidBatteryManager:Lorg/chromium/device/battery/BatteryStatusManager$AndroidBatteryManagerWrapper;

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Lorg/chromium/device/battery/BatteryStatusManager$AndroidBatteryManagerWrapper;->getIntProperty(I)I

    move-result v10

    int-to-double v0, v10

    .line 177
    .local v0, "averageCurrentMicroA":D
    iget-boolean v10, p1, Lorg/chromium/mojom/device/BatteryStatus;->charging:Z

    if-eqz v10, :cond_2

    .line 178
    iget-wide v10, p1, Lorg/chromium/mojom/device/BatteryStatus;->chargingTime:D

    const-wide/high16 v12, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v10, v10, v12

    if-nez v10, :cond_1

    const-wide/16 v10, 0x0

    cmpl-double v10, v0, v10

    if-lez v10, :cond_1

    .line 180
    div-double v4, v2, v0

    .line 181
    .local v4, "chargeFromEmptyHours":D
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v10, v8

    mul-double/2addr v10, v4

    const-wide v12, 0x40ac200000000000L    # 3600.0

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    iput-wide v10, p1, Lorg/chromium/mojom/device/BatteryStatus;->chargingTime:D

    .line 191
    .end local v4    # "chargeFromEmptyHours":D
    :cond_1
    :goto_0
    return-void

    .line 185
    :cond_2
    const-wide/16 v10, 0x0

    cmpg-double v10, v0, v10

    if-gez v10, :cond_1

    .line 186
    neg-double v10, v0

    div-double v6, v2, v10

    .line 187
    .local v6, "dischargeFromFullHours":D
    mul-double v10, v8, v6

    const-wide v12, 0x40ac200000000000L    # 3600.0

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    iput-wide v10, p1, Lorg/chromium/mojom/device/BatteryStatus;->dischargingTime:D

    goto :goto_0
.end method


# virtual methods
.method onReceive(Landroid/content/Intent;)V
    .locals 22
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 118
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    const-string v19, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 119
    const-string v18, "BatteryStatusManager"

    const-string v19, "Unexpected intent."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :goto_0
    return-void

    .line 123
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/chromium/device/battery/BatteryStatusManager;->mIgnoreBatteryPresentState:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    const/16 v16, 0x1

    .line 126
    .local v16, "present":Z
    :goto_1
    const-string v18, "plugged"

    const/16 v19, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 128
    .local v15, "pluggedStatus":I
    if-eqz v16, :cond_1

    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v15, v0, :cond_3

    .line 130
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/device/battery/BatteryStatusManager;->mCallback:Lorg/chromium/device/battery/BatteryStatusManager$BatteryStatusCallback;

    move-object/from16 v18, v0

    new-instance v19, Lorg/chromium/mojom/device/BatteryStatus;

    invoke-direct/range {v19 .. v19}, Lorg/chromium/mojom/device/BatteryStatus;-><init>()V

    invoke-interface/range {v18 .. v19}, Lorg/chromium/device/battery/BatteryStatusManager$BatteryStatusCallback;->onBatteryStatusChanged(Lorg/chromium/mojom/device/BatteryStatus;)V

    goto :goto_0

    .line 123
    .end local v15    # "pluggedStatus":I
    .end local v16    # "present":Z
    :cond_2
    const-string v18, "present"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v16

    goto :goto_1

    .line 134
    .restart local v15    # "pluggedStatus":I
    .restart local v16    # "present":Z
    :cond_3
    const-string v18, "level"

    const/16 v19, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 135
    .local v7, "current":I
    const-string v18, "scale"

    const/16 v19, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 136
    .local v14, "max":I
    int-to-double v0, v7

    move-wide/from16 v18, v0

    int-to-double v0, v14

    move-wide/from16 v20, v0

    div-double v12, v18, v20

    .line 137
    .local v12, "level":D
    const-wide/16 v18, 0x0

    cmpg-double v18, v12, v18

    if-ltz v18, :cond_4

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    cmpl-double v18, v12, v18

    if-lez v18, :cond_5

    .line 139
    :cond_4
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    .line 146
    :cond_5
    if-eqz v15, :cond_7

    const/4 v6, 0x1

    .line 147
    .local v6, "charging":Z
    :goto_2
    const-string v18, "status"

    const/16 v19, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 148
    .local v17, "status":I
    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    const/4 v4, 0x1

    .line 149
    .local v4, "batteryFull":Z
    :goto_3
    if-eqz v6, :cond_9

    if-eqz v4, :cond_9

    const-wide/16 v8, 0x0

    .line 150
    .local v8, "chargingTimeSeconds":D
    :goto_4
    const-wide/high16 v10, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 152
    .local v10, "dischargingTimeSeconds":D
    new-instance v5, Lorg/chromium/mojom/device/BatteryStatus;

    invoke-direct {v5}, Lorg/chromium/mojom/device/BatteryStatus;-><init>()V

    .line 153
    .local v5, "batteryStatus":Lorg/chromium/mojom/device/BatteryStatus;
    iput-boolean v6, v5, Lorg/chromium/mojom/device/BatteryStatus;->charging:Z

    .line 154
    iput-wide v8, v5, Lorg/chromium/mojom/device/BatteryStatus;->chargingTime:D

    .line 155
    iput-wide v10, v5, Lorg/chromium/mojom/device/BatteryStatus;->dischargingTime:D

    .line 156
    iput-wide v12, v5, Lorg/chromium/mojom/device/BatteryStatus;->level:D

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/device/battery/BatteryStatusManager;->mAndroidBatteryManager:Lorg/chromium/device/battery/BatteryStatusManager$AndroidBatteryManagerWrapper;

    move-object/from16 v18, v0

    if-eqz v18, :cond_6

    .line 159
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lorg/chromium/device/battery/BatteryStatusManager;->updateBatteryStatusForLollipop(Lorg/chromium/mojom/device/BatteryStatus;)V

    .line 162
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/chromium/device/battery/BatteryStatusManager;->mCallback:Lorg/chromium/device/battery/BatteryStatusManager$BatteryStatusCallback;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Lorg/chromium/device/battery/BatteryStatusManager$BatteryStatusCallback;->onBatteryStatusChanged(Lorg/chromium/mojom/device/BatteryStatus;)V

    goto/16 :goto_0

    .line 146
    .end local v4    # "batteryFull":Z
    .end local v5    # "batteryStatus":Lorg/chromium/mojom/device/BatteryStatus;
    .end local v6    # "charging":Z
    .end local v8    # "chargingTimeSeconds":D
    .end local v10    # "dischargingTimeSeconds":D
    .end local v17    # "status":I
    :cond_7
    const/4 v6, 0x0

    goto :goto_2

    .line 148
    .restart local v6    # "charging":Z
    .restart local v17    # "status":I
    :cond_8
    const/4 v4, 0x0

    goto :goto_3

    .line 149
    .restart local v4    # "batteryFull":Z
    :cond_9
    const-wide/high16 v8, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_4
.end method

.method start()Z
    .locals 3

    .prologue
    .line 99
    iget-boolean v0, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mAppContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mEnabled:Z

    .line 103
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mEnabled:Z

    return v0
.end method

.method stop()V
    .locals 2

    .prologue
    .line 110
    iget-boolean v0, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mAppContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mEnabled:Z

    .line 114
    :cond_0
    return-void
.end method
