.class Lorg/chromium/content/browser/DeviceSensors;
.super Ljava/lang/Object;
.source "DeviceSensors.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxyImpl;,
        Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxy;
    }
.end annotation

.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "content"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final DEVICE_LIGHT_SENSORS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final DEVICE_MOTION_SENSORS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final DEVICE_ORIENTATION_ABSOLUTE_SENSORS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final DEVICE_ORIENTATION_SENSORS_A:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final DEVICE_ORIENTATION_SENSORS_B:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final DEVICE_ORIENTATION_SENSORS_C:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final EXPERIMENTAL_WEB_PLAFTORM_FEATURES:Ljava/lang/String; = "enable-experimental-web-platform-features"

.field private static final TAG:Ljava/lang/String; = "cr.DeviceSensors"

.field private static sSingleton:Lorg/chromium/content/browser/DeviceSensors;

.field private static sSingletonLock:Ljava/lang/Object;


# instance fields
.field final mActiveSensors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation
.end field

.field private final mAppContext:Landroid/content/Context;

.field mDeviceLightIsActive:Z

.field mDeviceMotionIsActive:Z

.field mDeviceOrientationAbsoluteIsActive:Z

.field mDeviceOrientationIsActive:Z

.field mDeviceOrientationIsActiveWithBackupSensors:Z

.field mDeviceOrientationSensors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceRotationMatrix:[F

.field private mHandler:Landroid/os/Handler;

.field private final mHandlerLock:Ljava/lang/Object;

.field private mMagneticFieldVector:[F

.field private mNativePtr:J

.field private final mNativePtrLock:Ljava/lang/Object;

.field mOrientationNotAvailable:Z

.field final mOrientationSensorSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRotationAngles:[D

.field private mSensorManagerProxy:Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxy;

.field private mThread:Ljava/lang/Thread;

.field private mTruncatedRotationVector:[F


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0xb

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 29
    const-class v0, Lorg/chromium/content/browser/DeviceSensors;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/DeviceSensors;->$assertionsDisabled:Z

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/content/browser/DeviceSensors;->sSingletonLock:Ljava/lang/Object;

    .line 74
    new-array v0, v1, [Ljava/lang/Integer;

    const/16 v3, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lorg/chromium/base/CollectionUtil;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_ORIENTATION_SENSORS_A:Ljava/util/Set;

    .line 76
    new-array v0, v1, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lorg/chromium/base/CollectionUtil;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_ORIENTATION_SENSORS_B:Ljava/util/Set;

    .line 79
    new-array v0, v4, [Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lorg/chromium/base/CollectionUtil;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_ORIENTATION_SENSORS_C:Ljava/util/Set;

    .line 82
    new-array v0, v1, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lorg/chromium/base/CollectionUtil;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_ORIENTATION_ABSOLUTE_SENSORS:Ljava/util/Set;

    .line 84
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v4

    invoke-static {v0}, Lorg/chromium/base/CollectionUtil;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_MOTION_SENSORS:Ljava/util/Set;

    .line 88
    new-array v0, v1, [Ljava/lang/Integer;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/chromium/base/CollectionUtil;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_LIGHT_SENSORS:Ljava/util/Set;

    return-void

    :cond_0
    move v0, v2

    .line 29
    goto :goto_0
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mHandlerLock:Ljava/lang/Object;

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtrLock:Ljava/lang/Object;

    .line 91
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mActiveSensors:Ljava/util/Set;

    .line 95
    iput-boolean v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceLightIsActive:Z

    .line 96
    iput-boolean v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceMotionIsActive:Z

    .line 97
    iput-boolean v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationIsActive:Z

    .line 98
    iput-boolean v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationIsActiveWithBackupSensors:Z

    .line 99
    iput-boolean v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationAbsoluteIsActive:Z

    .line 100
    iput-boolean v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mOrientationNotAvailable:Z

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mAppContext:Landroid/content/Context;

    .line 105
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/util/Set;

    sget-object v1, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_ORIENTATION_SENSORS_A:Ljava/util/Set;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_ORIENTATION_SENSORS_B:Ljava/util/Set;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_ORIENTATION_SENSORS_C:Ljava/util/Set;

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/chromium/base/CollectionUtil;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mOrientationSensorSets:Ljava/util/List;

    .line 108
    return-void
.end method

.method public static computeDeviceOrientationFromRotationMatrix([F[D)[D
    .locals 9
    .param p0, "matrixR"    # [F
    .param p1, "values"    # [D
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v5, 0x7

    const/4 v8, 0x2

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 371
    array-length v0, p0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    .line 405
    :cond_0
    :goto_0
    return-object p1

    .line 373
    :cond_1
    const/16 v0, 0x8

    aget v0, p0, v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_2

    .line 374
    aget v0, p0, v6

    neg-float v0, v0

    float-to-double v0, v0

    const/4 v2, 0x4

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    aput-wide v0, p1, v7

    .line 375
    aget v0, p0, v5

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    aput-wide v0, p1, v6

    .line 376
    const/4 v0, 0x6

    aget v0, p0, v0

    neg-float v0, v0

    float-to-double v0, v0

    const/16 v2, 0x8

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    aput-wide v0, p1, v8

    .line 401
    :goto_1
    aget-wide v0, p1, v7

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 402
    aget-wide v0, p1, v7

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    add-double/2addr v0, v2

    aput-wide v0, p1, v7

    goto :goto_0

    .line 377
    :cond_2
    const/16 v0, 0x8

    aget v0, p0, v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_4

    .line 378
    aget v0, p0, v6

    float-to-double v0, v0

    const/4 v2, 0x4

    aget v2, p0, v2

    neg-float v2, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    aput-wide v0, p1, v7

    .line 379
    aget v0, p0, v5

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    neg-double v0, v0

    aput-wide v0, p1, v6

    .line 380
    aget-wide v2, p1, v6

    aget-wide v0, p1, v6

    const-wide/16 v4, 0x0

    cmpl-double v0, v0, v4

    if-ltz v0, :cond_3

    const-wide v0, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    :goto_2
    add-double/2addr v0, v2

    aput-wide v0, p1, v6

    .line 381
    const/4 v0, 0x6

    aget v0, p0, v0

    float-to-double v0, v0

    const/16 v2, 0x8

    aget v2, p0, v2

    neg-float v2, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    aput-wide v0, p1, v8

    goto :goto_1

    .line 380
    :cond_3
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    goto :goto_2

    .line 383
    :cond_4
    const/4 v0, 0x6

    aget v0, p0, v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_5

    .line 384
    aget v0, p0, v6

    neg-float v0, v0

    float-to-double v0, v0

    const/4 v2, 0x4

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    aput-wide v0, p1, v7

    .line 385
    aget v0, p0, v5

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    aput-wide v0, p1, v6

    .line 386
    const-wide v0, -0x4006de04abbbd2e8L    # -1.5707963267948966

    aput-wide v0, p1, v8

    goto/16 :goto_1

    .line 387
    :cond_5
    const/4 v0, 0x6

    aget v0, p0, v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_7

    .line 388
    aget v0, p0, v6

    float-to-double v0, v0

    const/4 v2, 0x4

    aget v2, p0, v2

    neg-float v2, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    aput-wide v0, p1, v7

    .line 389
    aget v0, p0, v5

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    neg-double v0, v0

    aput-wide v0, p1, v6

    .line 390
    aget-wide v2, p1, v6

    aget-wide v0, p1, v6

    const-wide/16 v4, 0x0

    cmpl-double v0, v0, v4

    if-ltz v0, :cond_6

    const-wide v0, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    :goto_3
    add-double/2addr v0, v2

    aput-wide v0, p1, v6

    .line 391
    const-wide v0, -0x4006de04abbbd2e8L    # -1.5707963267948966

    aput-wide v0, p1, v8

    goto/16 :goto_1

    .line 390
    :cond_6
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    goto :goto_3

    .line 394
    :cond_7
    const/4 v0, 0x3

    aget v0, p0, v0

    float-to-double v0, v0

    aget v2, p0, v7

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    aput-wide v0, p1, v7

    .line 395
    aget v0, p0, v5

    cmpl-float v0, v0, v4

    if-lez v0, :cond_8

    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    :goto_4
    aput-wide v0, p1, v6

    .line 396
    const-wide/16 v0, 0x0

    aput-wide v0, p1, v8

    goto/16 :goto_1

    .line 395
    :cond_8
    const-wide v0, -0x4006de04abbbd2e8L    # -1.5707963267948966

    goto :goto_4
.end method

.method private ensureRotationStructuresAllocated()V
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceRotationMatrix:[F

    if-nez v0, :cond_0

    .line 485
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceRotationMatrix:[F

    .line 487
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mRotationAngles:[D

    if-nez v0, :cond_1

    .line 488
    const/4 v0, 0x3

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mRotationAngles:[D

    .line 490
    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mTruncatedRotationVector:[F

    if-nez v0, :cond_2

    .line 491
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mTruncatedRotationVector:[F

    .line 493
    :cond_2
    return-void
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 4

    .prologue
    .line 593
    iget-object v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mHandlerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 594
    :try_start_0
    iget-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 595
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DeviceMotionAndOrientation"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 596
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 597
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mHandler:Landroid/os/Handler;

    .line 599
    .end local v0    # "thread":Landroid/os/HandlerThread;
    :cond_0
    iget-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mHandler:Landroid/os/Handler;

    monitor-exit v2

    return-object v1

    .line 600
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static getInstance(Landroid/content/Context;)Lorg/chromium/content/browser/DeviceSensors;
    .locals 2
    .param p0, "appContext"    # Landroid/content/Context;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 605
    sget-object v1, Lorg/chromium/content/browser/DeviceSensors;->sSingletonLock:Ljava/lang/Object;

    monitor-enter v1

    .line 606
    :try_start_0
    sget-object v0, Lorg/chromium/content/browser/DeviceSensors;->sSingleton:Lorg/chromium/content/browser/DeviceSensors;

    if-nez v0, :cond_0

    .line 607
    new-instance v0, Lorg/chromium/content/browser/DeviceSensors;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/DeviceSensors;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/chromium/content/browser/DeviceSensors;->sSingleton:Lorg/chromium/content/browser/DeviceSensors;

    .line 609
    :cond_0
    sget-object v0, Lorg/chromium/content/browser/DeviceSensors;->sSingleton:Lorg/chromium/content/browser/DeviceSensors;

    monitor-exit v1

    return-object v0

    .line 610
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getOrientationFromGeomagneticVectors([F[F)V
    .locals 8
    .param p1, "acceleration"    # [F
    .param p2, "magnetic"    # [F

    .prologue
    .line 431
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 442
    :cond_0
    :goto_0
    return-void

    .line 434
    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceRotationMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceRotationMatrix:[F

    iget-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mRotationAngles:[D

    invoke-static {v0, v1}, Lorg/chromium/content/browser/DeviceSensors;->computeDeviceOrientationFromRotationMatrix([F[D)[D

    .line 439
    iget-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mRotationAngles:[D

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    iget-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mRotationAngles:[D

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    iget-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mRotationAngles:[D

    const/4 v1, 0x2

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lorg/chromium/content/browser/DeviceSensors;->gotOrientation(DDD)V

    goto :goto_0
.end method

.method private getSensorManagerProxy()Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxy;
    .locals 3

    .prologue
    .line 445
    iget-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mSensorManagerProxy:Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxy;

    if-eqz v1, :cond_0

    .line 446
    iget-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mSensorManagerProxy:Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxy;

    .line 456
    :goto_0
    return-object v1

    .line 449
    :cond_0
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 450
    iget-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mAppContext:Landroid/content/Context;

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 453
    .local v0, "sensorManager":Landroid/hardware/SensorManager;
    if-eqz v0, :cond_1

    .line 454
    new-instance v1, Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxyImpl;

    invoke-direct {v1, v0}, Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxyImpl;-><init>(Landroid/hardware/SensorManager;)V

    iput-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mSensorManagerProxy:Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxy;

    .line 456
    :cond_1
    iget-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mSensorManagerProxy:Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxy;

    goto :goto_0
.end method

.method private native nativeGotAcceleration(JDDD)V
.end method

.method private native nativeGotAccelerationIncludingGravity(JDDD)V
.end method

.method private native nativeGotLight(JD)V
.end method

.method private native nativeGotOrientation(JDDD)V
.end method

.method private native nativeGotOrientationAbsolute(JDDD)V
.end method

.method private native nativeGotRotationRate(JDDD)V
.end method

.method private registerForSensorType(II)Z
    .locals 2
    .param p1, "type"    # I
    .param p2, "rateInMicroseconds"    # I

    .prologue
    .line 534
    invoke-direct {p0}, Lorg/chromium/content/browser/DeviceSensors;->getSensorManagerProxy()Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxy;

    move-result-object v0

    .line 535
    .local v0, "sensorManager":Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxy;
    if-nez v0, :cond_0

    .line 536
    const/4 v1, 0x0

    .line 538
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/DeviceSensors;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, p0, p1, p2, v1}, Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxy;->registerListener(Landroid/hardware/SensorEventListener;IILandroid/os/Handler;)Z

    move-result v1

    goto :goto_0
.end method

.method private registerSensors(Ljava/util/Set;IZ)Z
    .locals 6
    .param p2, "rateInMicroseconds"    # I
    .param p3, "failOnMissingSensor"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;IZ)Z"
        }
    .end annotation

    .prologue
    .line 504
    .local p1, "sensorTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 505
    .local v3, "sensorsToActivate":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v5, p0, Lorg/chromium/content/browser/DeviceSensors;->mActiveSensors:Ljava/util/Set;

    invoke-interface {v3, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 506
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x1

    .line 521
    :cond_0
    :goto_0
    return v4

    .line 508
    :cond_1
    const/4 v4, 0x0

    .line 509
    .local v4, "success":Z
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 510
    .local v2, "sensorType":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5, p2}, Lorg/chromium/content/browser/DeviceSensors;->registerForSensorType(II)Z

    move-result v1

    .line 511
    .local v1, "result":Z
    if-nez v1, :cond_3

    if-eqz p3, :cond_3

    .line 513
    invoke-direct {p0, v3}, Lorg/chromium/content/browser/DeviceSensors;->unregisterSensors(Ljava/lang/Iterable;)V

    .line 514
    const/4 v4, 0x0

    goto :goto_0

    .line 516
    :cond_3
    if-eqz v1, :cond_2

    .line 517
    iget-object v5, p0, Lorg/chromium/content/browser/DeviceSensors;->mActiveSensors:Ljava/util/Set;

    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 518
    const/4 v4, 0x1

    goto :goto_1
.end method

.method private setEventTypeActive(IZ)V
    .locals 2
    .param p1, "eventType"    # I
    .param p2, "active"    # Z

    .prologue
    .line 465
    packed-switch p1, :pswitch_data_0

    .line 481
    :goto_0
    :pswitch_0
    return-void

    .line 467
    :pswitch_1
    iput-boolean p2, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationIsActive:Z

    .line 468
    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationSensors:Ljava/util/Set;

    sget-object v1, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_ORIENTATION_SENSORS_C:Ljava/util/Set;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationIsActiveWithBackupSensors:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 472
    :pswitch_2
    iput-boolean p2, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationAbsoluteIsActive:Z

    goto :goto_0

    .line 475
    :pswitch_3
    iput-boolean p2, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceMotionIsActive:Z

    goto :goto_0

    .line 478
    :pswitch_4
    iput-boolean p2, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceLightIsActive:Z

    goto :goto_0

    .line 465
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private unregisterSensors(Ljava/lang/Iterable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 525
    .local p1, "sensorTypes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 526
    .local v1, "sensorType":Ljava/lang/Integer;
    iget-object v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mActiveSensors:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 527
    invoke-direct {p0}, Lorg/chromium/content/browser/DeviceSensors;->getSensorManagerProxy()Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxy;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, p0, v3}, Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxy;->unregisterListener(Landroid/hardware/SensorEventListener;I)V

    .line 528
    iget-object v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mActiveSensors:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 531
    .end local v1    # "sensorType":Ljava/lang/Integer;
    :cond_1
    return-void
.end method


# virtual methods
.method public convertRotationVectorToAngles([F[D)V
    .locals 4
    .param p1, "rotationVector"    # [F
    .param p2, "angles"    # [D

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 413
    array-length v1, p1

    if-le v1, v3, :cond_0

    .line 418
    iget-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mTruncatedRotationVector:[F

    invoke-static {p1, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 419
    iget-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceRotationMatrix:[F

    iget-object v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mTruncatedRotationVector:[F

    invoke-static {v1, v2}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    .line 424
    :goto_0
    iget-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceRotationMatrix:[F

    invoke-static {v1, p2}, Lorg/chromium/content/browser/DeviceSensors;->computeDeviceOrientationFromRotationMatrix([F[D)[D

    .line 425
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 426
    aget-wide v2, p2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    aput-wide v2, p2, v0

    .line 425
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 422
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceRotationMatrix:[F

    invoke-static {v1, p1}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    goto :goto_0

    .line 428
    .restart local v0    # "i":I
    :cond_1
    return-void
.end method

.method public getNumberActiveDeviceMotionSensors()I
    .locals 3
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 187
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_MOTION_SENSORS:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 188
    .local v0, "deviceMotionSensors":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mActiveSensors:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 189
    sget-object v1, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_MOTION_SENSORS:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    sub-int/2addr v1, v2

    return v1
.end method

.method public getOrientationSensorTypeUsed()I
    .locals 3
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 194
    iget-boolean v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mOrientationNotAvailable:Z

    if-eqz v1, :cond_1

    .line 208
    :cond_0
    :goto_0
    return v0

    .line 197
    :cond_1
    iget-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationSensors:Ljava/util/Set;

    sget-object v2, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_ORIENTATION_SENSORS_A:Ljava/util/Set;

    if-ne v1, v2, :cond_2

    .line 198
    const/4 v0, 0x3

    goto :goto_0

    .line 200
    :cond_2
    iget-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationSensors:Ljava/util/Set;

    sget-object v2, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_ORIENTATION_SENSORS_B:Ljava/util/Set;

    if-ne v1, v2, :cond_3

    .line 201
    const/4 v0, 0x1

    goto :goto_0

    .line 203
    :cond_3
    iget-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationSensors:Ljava/util/Set;

    sget-object v2, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_ORIENTATION_SENSORS_C:Ljava/util/Set;

    if-ne v1, v2, :cond_4

    .line 204
    const/4 v0, 0x2

    goto :goto_0

    .line 207
    :cond_4
    sget-boolean v1, Lorg/chromium/content/browser/DeviceSensors;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method protected gotAcceleration(DDD)V
    .locals 11
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D

    .prologue
    .line 558
    iget-object v10, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtrLock:Ljava/lang/Object;

    monitor-enter v10

    .line 559
    :try_start_0
    iget-wide v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 560
    iget-wide v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtr:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    move-wide/from16 v8, p5

    invoke-direct/range {v1 .. v9}, Lorg/chromium/content/browser/DeviceSensors;->nativeGotAcceleration(JDDD)V

    .line 562
    :cond_0
    monitor-exit v10

    .line 563
    return-void

    .line 562
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected gotAccelerationIncludingGravity(DDD)V
    .locals 11
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D

    .prologue
    .line 566
    iget-object v10, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtrLock:Ljava/lang/Object;

    monitor-enter v10

    .line 567
    :try_start_0
    iget-wide v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 568
    iget-wide v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtr:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    move-wide/from16 v8, p5

    invoke-direct/range {v1 .. v9}, Lorg/chromium/content/browser/DeviceSensors;->nativeGotAccelerationIncludingGravity(JDDD)V

    .line 570
    :cond_0
    monitor-exit v10

    .line 571
    return-void

    .line 570
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected gotLight(D)V
    .locals 7
    .param p1, "value"    # D

    .prologue
    .line 582
    iget-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtrLock:Ljava/lang/Object;

    monitor-enter v1

    .line 583
    :try_start_0
    iget-wide v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtr:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 584
    iget-wide v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtr:J

    invoke-direct {p0, v2, v3, p1, p2}, Lorg/chromium/content/browser/DeviceSensors;->nativeGotLight(JD)V

    .line 586
    :cond_0
    monitor-exit v1

    .line 587
    return-void

    .line 586
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected gotOrientation(DDD)V
    .locals 11
    .param p1, "alpha"    # D
    .param p3, "beta"    # D
    .param p5, "gamma"    # D

    .prologue
    .line 542
    iget-object v10, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtrLock:Ljava/lang/Object;

    monitor-enter v10

    .line 543
    :try_start_0
    iget-wide v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 544
    iget-wide v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtr:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    move-wide/from16 v8, p5

    invoke-direct/range {v1 .. v9}, Lorg/chromium/content/browser/DeviceSensors;->nativeGotOrientation(JDDD)V

    .line 546
    :cond_0
    monitor-exit v10

    .line 547
    return-void

    .line 546
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected gotOrientationAbsolute(DDD)V
    .locals 11
    .param p1, "alpha"    # D
    .param p3, "beta"    # D
    .param p5, "gamma"    # D

    .prologue
    .line 550
    iget-object v10, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtrLock:Ljava/lang/Object;

    monitor-enter v10

    .line 551
    :try_start_0
    iget-wide v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 552
    iget-wide v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtr:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    move-wide/from16 v8, p5

    invoke-direct/range {v1 .. v9}, Lorg/chromium/content/browser/DeviceSensors;->nativeGotOrientationAbsolute(JDDD)V

    .line 554
    :cond_0
    monitor-exit v10

    .line 555
    return-void

    .line 554
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected gotRotationRate(DDD)V
    .locals 11
    .param p1, "alpha"    # D
    .param p3, "beta"    # D
    .param p5, "gamma"    # D

    .prologue
    .line 574
    iget-object v10, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtrLock:Ljava/lang/Object;

    monitor-enter v10

    .line 575
    :try_start_0
    iget-wide v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 576
    iget-wide v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtr:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    move-wide/from16 v8, p5

    invoke-direct/range {v1 .. v9}, Lorg/chromium/content/browser/DeviceSensors;->nativeGotRotationRate(JDDD)V

    .line 578
    :cond_0
    monitor-exit v10

    .line 579
    return-void

    .line 578
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 255
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 259
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {p0, v0, v1}, Lorg/chromium/content/browser/DeviceSensors;->sensorChanged(I[F)V

    .line 260
    return-void
.end method

.method protected registerOrientationSensorsWithFallback(I)Z
    .locals 6
    .param p1, "rateInMicroseconds"    # I
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 124
    iget-boolean v4, p0, Lorg/chromium/content/browser/DeviceSensors;->mOrientationNotAvailable:Z

    if-eqz v4, :cond_0

    .line 139
    :goto_0
    return v2

    .line 125
    :cond_0
    iget-object v4, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationSensors:Ljava/util/Set;

    if-eqz v4, :cond_1

    .line 126
    iget-object v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationSensors:Ljava/util/Set;

    invoke-direct {p0, v2, p1, v3}, Lorg/chromium/content/browser/DeviceSensors;->registerSensors(Ljava/util/Set;IZ)Z

    move-result v2

    goto :goto_0

    .line 128
    :cond_1
    invoke-direct {p0}, Lorg/chromium/content/browser/DeviceSensors;->ensureRotationStructuresAllocated()V

    .line 130
    iget-object v4, p0, Lorg/chromium/content/browser/DeviceSensors;->mOrientationSensorSets:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 131
    .local v1, "sensors":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iput-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationSensors:Ljava/util/Set;

    .line 132
    iget-object v4, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationSensors:Ljava/util/Set;

    invoke-direct {p0, v4, p1, v3}, Lorg/chromium/content/browser/DeviceSensors;->registerSensors(Ljava/util/Set;IZ)Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    goto :goto_0

    .line 135
    .end local v1    # "sensors":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_3
    iput-boolean v3, p0, Lorg/chromium/content/browser/DeviceSensors;->mOrientationNotAvailable:Z

    .line 136
    iput-object v5, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationSensors:Ljava/util/Set;

    .line 137
    iput-object v5, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceRotationMatrix:[F

    .line 138
    iput-object v5, p0, Lorg/chromium/content/browser/DeviceSensors;->mRotationAngles:[D

    goto :goto_0
.end method

.method sensorChanged(I[F)V
    .locals 11
    .param p1, "type"    # I
    .param p2, "values"    # [F
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 264
    packed-switch p1, :pswitch_data_0

    .line 322
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 266
    :pswitch_1
    iget-boolean v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceMotionIsActive:Z

    if-eqz v0, :cond_1

    .line 267
    aget v0, p2, v8

    float-to-double v2, v0

    aget v0, p2, v9

    float-to-double v4, v0

    aget v0, p2, v10

    float-to-double v6, v0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lorg/chromium/content/browser/DeviceSensors;->gotAccelerationIncludingGravity(DDD)V

    .line 269
    :cond_1
    iget-boolean v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationIsActiveWithBackupSensors:Z

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mMagneticFieldVector:[F

    invoke-direct {p0, p2, v0}, Lorg/chromium/content/browser/DeviceSensors;->getOrientationFromGeomagneticVectors([F[F)V

    goto :goto_0

    .line 274
    :pswitch_2
    iget-boolean v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceMotionIsActive:Z

    if-eqz v0, :cond_0

    .line 275
    aget v0, p2, v8

    float-to-double v2, v0

    aget v0, p2, v9

    float-to-double v4, v0

    aget v0, p2, v10

    float-to-double v6, v0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lorg/chromium/content/browser/DeviceSensors;->gotAcceleration(DDD)V

    goto :goto_0

    .line 279
    :pswitch_3
    iget-boolean v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceMotionIsActive:Z

    if-eqz v0, :cond_0

    .line 280
    aget v0, p2, v8

    float-to-double v2, v0

    aget v0, p2, v9

    float-to-double v4, v0

    aget v0, p2, v10

    float-to-double v6, v0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lorg/chromium/content/browser/DeviceSensors;->gotRotationRate(DDD)V

    goto :goto_0

    .line 284
    :pswitch_4
    iget-boolean v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationAbsoluteIsActive:Z

    if-eqz v0, :cond_2

    .line 285
    iget-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mRotationAngles:[D

    invoke-virtual {p0, p2, v0}, Lorg/chromium/content/browser/DeviceSensors;->convertRotationVectorToAngles([F[D)V

    .line 286
    iget-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mRotationAngles:[D

    aget-wide v2, v0, v8

    iget-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mRotationAngles:[D

    aget-wide v4, v0, v9

    iget-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mRotationAngles:[D

    aget-wide v6, v0, v10

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lorg/chromium/content/browser/DeviceSensors;->gotOrientationAbsolute(DDD)V

    .line 289
    :cond_2
    iget-boolean v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationIsActive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationSensors:Ljava/util/Set;

    sget-object v1, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_ORIENTATION_SENSORS_B:Ljava/util/Set;

    if-ne v0, v1, :cond_0

    .line 291
    iget-boolean v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationAbsoluteIsActive:Z

    if-nez v0, :cond_3

    .line 293
    iget-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mRotationAngles:[D

    invoke-virtual {p0, p2, v0}, Lorg/chromium/content/browser/DeviceSensors;->convertRotationVectorToAngles([F[D)V

    .line 295
    :cond_3
    iget-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mRotationAngles:[D

    aget-wide v2, v0, v8

    iget-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mRotationAngles:[D

    aget-wide v4, v0, v9

    iget-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mRotationAngles:[D

    aget-wide v6, v0, v10

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lorg/chromium/content/browser/DeviceSensors;->gotOrientation(DDD)V

    goto :goto_0

    .line 299
    :pswitch_5
    iget-boolean v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationIsActive:Z

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mRotationAngles:[D

    invoke-virtual {p0, p2, v0}, Lorg/chromium/content/browser/DeviceSensors;->convertRotationVectorToAngles([F[D)V

    .line 301
    iget-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mRotationAngles:[D

    aget-wide v2, v0, v8

    iget-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mRotationAngles:[D

    aget-wide v4, v0, v9

    iget-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mRotationAngles:[D

    aget-wide v6, v0, v10

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lorg/chromium/content/browser/DeviceSensors;->gotOrientation(DDD)V

    goto/16 :goto_0

    .line 305
    :pswitch_6
    iget-boolean v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationIsActiveWithBackupSensors:Z

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mMagneticFieldVector:[F

    if-nez v0, :cond_4

    .line 307
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mMagneticFieldVector:[F

    .line 309
    :cond_4
    iget-object v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mMagneticFieldVector:[F

    iget-object v1, p0, Lorg/chromium/content/browser/DeviceSensors;->mMagneticFieldVector:[F

    array-length v1, v1

    invoke-static {p2, v8, v0, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    .line 314
    :pswitch_7
    iget-boolean v0, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceLightIsActive:Z

    if-eqz v0, :cond_0

    .line 315
    aget v0, p2, v8

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lorg/chromium/content/browser/DeviceSensors;->gotLight(D)V

    goto/16 :goto_0

    .line 264
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_6
        :pswitch_0
        :pswitch_3
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method setSensorManagerProxy(Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxy;)V
    .locals 0
    .param p1, "sensorManagerProxy"    # Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxy;
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 461
    iput-object p1, p0, Lorg/chromium/content/browser/DeviceSensors;->mSensorManagerProxy:Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxy;

    .line 462
    return-void
.end method

.method public start(JII)Z
    .locals 9
    .param p1, "nativePtr"    # J
    .param p3, "eventType"    # I
    .param p4, "rateInMicroseconds"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 155
    const/4 v0, 0x0

    .line 156
    .local v0, "success":Z
    iget-object v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtrLock:Ljava/lang/Object;

    monitor-enter v2

    .line 157
    packed-switch p3, :pswitch_data_0

    .line 174
    :pswitch_0
    :try_start_0
    const-string v3, "cr.DeviceSensors"

    const-string v4, "Unknown event type: %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    monitor-exit v2

    .line 181
    :goto_0
    return v1

    .line 159
    :pswitch_1
    invoke-virtual {p0, p4}, Lorg/chromium/content/browser/DeviceSensors;->registerOrientationSensorsWithFallback(I)Z

    move-result v0

    .line 177
    :goto_1
    if-eqz v0, :cond_0

    .line 178
    iput-wide p1, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtr:J

    .line 179
    const/4 v1, 0x1

    invoke-direct {p0, p3, v1}, Lorg/chromium/content/browser/DeviceSensors;->setEventTypeActive(IZ)V

    .line 181
    :cond_0
    monitor-exit v2

    move v1, v0

    goto :goto_0

    .line 162
    :pswitch_2
    invoke-direct {p0}, Lorg/chromium/content/browser/DeviceSensors;->ensureRotationStructuresAllocated()V

    .line 163
    sget-object v1, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_ORIENTATION_ABSOLUTE_SENSORS:Ljava/util/Set;

    const/4 v3, 0x1

    invoke-direct {p0, v1, p4, v3}, Lorg/chromium/content/browser/DeviceSensors;->registerSensors(Ljava/util/Set;IZ)Z

    move-result v0

    .line 165
    goto :goto_1

    .line 168
    :pswitch_3
    sget-object v1, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_MOTION_SENSORS:Ljava/util/Set;

    const/4 v3, 0x0

    invoke-direct {p0, v1, p4, v3}, Lorg/chromium/content/browser/DeviceSensors;->registerSensors(Ljava/util/Set;IZ)Z

    move-result v0

    .line 169
    goto :goto_1

    .line 171
    :pswitch_4
    sget-object v1, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_LIGHT_SENSORS:Ljava/util/Set;

    const/4 v3, 0x1

    invoke-direct {p0, v1, p4, v3}, Lorg/chromium/content/browser/DeviceSensors;->registerSensors(Ljava/util/Set;IZ)Z

    move-result v0

    .line 172
    goto :goto_1

    .line 182
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 157
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public stop(I)V
    .locals 6
    .param p1, "eventType"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 222
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 224
    .local v1, "sensorsToRemainActive":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtrLock:Ljava/lang/Object;

    monitor-enter v3

    .line 225
    :try_start_0
    iget-boolean v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationIsActive:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    .line 226
    iget-object v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationSensors:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 229
    :cond_0
    iget-boolean v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceOrientationAbsoluteIsActive:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    .line 231
    sget-object v2, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_ORIENTATION_ABSOLUTE_SENSORS:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 234
    :cond_1
    iget-boolean v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceMotionIsActive:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    .line 235
    sget-object v2, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_MOTION_SENSORS:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 238
    :cond_2
    iget-boolean v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mDeviceLightIsActive:Z

    if-eqz v2, :cond_3

    const/16 v2, 0x8

    if-eq p1, v2, :cond_3

    .line 239
    sget-object v2, Lorg/chromium/content/browser/DeviceSensors;->DEVICE_LIGHT_SENSORS:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 242
    :cond_3
    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mActiveSensors:Ljava/util/Set;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 243
    .local v0, "sensorsToDeactivate":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 244
    invoke-direct {p0, v0}, Lorg/chromium/content/browser/DeviceSensors;->unregisterSensors(Ljava/lang/Iterable;)V

    .line 245
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lorg/chromium/content/browser/DeviceSensors;->setEventTypeActive(IZ)V

    .line 246
    iget-object v2, p0, Lorg/chromium/content/browser/DeviceSensors;->mActiveSensors:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 247
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lorg/chromium/content/browser/DeviceSensors;->mNativePtr:J

    .line 249
    :cond_4
    monitor-exit v3

    .line 250
    return-void

    .line 249
    .end local v0    # "sensorsToDeactivate":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
