.class Lorg/chromium/media/MediaCodecBridge$GetOutputFormatResult;
.super Ljava/lang/Object;
.source "MediaCodecBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/MediaCodecBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GetOutputFormatResult"
.end annotation

.annotation build Lorg/chromium/base/annotations/MainDex;
.end annotation


# instance fields
.field private final mFormat:Landroid/media/MediaFormat;

.field private final mStatus:I


# direct methods
.method private constructor <init>(ILandroid/media/MediaFormat;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "format"    # Landroid/media/MediaFormat;

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput p1, p0, Lorg/chromium/media/MediaCodecBridge$GetOutputFormatResult;->mStatus:I

    .line 155
    iput-object p2, p0, Lorg/chromium/media/MediaCodecBridge$GetOutputFormatResult;->mFormat:Landroid/media/MediaFormat;

    .line 156
    return-void
.end method

.method synthetic constructor <init>(ILandroid/media/MediaFormat;Lorg/chromium/media/MediaCodecBridge$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Landroid/media/MediaFormat;
    .param p3, "x2"    # Lorg/chromium/media/MediaCodecBridge$1;

    .prologue
    .line 148
    invoke-direct {p0, p1, p2}, Lorg/chromium/media/MediaCodecBridge$GetOutputFormatResult;-><init>(ILandroid/media/MediaFormat;)V

    return-void
.end method

.method private channelCount()I
    .locals 2
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
        value = "GetOutputFormatResult"
    .end annotation

    .prologue
    .line 189
    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge$GetOutputFormatResult;->mFormat:Landroid/media/MediaFormat;

    const-string v1, "channel-count"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private formatHasCropValues()Z
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge$GetOutputFormatResult;->mFormat:Landroid/media/MediaFormat;

    const-string v1, "crop-right"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge$GetOutputFormatResult;->mFormat:Landroid/media/MediaFormat;

    const-string v1, "crop-left"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge$GetOutputFormatResult;->mFormat:Landroid/media/MediaFormat;

    const-string v1, "crop-bottom"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge$GetOutputFormatResult;->mFormat:Landroid/media/MediaFormat;

    const-string v1, "crop-top"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private height()I
    .locals 3
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
        value = "GetOutputFormatResult"
    .end annotation

    .prologue
    .line 177
    invoke-direct {p0}, Lorg/chromium/media/MediaCodecBridge$GetOutputFormatResult;->formatHasCropValues()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge$GetOutputFormatResult;->mFormat:Landroid/media/MediaFormat;

    const-string v1, "crop-bottom"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lorg/chromium/media/MediaCodecBridge$GetOutputFormatResult;->mFormat:Landroid/media/MediaFormat;

    const-string v2, "crop-top"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge$GetOutputFormatResult;->mFormat:Landroid/media/MediaFormat;

    const-string v1, "height"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private sampleRate()I
    .locals 2
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
        value = "GetOutputFormatResult"
    .end annotation

    .prologue
    .line 184
    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge$GetOutputFormatResult;->mFormat:Landroid/media/MediaFormat;

    const-string v1, "sample-rate"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private status()I
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
        value = "GetOutputFormatResult"
    .end annotation

    .prologue
    .line 165
    iget v0, p0, Lorg/chromium/media/MediaCodecBridge$GetOutputFormatResult;->mStatus:I

    return v0
.end method

.method private width()I
    .locals 3
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
        value = "GetOutputFormatResult"
    .end annotation

    .prologue
    .line 170
    invoke-direct {p0}, Lorg/chromium/media/MediaCodecBridge$GetOutputFormatResult;->formatHasCropValues()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge$GetOutputFormatResult;->mFormat:Landroid/media/MediaFormat;

    const-string v1, "crop-right"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lorg/chromium/media/MediaCodecBridge$GetOutputFormatResult;->mFormat:Landroid/media/MediaFormat;

    const-string v2, "crop-left"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge$GetOutputFormatResult;->mFormat:Landroid/media/MediaFormat;

    const-string v1, "width"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
