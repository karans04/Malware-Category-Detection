.class Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;
.super Ljava/lang/Object;
.source "MediaDrmBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/MediaDrmBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PendingCreateSessionData"
.end annotation

.annotation build Lorg/chromium/base/annotations/MainDex;
.end annotation


# instance fields
.field private final mInitData:[B

.field private final mMimeType:Ljava/lang/String;

.field private final mOptionalParameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPromiseId:J


# direct methods
.method private constructor <init>([BLjava/lang/String;Ljava/util/HashMap;J)V
    .locals 0
    .param p1, "initData"    # [B
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p4, "promiseId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p3, "optionalParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p1, p0, Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;->mInitData:[B

    .line 139
    iput-object p2, p0, Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;->mMimeType:Ljava/lang/String;

    .line 140
    iput-object p3, p0, Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;->mOptionalParameters:Ljava/util/HashMap;

    .line 141
    iput-wide p4, p0, Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;->mPromiseId:J

    .line 142
    return-void
.end method

.method synthetic constructor <init>([BLjava/lang/String;Ljava/util/HashMap;JLorg/chromium/media/MediaDrmBridge$1;)V
    .locals 0
    .param p1, "x0"    # [B
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/util/HashMap;
    .param p4, "x3"    # J
    .param p6, "x4"    # Lorg/chromium/media/MediaDrmBridge$1;

    .prologue
    .line 130
    invoke-direct/range {p0 .. p5}, Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;-><init>([BLjava/lang/String;Ljava/util/HashMap;J)V

    return-void
.end method

.method static synthetic access$400(Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;)J
    .locals 2
    .param p0, "x0"    # Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;

    .prologue
    .line 130
    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;->promiseId()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$600(Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;)[B
    .locals 1
    .param p0, "x0"    # Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;

    .prologue
    .line 130
    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;->initData()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;

    .prologue
    .line 130
    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;->mimeType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;

    .prologue
    .line 130
    invoke-direct {p0}, Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;->optionalParameters()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method private initData()[B
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;->mInitData:[B

    return-object v0
.end method

.method private mimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method private optionalParameters()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;->mOptionalParameters:Ljava/util/HashMap;

    return-object v0
.end method

.method private promiseId()J
    .locals 2

    .prologue
    .line 157
    iget-wide v0, p0, Lorg/chromium/media/MediaDrmBridge$PendingCreateSessionData;->mPromiseId:J

    return-wide v0
.end method
