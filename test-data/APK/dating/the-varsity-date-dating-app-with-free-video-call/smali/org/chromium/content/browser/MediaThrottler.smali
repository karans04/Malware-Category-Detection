.class Lorg/chromium/content/browser/MediaThrottler;
.super Ljava/lang/Object;
.source "MediaThrottler.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/MediaThrottler$StartWatchDogTask;,
        Lorg/chromium/content/browser/MediaThrottler$ReleaseWatchDogTask;
    }
.end annotation

.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "content"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final RELEASE_WATCH_DOG_PLAYER_DELAY_IN_MILLIS:I = 0x1388

.field private static final SERVER_CRASH_COUNT_THRESHOLD_FOR_THROTTLING:I = 0x4

.field private static final SERVER_CRASH_INTERVAL_THRESHOLD_IN_MILLIS:J = 0xea60L

.field private static final TAG:Ljava/lang/String; = "cr_MediaThrottler"

.field private static final UNKNOWN_LAST_SERVER_CRASH_TIME:J = -0x1L


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDelayedReleaseRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mLastCrashTime:J

.field private final mLock:Ljava/lang/Object;

.field private mPlayer:Landroid/media/MediaPlayer;

.field private mRequestCount:I

.field private mServerCrashCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lorg/chromium/content/browser/MediaThrottler;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/MediaThrottler;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/chromium/content/browser/MediaThrottler;->mLastCrashTime:J

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/MediaThrottler;->mLock:Ljava/lang/Object;

    .line 81
    new-instance v0, Lorg/chromium/content/browser/MediaThrottler$1;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/MediaThrottler$1;-><init>(Lorg/chromium/content/browser/MediaThrottler;)V

    iput-object v0, p0, Lorg/chromium/content/browser/MediaThrottler;->mDelayedReleaseRunnable:Ljava/lang/Runnable;

    .line 94
    iput-object p1, p0, Lorg/chromium/content/browser/MediaThrottler;->mContext:Landroid/content/Context;

    .line 95
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/chromium/content/browser/MediaThrottler;->mHandler:Landroid/os/Handler;

    .line 96
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/content/browser/MediaThrottler;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/MediaThrottler;

    .prologue
    .line 25
    iget-object v0, p0, Lorg/chromium/content/browser/MediaThrottler;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/content/browser/MediaThrottler;)I
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/MediaThrottler;

    .prologue
    .line 25
    iget v0, p0, Lorg/chromium/content/browser/MediaThrottler;->mRequestCount:I

    return v0
.end method

.method static synthetic access$200(Lorg/chromium/content/browser/MediaThrottler;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/MediaThrottler;

    .prologue
    .line 25
    iget-object v0, p0, Lorg/chromium/content/browser/MediaThrottler;->mPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$202(Lorg/chromium/content/browser/MediaThrottler;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/MediaThrottler;
    .param p1, "x1"    # Landroid/media/MediaPlayer;

    .prologue
    .line 25
    iput-object p1, p0, Lorg/chromium/content/browser/MediaThrottler;->mPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$400(Lorg/chromium/content/browser/MediaThrottler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/MediaThrottler;

    .prologue
    .line 25
    iget-object v0, p0, Lorg/chromium/content/browser/MediaThrottler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lorg/chromium/content/browser/MediaThrottler;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/MediaThrottler;

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/chromium/content/browser/MediaThrottler;->onMediaServerCrash()V

    return-void
.end method

.method private static create(Landroid/content/Context;)Lorg/chromium/content/browser/MediaThrottler;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 90
    new-instance v0, Lorg/chromium/content/browser/MediaThrottler;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/MediaThrottler;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private onDecodeRequestFinished()V
    .locals 2
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 158
    iget-object v1, p0, Lorg/chromium/content/browser/MediaThrottler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 159
    :try_start_0
    iget v0, p0, Lorg/chromium/content/browser/MediaThrottler;->mRequestCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/chromium/content/browser/MediaThrottler;->mRequestCount:I

    .line 160
    iget v0, p0, Lorg/chromium/content/browser/MediaThrottler;->mRequestCount:I

    if-nez v0, :cond_0

    .line 163
    invoke-direct {p0}, Lorg/chromium/content/browser/MediaThrottler;->prepareToStopWatchDog()V

    .line 165
    :cond_0
    monitor-exit v1

    .line 166
    return-void

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onMediaServerCrash()V
    .locals 6

    .prologue
    .line 189
    sget-boolean v2, Lorg/chromium/content/browser/MediaThrottler;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/chromium/content/browser/MediaThrottler;->mLock:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 190
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 191
    .local v0, "currentTime":J
    iget-wide v2, p0, Lorg/chromium/content/browser/MediaThrottler;->mLastCrashTime:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lorg/chromium/content/browser/MediaThrottler;->mLastCrashTime:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 193
    iget v2, p0, Lorg/chromium/content/browser/MediaThrottler;->mServerCrashCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/chromium/content/browser/MediaThrottler;->mServerCrashCount:I

    .line 198
    :goto_0
    iput-wide v0, p0, Lorg/chromium/content/browser/MediaThrottler;->mLastCrashTime:J

    .line 199
    return-void

    .line 195
    :cond_1
    invoke-direct {p0}, Lorg/chromium/content/browser/MediaThrottler;->recordNumMediaServerCrashes()V

    .line 196
    const/4 v2, 0x1

    iput v2, p0, Lorg/chromium/content/browser/MediaThrottler;->mServerCrashCount:I

    goto :goto_0
.end method

.method private prepareToStopWatchDog()V
    .locals 4

    .prologue
    .line 172
    iget-object v0, p0, Lorg/chromium/content/browser/MediaThrottler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/chromium/content/browser/MediaThrottler;->mDelayedReleaseRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 173
    return-void
.end method

.method private recordNumMediaServerCrashes()V
    .locals 2

    .prologue
    .line 218
    sget-boolean v0, Lorg/chromium/content/browser/MediaThrottler;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/MediaThrottler;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 219
    :cond_0
    iget v0, p0, Lorg/chromium/content/browser/MediaThrottler;->mServerCrashCount:I

    if-lez v0, :cond_1

    .line 220
    const-string v0, "Media.Android.NumMediaServerCrashes"

    iget v1, p0, Lorg/chromium/content/browser/MediaThrottler;->mServerCrashCount:I

    invoke-static {v0, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordCountHistogram(Ljava/lang/String;I)V

    .line 223
    :cond_1
    return-void
.end method

.method private requestDecoderResources()Z
    .locals 10
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 131
    iget-object v4, p0, Lorg/chromium/content/browser/MediaThrottler;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 132
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 133
    .local v0, "currentTime":J
    iget-wide v6, p0, Lorg/chromium/content/browser/MediaThrottler;->mLastCrashTime:J

    const-wide/16 v8, -0x1

    cmp-long v5, v6, v8

    if-eqz v5, :cond_0

    iget-wide v6, p0, Lorg/chromium/content/browser/MediaThrottler;->mLastCrashTime:J

    sub-long v6, v0, v6

    const-wide/32 v8, 0xea60

    cmp-long v5, v6, v8

    if-gez v5, :cond_0

    iget v5, p0, Lorg/chromium/content/browser/MediaThrottler;->mServerCrashCount:I

    const/4 v6, 0x4

    if-lt v5, v6, :cond_0

    .line 136
    const-string v3, "cr_MediaThrottler"

    const-string v5, "Request to decode media data denied due to throttling."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v5, v6}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    monitor-exit v4

    .line 150
    :goto_0
    return v2

    .line 139
    :cond_0
    iget v2, p0, Lorg/chromium/content/browser/MediaThrottler;->mRequestCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/chromium/content/browser/MediaThrottler;->mRequestCount:I

    .line 140
    iget v2, p0, Lorg/chromium/content/browser/MediaThrottler;->mRequestCount:I

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lorg/chromium/content/browser/MediaThrottler;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v2, :cond_2

    .line 141
    :cond_1
    iget-object v2, p0, Lorg/chromium/content/browser/MediaThrottler;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lorg/chromium/content/browser/MediaThrottler;->mDelayedReleaseRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 142
    iget-object v2, p0, Lorg/chromium/content/browser/MediaThrottler;->mHandler:Landroid/os/Handler;

    new-instance v5, Lorg/chromium/content/browser/MediaThrottler$2;

    invoke-direct {v5, p0}, Lorg/chromium/content/browser/MediaThrottler$2;-><init>(Lorg/chromium/content/browser/MediaThrottler;)V

    invoke-virtual {v2, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 149
    :cond_2
    monitor-exit v4

    move v2, v3

    .line 150
    goto :goto_0

    .line 149
    .end local v0    # "currentTime":J
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private reset()V
    .locals 4
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 207
    iget-object v1, p0, Lorg/chromium/content/browser/MediaThrottler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 208
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/content/browser/MediaThrottler;->recordNumMediaServerCrashes()V

    .line 209
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/content/browser/MediaThrottler;->mServerCrashCount:I

    .line 210
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lorg/chromium/content/browser/MediaThrottler;->mLastCrashTime:J

    .line 211
    monitor-exit v1

    .line 212
    return-void

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 177
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 178
    iget-object v1, p0, Lorg/chromium/content/browser/MediaThrottler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 179
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/content/browser/MediaThrottler;->onMediaServerCrash()V

    .line 180
    monitor-exit v1

    .line 182
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
