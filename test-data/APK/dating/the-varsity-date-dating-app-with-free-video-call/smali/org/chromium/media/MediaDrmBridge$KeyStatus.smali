.class Lorg/chromium/media/MediaDrmBridge$KeyStatus;
.super Ljava/lang/Object;
.source "MediaDrmBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/MediaDrmBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyStatus"
.end annotation

.annotation build Lorg/chromium/base/annotations/MainDex;
.end annotation


# instance fields
.field private final mKeyId:[B

.field private final mStatusCode:I


# direct methods
.method private constructor <init>([BI)V
    .locals 0
    .param p1, "keyId"    # [B
    .param p2, "statusCode"    # I

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lorg/chromium/media/MediaDrmBridge$KeyStatus;->mKeyId:[B

    .line 102
    iput p2, p0, Lorg/chromium/media/MediaDrmBridge$KeyStatus;->mStatusCode:I

    .line 103
    return-void
.end method

.method synthetic constructor <init>([BILorg/chromium/media/MediaDrmBridge$1;)V
    .locals 0
    .param p1, "x0"    # [B
    .param p2, "x1"    # I
    .param p3, "x2"    # Lorg/chromium/media/MediaDrmBridge$1;

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lorg/chromium/media/MediaDrmBridge$KeyStatus;-><init>([BI)V

    return-void
.end method

.method private getKeyId()[B
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
        value = "KeyStatus"
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge$KeyStatus;->mKeyId:[B

    return-object v0
.end method

.method private getStatusCode()I
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
        value = "KeyStatus"
    .end annotation

    .prologue
    .line 112
    iget v0, p0, Lorg/chromium/media/MediaDrmBridge$KeyStatus;->mStatusCode:I

    return v0
.end method
