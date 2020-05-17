.class public Lorg/chromium/ui/VSyncMonitor;
.super Ljava/lang/Object;
.source "VSyncMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ui/VSyncMonitor$Listener;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final NANOSECONDS_PER_MICROSECOND:J = 0x3e8L

.field private static final NANOSECONDS_PER_SECOND:J = 0x3b9aca00L


# instance fields
.field private final mChoreographer:Landroid/view/Choreographer;

.field private mConsecutiveVSync:Z

.field private mGoodStartingPointNano:J

.field private final mHandler:Landroid/os/Handler;

.field private mHaveRequestInFlight:Z

.field private mInsideVSync:Z

.field private mListener:Lorg/chromium/ui/VSyncMonitor$Listener;

.field private mRefreshPeriodNano:J

.field private final mVSyncFrameCallback:Landroid/view/Choreographer$FrameCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lorg/chromium/ui/VSyncMonitor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/ui/VSyncMonitor;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/chromium/ui/VSyncMonitor$Listener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lorg/chromium/ui/VSyncMonitor$Listener;

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean v1, p0, Lorg/chromium/ui/VSyncMonitor;->mInsideVSync:Z

    .line 26
    iput-boolean v1, p0, Lorg/chromium/ui/VSyncMonitor;->mConsecutiveVSync:Z

    .line 53
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lorg/chromium/ui/VSyncMonitor;->mHandler:Landroid/os/Handler;

    .line 61
    iput-object p2, p0, Lorg/chromium/ui/VSyncMonitor;->mListener:Lorg/chromium/ui/VSyncMonitor$Listener;

    .line 62
    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    .line 64
    .local v0, "refreshRate":F
    const/high16 v2, 0x41f00000    # 30.0f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    const/4 v1, 0x1

    .line 66
    .local v1, "useEstimatedRefreshPeriod":Z
    :cond_0
    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_1

    const/high16 v0, 0x42700000    # 60.0f

    .line 67
    :cond_1
    const v2, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v2, v0

    float-to-long v2, v2

    iput-wide v2, p0, Lorg/chromium/ui/VSyncMonitor;->mRefreshPeriodNano:J

    .line 69
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v2

    iput-object v2, p0, Lorg/chromium/ui/VSyncMonitor;->mChoreographer:Landroid/view/Choreographer;

    .line 70
    new-instance v2, Lorg/chromium/ui/VSyncMonitor$1;

    invoke-direct {v2, p0, v1}, Lorg/chromium/ui/VSyncMonitor$1;-><init>(Lorg/chromium/ui/VSyncMonitor;Z)V

    iput-object v2, p0, Lorg/chromium/ui/VSyncMonitor;->mVSyncFrameCallback:Landroid/view/Choreographer$FrameCallback;

    .line 88
    invoke-direct {p0}, Lorg/chromium/ui/VSyncMonitor;->getCurrentNanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/chromium/ui/VSyncMonitor;->mGoodStartingPointNano:J

    .line 89
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/ui/VSyncMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lorg/chromium/ui/VSyncMonitor;

    .prologue
    .line 18
    iget-boolean v0, p0, Lorg/chromium/ui/VSyncMonitor;->mConsecutiveVSync:Z

    return v0
.end method

.method static synthetic access$100(Lorg/chromium/ui/VSyncMonitor;)J
    .locals 2
    .param p0, "x0"    # Lorg/chromium/ui/VSyncMonitor;

    .prologue
    .line 18
    iget-wide v0, p0, Lorg/chromium/ui/VSyncMonitor;->mGoodStartingPointNano:J

    return-wide v0
.end method

.method static synthetic access$102(Lorg/chromium/ui/VSyncMonitor;J)J
    .locals 1
    .param p0, "x0"    # Lorg/chromium/ui/VSyncMonitor;
    .param p1, "x1"    # J

    .prologue
    .line 18
    iput-wide p1, p0, Lorg/chromium/ui/VSyncMonitor;->mGoodStartingPointNano:J

    return-wide p1
.end method

.method static synthetic access$200(Lorg/chromium/ui/VSyncMonitor;)J
    .locals 2
    .param p0, "x0"    # Lorg/chromium/ui/VSyncMonitor;

    .prologue
    .line 18
    iget-wide v0, p0, Lorg/chromium/ui/VSyncMonitor;->mRefreshPeriodNano:J

    return-wide v0
.end method

.method static synthetic access$214(Lorg/chromium/ui/VSyncMonitor;J)J
    .locals 3
    .param p0, "x0"    # Lorg/chromium/ui/VSyncMonitor;
    .param p1, "x1"    # J

    .prologue
    .line 18
    iget-wide v0, p0, Lorg/chromium/ui/VSyncMonitor;->mRefreshPeriodNano:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/chromium/ui/VSyncMonitor;->mRefreshPeriodNano:J

    return-wide v0
.end method

.method static synthetic access$300(Lorg/chromium/ui/VSyncMonitor;)J
    .locals 2
    .param p0, "x0"    # Lorg/chromium/ui/VSyncMonitor;

    .prologue
    .line 18
    invoke-direct {p0}, Lorg/chromium/ui/VSyncMonitor;->getCurrentNanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400(Lorg/chromium/ui/VSyncMonitor;JJ)V
    .locals 1
    .param p0, "x0"    # Lorg/chromium/ui/VSyncMonitor;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/ui/VSyncMonitor;->onVSyncCallback(JJ)V

    return-void
.end method

.method private getCurrentNanoTime()J
    .locals 2

    .prologue
    .line 120
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method private onVSyncCallback(JJ)V
    .locals 5
    .param p1, "frameTimeNanos"    # J
    .param p3, "currentTimeNanos"    # J

    .prologue
    const/4 v1, 0x0

    .line 124
    sget-boolean v0, Lorg/chromium/ui/VSyncMonitor;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/ui/VSyncMonitor;->mHaveRequestInFlight:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 125
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/ui/VSyncMonitor;->mInsideVSync:Z

    .line 126
    iput-boolean v1, p0, Lorg/chromium/ui/VSyncMonitor;->mHaveRequestInFlight:Z

    .line 128
    :try_start_0
    iget-object v0, p0, Lorg/chromium/ui/VSyncMonitor;->mListener:Lorg/chromium/ui/VSyncMonitor$Listener;

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lorg/chromium/ui/VSyncMonitor;->mListener:Lorg/chromium/ui/VSyncMonitor$Listener;

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    invoke-interface {v0, p0, v2, v3}, Lorg/chromium/ui/VSyncMonitor$Listener;->onVSync(Lorg/chromium/ui/VSyncMonitor;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :cond_1
    iput-boolean v1, p0, Lorg/chromium/ui/VSyncMonitor;->mInsideVSync:Z

    .line 134
    return-void

    .line 132
    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lorg/chromium/ui/VSyncMonitor;->mInsideVSync:Z

    throw v0
.end method

.method private postCallback()V
    .locals 2

    .prologue
    .line 137
    iget-boolean v0, p0, Lorg/chromium/ui/VSyncMonitor;->mHaveRequestInFlight:Z

    if-eqz v0, :cond_0

    .line 141
    :goto_0
    return-void

    .line 138
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/ui/VSyncMonitor;->mHaveRequestInFlight:Z

    .line 139
    iget-boolean v0, p0, Lorg/chromium/ui/VSyncMonitor;->mInsideVSync:Z

    iput-boolean v0, p0, Lorg/chromium/ui/VSyncMonitor;->mConsecutiveVSync:Z

    .line 140
    iget-object v0, p0, Lorg/chromium/ui/VSyncMonitor;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lorg/chromium/ui/VSyncMonitor;->mVSyncFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_0
.end method


# virtual methods
.method public getVSyncPeriodInMicroseconds()J
    .locals 4

    .prologue
    .line 95
    iget-wide v0, p0, Lorg/chromium/ui/VSyncMonitor;->mRefreshPeriodNano:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public isInsideVSync()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lorg/chromium/ui/VSyncMonitor;->mInsideVSync:Z

    return v0
.end method

.method public requestUpdate()V
    .locals 2

    .prologue
    .line 104
    sget-boolean v0, Lorg/chromium/ui/VSyncMonitor;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/ui/VSyncMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 105
    :cond_0
    invoke-direct {p0}, Lorg/chromium/ui/VSyncMonitor;->postCallback()V

    .line 106
    return-void
.end method
