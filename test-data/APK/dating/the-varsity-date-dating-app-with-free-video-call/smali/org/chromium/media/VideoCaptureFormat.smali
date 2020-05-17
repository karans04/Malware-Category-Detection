.class Lorg/chromium/media/VideoCaptureFormat;
.super Ljava/lang/Object;
.source "VideoCaptureFormat.java"


# instance fields
.field final mFramerate:I

.field mHeight:I

.field final mPixelFormat:I

.field mWidth:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "framerate"    # I
    .param p4, "pixelformat"    # I

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lorg/chromium/media/VideoCaptureFormat;->mWidth:I

    .line 15
    iput p2, p0, Lorg/chromium/media/VideoCaptureFormat;->mHeight:I

    .line 16
    iput p3, p0, Lorg/chromium/media/VideoCaptureFormat;->mFramerate:I

    .line 17
    iput p4, p0, Lorg/chromium/media/VideoCaptureFormat;->mPixelFormat:I

    .line 18
    return-void
.end method


# virtual methods
.method public getFramerate()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lorg/chromium/media/VideoCaptureFormat;->mFramerate:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lorg/chromium/media/VideoCaptureFormat;->mHeight:I

    return v0
.end method

.method public getPixelFormat()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lorg/chromium/media/VideoCaptureFormat;->mPixelFormat:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lorg/chromium/media/VideoCaptureFormat;->mWidth:I

    return v0
.end method
