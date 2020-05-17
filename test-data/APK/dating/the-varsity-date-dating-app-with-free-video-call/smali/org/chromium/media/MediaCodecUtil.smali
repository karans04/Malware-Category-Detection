.class Lorg/chromium/media/MediaCodecUtil;
.super Ljava/lang/Object;
.source "MediaCodecUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper;,
        Lorg/chromium/media/MediaCodecUtil$MimeTypes;,
        Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;
    }
.end annotation

.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "media"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final MEDIA_CODEC_DECODER:I = 0x0

.field static final MEDIA_CODEC_ENCODER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MediaCodecUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lorg/chromium/media/MediaCodecUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/media/MediaCodecUtil;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method private static canDecode(Ljava/lang/String;Z)Z
    .locals 7
    .param p0, "mime"    # Ljava/lang/String;
    .param p1, "isSecure"    # Z
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 157
    invoke-static {p0, p1, v2}, Lorg/chromium/media/MediaCodecUtil;->createDecoder(Ljava/lang/String;ZZ)Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;

    move-result-object v1

    .line 158
    .local v1, "info":Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;
    iget-object v4, v1, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;->mediaCodec:Landroid/media/MediaCodec;

    if-nez v4, :cond_0

    .line 165
    :goto_0
    return v2

    .line 161
    :cond_0
    :try_start_0
    iget-object v4, v1, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;->mediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v2, v3

    .line 165
    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v4, "MediaCodecUtil"

    const-string v5, "Cannot release media codec"

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v0, v6, v2

    invoke-static {v4, v5, v6}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private static codecSupportsAdaptivePlayback(Landroid/media/MediaCodec;Ljava/lang/String;)Z
    .locals 7
    .param p0, "mediaCodec"    # Landroid/media/MediaCodec;
    .param p1, "mime"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 331
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-lt v5, v6, :cond_0

    if-nez p0, :cond_1

    .line 351
    :cond_0
    :goto_0
    return v4

    .line 335
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object v2

    .line 336
    .local v2, "info":Landroid/media/MediaCodecInfo;
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v5

    if-nez v5, :cond_0

    .line 340
    invoke-static {p1}, Lorg/chromium/media/MediaCodecUtil;->isAdaptivePlaybackBlacklisted(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 344
    invoke-virtual {v2, p1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v0

    .line 345
    .local v0, "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    if-eqz v0, :cond_2

    const-string v5, "adaptive-playback"

    invoke-virtual {v0, v5}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_2

    :goto_1
    move v4, v3

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_1

    .line 348
    .end local v0    # "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .end local v2    # "info":Landroid/media/MediaCodecInfo;
    :catch_0
    move-exception v1

    .line 349
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "MediaCodecUtil"

    const-string v6, "Cannot retrieve codec information"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {v5, v6, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static createDecoder(Ljava/lang/String;ZZ)Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;
    .locals 11
    .param p0, "mime"    # Ljava/lang/String;
    .param p1, "isSecure"    # Z
    .param p2, "requireSoftwareCodec"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 179
    new-instance v3, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;

    invoke-direct {v3}, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;-><init>()V

    .line 181
    .local v3, "result":Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;
    sget-boolean v4, Lorg/chromium/media/MediaCodecUtil;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    iget-object v4, v3, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;->mediaCodec:Landroid/media/MediaCodec;

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 185
    :cond_0
    if-eqz p1, :cond_1

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x12

    if-ge v4, v6, :cond_1

    .line 227
    .end local v3    # "result":Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;
    :goto_0
    return-object v3

    .line 188
    .restart local v3    # "result":Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;
    :cond_1
    invoke-static {p0}, Lorg/chromium/media/MediaCodecUtil;->isDecoderSupportedForDevice(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 189
    const-string v4, "MediaCodecUtil"

    const-string v5, "Decoder for type %s is not supported on this device"

    new-array v6, v10, [Ljava/lang/Object;

    aput-object p0, v6, v9

    invoke-static {v4, v5, v6}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 195
    :cond_2
    :try_start_0
    const-string v4, "video"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz p1, :cond_5

    .line 196
    const/4 v4, 0x0

    invoke-static {p0, v4, p2}, Lorg/chromium/media/MediaCodecUtil;->getDefaultCodecName(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "decoderName":Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v3, v5

    goto :goto_0

    .line 199
    :cond_3
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-lt v4, v6, :cond_4

    .line 205
    invoke-static {v0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    .line 206
    .local v2, "insecureCodec":Landroid/media/MediaCodec;
    invoke-static {v2, p0}, Lorg/chromium/media/MediaCodecUtil;->codecSupportsAdaptivePlayback(Landroid/media/MediaCodec;Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;->supportsAdaptivePlayback:Z

    .line 208
    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V

    .line 210
    .end local v2    # "insecureCodec":Landroid/media/MediaCodec;
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ".secure"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v4

    iput-object v4, v3, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;->mediaCodec:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 222
    .end local v0    # "decoderName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 223
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "MediaCodecUtil"

    const-string v7, "Failed to create MediaCodec: %s, isSecure: %s, requireSoftwareCodec: %s"

    const/4 v4, 0x4

    new-array v8, v4, [Ljava/lang/Object;

    aput-object p0, v8, v9

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v8, v10

    const/4 v9, 0x2

    if-eqz p2, :cond_7

    const-string v4, "yes"

    :goto_1
    aput-object v4, v8, v9

    const/4 v4, 0x3

    aput-object v1, v8, v4

    invoke-static {v6, v7, v8}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    iput-object v5, v3, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;->mediaCodec:Landroid/media/MediaCodec;

    goto :goto_0

    .line 212
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    if-eqz p2, :cond_6

    .line 213
    const/4 v4, 0x0

    :try_start_1
    invoke-static {p0, v4, p2}, Lorg/chromium/media/MediaCodecUtil;->getDefaultCodecName(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    .line 215
    .restart local v0    # "decoderName":Ljava/lang/String;
    invoke-static {v0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v4

    iput-object v4, v3, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;->mediaCodec:Landroid/media/MediaCodec;

    .line 219
    .end local v0    # "decoderName":Ljava/lang/String;
    :goto_2
    iget-object v4, v3, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;->mediaCodec:Landroid/media/MediaCodec;

    invoke-static {v4, p0}, Lorg/chromium/media/MediaCodecUtil;->codecSupportsAdaptivePlayback(Landroid/media/MediaCodec;Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;->supportsAdaptivePlayback:Z

    goto/16 :goto_0

    .line 217
    :cond_6
    invoke-static {p0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v4

    iput-object v4, v3, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;->mediaCodec:Landroid/media/MediaCodec;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 223
    .restart local v1    # "e":Ljava/lang/Exception;
    :cond_7
    const-string v4, "no"

    goto :goto_1
.end method

.method private static getDefaultCodecName(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 11
    .param p0, "mime"    # Ljava/lang/String;
    .param p1, "direction"    # I
    .param p2, "requireSoftwareCodec"    # Z
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 105
    new-instance v2, Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper;

    invoke-direct {v2}, Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper;-><init>()V

    .line 106
    .local v2, "codecListHelper":Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper;
    invoke-virtual {v2}, Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper;->getCodecCount()I

    move-result v0

    .line 107
    .local v0, "codecCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_5

    .line 108
    invoke-virtual {v2, v3}, Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v4

    .line 110
    .local v4, "info":Landroid/media/MediaCodecInfo;
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v9

    if-eqz v9, :cond_1

    move v1, v7

    .line 111
    .local v1, "codecDirection":I
    :goto_1
    if-eq v1, p1, :cond_2

    .line 107
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v1    # "codecDirection":I
    :cond_1
    move v1, v8

    .line 110
    goto :goto_1

    .line 113
    .restart local v1    # "codecDirection":I
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/chromium/media/MediaCodecUtil;->isSoftwareCodec(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 115
    :cond_3
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v6

    .line 116
    .local v6, "supportedTypes":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    array-length v9, v6

    if-ge v5, v9, :cond_0

    .line 117
    aget-object v9, v6, v5

    invoke-virtual {v9, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v7

    .line 122
    .end local v1    # "codecDirection":I
    .end local v4    # "info":Landroid/media/MediaCodecInfo;
    .end local v5    # "j":I
    .end local v6    # "supportedTypes":[Ljava/lang/String;
    :goto_3
    return-object v7

    .line 116
    .restart local v1    # "codecDirection":I
    .restart local v4    # "info":Landroid/media/MediaCodecInfo;
    .restart local v5    # "j":I
    .restart local v6    # "supportedTypes":[Ljava/lang/String;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 121
    .end local v1    # "codecDirection":I
    .end local v4    # "info":Landroid/media/MediaCodecInfo;
    .end local v5    # "j":I
    .end local v6    # "supportedTypes":[Ljava/lang/String;
    :cond_5
    const-string v9, "MediaCodecUtil"

    const-string v10, "Decoder for type %s is not supported on this device"

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p0, v7, v8

    invoke-static {v9, v10, v7}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    const-string v7, ""

    goto :goto_3
.end method

.method private static getEncoderColorFormatsForMime(Ljava/lang/String;)[I
    .locals 7
    .param p0, "mime"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 132
    new-instance v1, Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper;

    invoke-direct {v1}, Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper;-><init>()V

    .line 133
    .local v1, "codecListHelper":Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper;
    invoke-virtual {v1}, Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper;->getCodecCount()I

    move-result v0

    .line 134
    .local v0, "codecCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 135
    invoke-virtual {v1, v2}, Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v3

    .line 136
    .local v3, "info":Landroid/media/MediaCodecInfo;
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v6

    if-nez v6, :cond_1

    .line 134
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 138
    :cond_1
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v5

    .line 139
    .local v5, "supportedTypes":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    array-length v6, v5

    if-ge v4, v6, :cond_0

    .line 140
    aget-object v6, v5, v4

    invoke-virtual {v6, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 141
    aget-object v6, v5, v4

    invoke-virtual {v3, v6}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v6

    iget-object v6, v6, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    .line 145
    .end local v3    # "info":Landroid/media/MediaCodecInfo;
    .end local v4    # "j":I
    .end local v5    # "supportedTypes":[Ljava/lang/String;
    :goto_2
    return-object v6

    .line 139
    .restart local v3    # "info":Landroid/media/MediaCodecInfo;
    .restart local v4    # "j":I
    .restart local v5    # "supportedTypes":[Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 145
    .end local v3    # "info":Landroid/media/MediaCodecInfo;
    .end local v4    # "j":I
    .end local v5    # "supportedTypes":[Ljava/lang/String;
    :cond_3
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private static isAdaptivePlaybackBlacklisted(Ljava/lang/String;)Z
    .locals 3
    .param p0, "mime"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 307
    const-string v1, "video/avc"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "video/avc1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 319
    :cond_0
    :goto_0
    return v0

    .line 311
    :cond_1
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v2, "4.4.2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "samsung"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 319
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "GT-I9300"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "SCH-I535"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static isDecoderSupportedForDevice(Ljava/lang/String;)Z
    .locals 5
    .param p0, "mime"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    const/16 v4, 0x13

    const/16 v3, 0x15

    const/4 v0, 0x0

    .line 241
    const-string v1, "video/x-vnd.on2.vp8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 242
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "samsung"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 249
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v3, :cond_1

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "GT-I9505"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "GT-I9500"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 297
    :cond_0
    :goto_0
    return v0

    .line 258
    :cond_1
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "GT-I9190"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "GT-I9195"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 266
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v4, :cond_2

    .line 268
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "GT-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 271
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "SCH-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 274
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "SM-T"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 280
    :cond_2
    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v2, "mt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 297
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 281
    :cond_4
    const-string v1, "video/x-vnd.on2.vp9"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 282
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_0

    .line 286
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v3, :cond_3

    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v2, "mt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 290
    :cond_5
    const-string v1, "audio/opus"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v3, :cond_3

    goto :goto_0
.end method

.method public static isSoftwareCodec(Ljava/lang/String;)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 88
    const-string v1, "OMX.google."

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    :cond_0
    :goto_0
    return v0

    .line 90
    :cond_1
    const-string v1, "OMX."

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method
