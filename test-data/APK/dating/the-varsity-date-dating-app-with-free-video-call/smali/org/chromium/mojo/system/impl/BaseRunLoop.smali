.class Lorg/chromium/mojo/system/impl/BaseRunLoop;
.super Ljava/lang/Object;
.source "BaseRunLoop.java"

# interfaces
.implements Lorg/chromium/mojo/system/RunLoop;


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "mojo::android"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mCore:Lorg/chromium/mojo/system/impl/CoreImpl;

.field private mRunLoopID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lorg/chromium/mojo/system/impl/BaseRunLoop;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/mojo/system/impl/BaseRunLoop;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/chromium/mojo/system/impl/CoreImpl;)V
    .locals 2
    .param p1, "core"    # Lorg/chromium/mojo/system/impl/CoreImpl;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/chromium/mojo/system/impl/BaseRunLoop;->mCore:Lorg/chromium/mojo/system/impl/CoreImpl;

    .line 24
    invoke-direct {p0}, Lorg/chromium/mojo/system/impl/BaseRunLoop;->nativeCreateBaseRunLoop()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/mojo/system/impl/BaseRunLoop;->mRunLoopID:J

    .line 25
    return-void
.end method

.method private native nativeCreateBaseRunLoop()J
.end method

.method private native nativeDeleteMessageLoop(J)V
.end method

.method private native nativePostDelayedTask(JLjava/lang/Runnable;J)V
.end method

.method private native nativeQuit(J)V
.end method

.method private native nativeRun(J)V
.end method

.method private native nativeRunUntilIdle(J)V
.end method

.method private static runRunnable(Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 65
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 66
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 53
    iget-wide v0, p0, Lorg/chromium/mojo/system/impl/BaseRunLoop;->mRunLoopID:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 61
    :goto_0
    return-void

    .line 57
    :cond_0
    sget-boolean v0, Lorg/chromium/mojo/system/impl/BaseRunLoop;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/mojo/system/impl/BaseRunLoop;->mCore:Lorg/chromium/mojo/system/impl/CoreImpl;

    invoke-virtual {v0}, Lorg/chromium/mojo/system/impl/CoreImpl;->getCurrentRunLoop()Lorg/chromium/mojo/system/RunLoop;

    move-result-object v0

    if-eq v0, p0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Only the current run loop can be closed"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 58
    :cond_1
    iget-object v0, p0, Lorg/chromium/mojo/system/impl/BaseRunLoop;->mCore:Lorg/chromium/mojo/system/impl/CoreImpl;

    invoke-virtual {v0}, Lorg/chromium/mojo/system/impl/CoreImpl;->clearCurrentRunLoop()V

    .line 59
    iget-wide v0, p0, Lorg/chromium/mojo/system/impl/BaseRunLoop;->mRunLoopID:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/mojo/system/impl/BaseRunLoop;->nativeDeleteMessageLoop(J)V

    .line 60
    iput-wide v2, p0, Lorg/chromium/mojo/system/impl/BaseRunLoop;->mRunLoopID:J

    goto :goto_0
.end method

.method public postDelayedTask(Ljava/lang/Runnable;J)V
    .locals 6
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "delay"    # J

    .prologue
    .line 47
    sget-boolean v0, Lorg/chromium/mojo/system/impl/BaseRunLoop;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/mojo/system/impl/BaseRunLoop;->mRunLoopID:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "The run loop cannot run tasks once closed"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 48
    :cond_0
    iget-wide v1, p0, Lorg/chromium/mojo/system/impl/BaseRunLoop;->mRunLoopID:J

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/chromium/mojo/system/impl/BaseRunLoop;->nativePostDelayedTask(JLjava/lang/Runnable;J)V

    .line 49
    return-void
.end method

.method public quit()V
    .locals 4

    .prologue
    .line 41
    sget-boolean v0, Lorg/chromium/mojo/system/impl/BaseRunLoop;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/mojo/system/impl/BaseRunLoop;->mRunLoopID:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "The run loop cannot be quitted run once closed"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 42
    :cond_0
    iget-wide v0, p0, Lorg/chromium/mojo/system/impl/BaseRunLoop;->mRunLoopID:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/mojo/system/impl/BaseRunLoop;->nativeQuit(J)V

    .line 43
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 29
    sget-boolean v0, Lorg/chromium/mojo/system/impl/BaseRunLoop;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/mojo/system/impl/BaseRunLoop;->mRunLoopID:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "The run loop cannot run once closed"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 30
    :cond_0
    iget-wide v0, p0, Lorg/chromium/mojo/system/impl/BaseRunLoop;->mRunLoopID:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/mojo/system/impl/BaseRunLoop;->nativeRun(J)V

    .line 31
    return-void
.end method

.method public runUntilIdle()V
    .locals 4

    .prologue
    .line 35
    sget-boolean v0, Lorg/chromium/mojo/system/impl/BaseRunLoop;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/mojo/system/impl/BaseRunLoop;->mRunLoopID:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "The run loop cannot run once closed"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 36
    :cond_0
    iget-wide v0, p0, Lorg/chromium/mojo/system/impl/BaseRunLoop;->mRunLoopID:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/mojo/system/impl/BaseRunLoop;->nativeRunUntilIdle(J)V

    .line 37
    return-void
.end method
