.class public Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;
.super Ljava/lang/Object;
.source "XWalkHttpAuthHandlerInternal.java"

# interfaces
.implements Lorg/xwalk/core/internal/XWalkHttpAuthInternal;


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "xwalk"
.end annotation

.annotation build Lorg/xwalk/core/internal/XWalkAPI;
    createInternally = true
    impl = Lorg/xwalk/core/internal/XWalkHttpAuthInternal;
.end annotation


# instance fields
.field private final mFirstAttempt:Z

.field private mNativeXWalkHttpAuthHandler:J


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;->mNativeXWalkHttpAuthHandler:J

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;->mFirstAttempt:Z

    .line 57
    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 1
    .param p1, "nativeXWalkHttpAuthHandler"    # J
    .param p3, "firstAttempt"    # Z

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-wide p1, p0, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;->mNativeXWalkHttpAuthHandler:J

    .line 49
    iput-boolean p3, p0, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;->mFirstAttempt:Z

    .line 50
    return-void
.end method

.method public static create(JZ)Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;
    .locals 2
    .param p0, "nativeXWalkAuthHandler"    # J
    .param p2, "firstAttempt"    # Z
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 44
    new-instance v0, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;

    invoke-direct {v0, p0, p1, p2}, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;-><init>(JZ)V

    return-object v0
.end method

.method private native nativeCancel(J)V
.end method

.method private native nativeProceed(JLjava/lang/String;Ljava/lang/String;)V
.end method


# virtual methods
.method public cancel()V
    .locals 4
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 31
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;->mNativeXWalkHttpAuthHandler:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 32
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;->mNativeXWalkHttpAuthHandler:J

    invoke-direct {p0, v0, v1}, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;->nativeCancel(J)V

    .line 33
    iput-wide v2, p0, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;->mNativeXWalkHttpAuthHandler:J

    .line 35
    :cond_0
    return-void
.end method

.method handlerDestroyed()V
    .locals 2
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 61
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;->mNativeXWalkHttpAuthHandler:J

    .line 62
    return-void
.end method

.method public isFirstAttempt()Z
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 39
    iget-boolean v0, p0, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;->mFirstAttempt:Z

    return v0
.end method

.method public proceed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 23
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;->mNativeXWalkHttpAuthHandler:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 24
    iget-wide v0, p0, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;->mNativeXWalkHttpAuthHandler:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;->nativeProceed(JLjava/lang/String;Ljava/lang/String;)V

    .line 25
    iput-wide v2, p0, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;->mNativeXWalkHttpAuthHandler:J

    .line 27
    :cond_0
    return-void
.end method
