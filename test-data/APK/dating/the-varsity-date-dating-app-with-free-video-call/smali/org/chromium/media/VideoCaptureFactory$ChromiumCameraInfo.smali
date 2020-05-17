.class Lorg/chromium/media/VideoCaptureFactory$ChromiumCameraInfo;
.super Ljava/lang/Object;
.source "VideoCaptureFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/VideoCaptureFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChromiumCameraInfo"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final SPECIAL_DEVICE_LIST:[[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "cr.media"

.field private static sNumberOfSystemCameras:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 29
    const-class v0, Lorg/chromium/media/VideoCaptureFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/chromium/media/VideoCaptureFactory$ChromiumCameraInfo;->$assertionsDisabled:Z

    .line 33
    new-array v0, v1, [[Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "Peanut"

    aput-object v4, v3, v2

    const-string v4, "peanut"

    aput-object v4, v3, v1

    aput-object v3, v0, v2

    sput-object v0, Lorg/chromium/media/VideoCaptureFactory$ChromiumCameraInfo;->SPECIAL_DEVICE_LIST:[[Ljava/lang/String;

    .line 36
    const/4 v0, -0x1

    sput v0, Lorg/chromium/media/VideoCaptureFactory$ChromiumCameraInfo;->sNumberOfSystemCameras:I

    return-void

    :cond_0
    move v0, v2

    .line 29
    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(I)Z
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 29
    invoke-static {p0}, Lorg/chromium/media/VideoCaptureFactory$ChromiumCameraInfo;->isSpecialCamera(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(I)I
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 29
    invoke-static {p0}, Lorg/chromium/media/VideoCaptureFactory$ChromiumCameraInfo;->toSpecialCameraId(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/content/Context;)I
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-static {p0}, Lorg/chromium/media/VideoCaptureFactory$ChromiumCameraInfo;->getNumberOfCameras(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method private static getNumberOfCameras(Landroid/content/Context;)I
    .locals 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 59
    sget v0, Lorg/chromium/media/VideoCaptureFactory$ChromiumCameraInfo;->sNumberOfSystemCameras:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 67
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.permission.CAMERA"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    sput v3, Lorg/chromium/media/VideoCaptureFactory$ChromiumCameraInfo;->sNumberOfSystemCameras:I

    .line 72
    const-string v0, "cr.media"

    const-string v1, "Missing android.permission.CAMERA permission, no system camera available."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    :cond_0
    :goto_0
    sget v0, Lorg/chromium/media/VideoCaptureFactory$ChromiumCameraInfo;->sNumberOfSystemCameras:I

    return v0

    .line 75
    :cond_1
    invoke-static {}, Lorg/chromium/media/VideoCaptureFactory;->access$000()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    invoke-static {p0}, Lorg/chromium/media/VideoCaptureCamera2;->getNumberOfCameras(Landroid/content/Context;)I

    move-result v0

    sput v0, Lorg/chromium/media/VideoCaptureFactory$ChromiumCameraInfo;->sNumberOfSystemCameras:I

    goto :goto_0

    .line 78
    :cond_2
    invoke-static {}, Lorg/chromium/media/VideoCaptureAndroid;->getNumberOfCameras()I

    move-result v0

    sput v0, Lorg/chromium/media/VideoCaptureFactory$ChromiumCameraInfo;->sNumberOfSystemCameras:I

    .line 79
    invoke-static {}, Lorg/chromium/media/VideoCaptureFactory$ChromiumCameraInfo;->isSpecialDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    const-string v0, "cr.media"

    const-string v1, "Special device: %s"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    sget v0, Lorg/chromium/media/VideoCaptureFactory$ChromiumCameraInfo;->sNumberOfSystemCameras:I

    invoke-static {}, Lorg/chromium/media/VideoCaptureTango;->numberOfCameras()I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Lorg/chromium/media/VideoCaptureFactory$ChromiumCameraInfo;->sNumberOfSystemCameras:I

    goto :goto_0
.end method

.method private static isSpecialCamera(I)Z
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 50
    sget v0, Lorg/chromium/media/VideoCaptureFactory$ChromiumCameraInfo;->sNumberOfSystemCameras:I

    if-lt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSpecialDevice()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 40
    sget-object v0, Lorg/chromium/media/VideoCaptureFactory$ChromiumCameraInfo;->SPECIAL_DEVICE_LIST:[[Ljava/lang/String;

    .local v0, "arr$":[[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 41
    .local v1, "device":[Ljava/lang/String;
    aget-object v6, v1, v5

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    aget-object v6, v1, v4

    sget-object v7, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 46
    .end local v1    # "device":[Ljava/lang/String;
    :goto_1
    return v4

    .line 40
    .restart local v1    # "device":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1    # "device":[Ljava/lang/String;
    :cond_1
    move v4, v5

    .line 46
    goto :goto_1
.end method

.method private static toSpecialCameraId(I)I
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 54
    sget-boolean v0, Lorg/chromium/media/VideoCaptureFactory$ChromiumCameraInfo;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/chromium/media/VideoCaptureFactory$ChromiumCameraInfo;->isSpecialCamera(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 55
    :cond_0
    sget v0, Lorg/chromium/media/VideoCaptureFactory$ChromiumCameraInfo;->sNumberOfSystemCameras:I

    sub-int v0, p0, v0

    return v0
.end method
