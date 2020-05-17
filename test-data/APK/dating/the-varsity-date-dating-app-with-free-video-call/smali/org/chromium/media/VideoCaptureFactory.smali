.class Lorg/chromium/media/VideoCaptureFactory;
.super Ljava/lang/Object;
.source "VideoCaptureFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/VideoCaptureFactory$ChromiumCameraInfo;
    }
.end annotation

.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "media"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lorg/chromium/media/VideoCaptureFactory;->isLReleaseOrLater()Z

    move-result v0

    return v0
.end method

.method static createVideoCapture(Landroid/content/Context;IJ)Lorg/chromium/media/VideoCapture;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "nativeVideoCaptureDeviceAndroid"    # J
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 98
    invoke-static {}, Lorg/chromium/media/VideoCaptureFactory;->isLReleaseOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lorg/chromium/media/VideoCaptureCamera2;->isLegacyDevice(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Lorg/chromium/media/VideoCaptureCamera2;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/chromium/media/VideoCaptureCamera2;-><init>(Landroid/content/Context;IJ)V

    .line 104
    :goto_0
    return-object v0

    .line 101
    :cond_0
    invoke-static {p1}, Lorg/chromium/media/VideoCaptureFactory$ChromiumCameraInfo;->access$100(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 102
    new-instance v0, Lorg/chromium/media/VideoCaptureAndroid;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/chromium/media/VideoCaptureAndroid;-><init>(Landroid/content/Context;IJ)V

    goto :goto_0

    .line 104
    :cond_1
    new-instance v0, Lorg/chromium/media/VideoCaptureTango;

    invoke-static {p1}, Lorg/chromium/media/VideoCaptureFactory$ChromiumCameraInfo;->access$200(I)I

    move-result v1

    invoke-direct {v0, p0, v1, p2, p3}, Lorg/chromium/media/VideoCaptureTango;-><init>(Landroid/content/Context;IJ)V

    goto :goto_0
.end method

.method static getCaptureApiType(ILandroid/content/Context;)I
    .locals 1
    .param p0, "id"    # I
    .param p1, "appContext"    # Landroid/content/Context;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 115
    invoke-static {}, Lorg/chromium/media/VideoCaptureFactory;->isLReleaseOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-static {p0, p1}, Lorg/chromium/media/VideoCaptureCamera2;->getCaptureApiType(ILandroid/content/Context;)I

    move-result v0

    .line 120
    :goto_0
    return v0

    .line 117
    :cond_0
    invoke-static {p0}, Lorg/chromium/media/VideoCaptureFactory$ChromiumCameraInfo;->access$100(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    invoke-static {p0}, Lorg/chromium/media/VideoCaptureFactory$ChromiumCameraInfo;->access$200(I)I

    move-result v0

    invoke-static {v0}, Lorg/chromium/media/VideoCaptureTango;->getCaptureApiType(I)I

    move-result v0

    goto :goto_0

    .line 120
    :cond_1
    invoke-static {p0}, Lorg/chromium/media/VideoCaptureAndroid;->getCaptureApiType(I)I

    move-result v0

    goto :goto_0
.end method

.method static getCaptureFormatFramerate(Lorg/chromium/media/VideoCaptureFormat;)I
    .locals 1
    .param p0, "format"    # Lorg/chromium/media/VideoCaptureFormat;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 157
    invoke-virtual {p0}, Lorg/chromium/media/VideoCaptureFormat;->getFramerate()I

    move-result v0

    return v0
.end method

.method static getCaptureFormatHeight(Lorg/chromium/media/VideoCaptureFormat;)I
    .locals 1
    .param p0, "format"    # Lorg/chromium/media/VideoCaptureFormat;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 152
    invoke-virtual {p0}, Lorg/chromium/media/VideoCaptureFormat;->getHeight()I

    move-result v0

    return v0
.end method

.method static getCaptureFormatPixelFormat(Lorg/chromium/media/VideoCaptureFormat;)I
    .locals 1
    .param p0, "format"    # Lorg/chromium/media/VideoCaptureFormat;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 162
    invoke-virtual {p0}, Lorg/chromium/media/VideoCaptureFormat;->getPixelFormat()I

    move-result v0

    return v0
.end method

.method static getCaptureFormatWidth(Lorg/chromium/media/VideoCaptureFormat;)I
    .locals 1
    .param p0, "format"    # Lorg/chromium/media/VideoCaptureFormat;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 147
    invoke-virtual {p0}, Lorg/chromium/media/VideoCaptureFormat;->getWidth()I

    move-result v0

    return v0
.end method

.method static getDeviceName(ILandroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "id"    # I
    .param p1, "appContext"    # Landroid/content/Context;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 126
    invoke-static {}, Lorg/chromium/media/VideoCaptureFactory;->isLReleaseOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p0}, Lorg/chromium/media/VideoCaptureCamera2;->isLegacyDevice(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    invoke-static {p0, p1}, Lorg/chromium/media/VideoCaptureCamera2;->getName(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 129
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lorg/chromium/media/VideoCaptureFactory$ChromiumCameraInfo;->access$100(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lorg/chromium/media/VideoCaptureFactory$ChromiumCameraInfo;->access$200(I)I

    move-result v0

    invoke-static {v0}, Lorg/chromium/media/VideoCaptureTango;->getName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lorg/chromium/media/VideoCaptureAndroid;->getName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static getDeviceSupportedFormats(Landroid/content/Context;I)[Lorg/chromium/media/VideoCaptureFormat;
    .locals 1
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "id"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 136
    invoke-static {}, Lorg/chromium/media/VideoCaptureFactory;->isLReleaseOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lorg/chromium/media/VideoCaptureCamera2;->isLegacyDevice(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    invoke-static {p0, p1}, Lorg/chromium/media/VideoCaptureCamera2;->getDeviceSupportedFormats(Landroid/content/Context;I)[Lorg/chromium/media/VideoCaptureFormat;

    move-result-object v0

    .line 139
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lorg/chromium/media/VideoCaptureFactory$ChromiumCameraInfo;->access$100(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lorg/chromium/media/VideoCaptureFactory$ChromiumCameraInfo;->access$200(I)I

    move-result v0

    invoke-static {v0}, Lorg/chromium/media/VideoCaptureTango;->getDeviceSupportedFormats(I)[Lorg/chromium/media/VideoCaptureFormat;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lorg/chromium/media/VideoCaptureAndroid;->getDeviceSupportedFormats(I)[Lorg/chromium/media/VideoCaptureFormat;

    move-result-object v0

    goto :goto_0
.end method

.method static getNumberOfCameras(Landroid/content/Context;)I
    .locals 1
    .param p0, "appContext"    # Landroid/content/Context;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 110
    invoke-static {p0}, Lorg/chromium/media/VideoCaptureFactory$ChromiumCameraInfo;->access$300(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method private static isLReleaseOrLater()Z
    .locals 2

    .prologue
    .line 91
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
