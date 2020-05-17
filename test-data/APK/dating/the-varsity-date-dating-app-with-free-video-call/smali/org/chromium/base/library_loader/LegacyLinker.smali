.class Lorg/chromium/base/library_loader/LegacyLinker;
.super Lorg/chromium/base/library_loader/Linker;
.source "LegacyLinker.java"


# annotations
.annotation build Lorg/chromium/base/annotations/MainDex;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final TAG:Ljava/lang/String; = "LibraryLoader"


# instance fields
.field private mBaseLoadAddress:J

.field private mBrowserUsesSharedRelro:Z

.field private mCurrentLoadAddress:J

.field private mInBrowserProcess:Z

.field private mInitialized:Z

.field private mLoadedLibraries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/chromium/base/library_loader/Linker$LibInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPrepareLibraryLoadCalled:Z

.field private mSharedRelros:Landroid/os/Bundle;

.field private mWaitForSharedRelros:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lorg/chromium/base/library_loader/LegacyLinker;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/base/library_loader/LegacyLinker;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Lorg/chromium/base/library_loader/Linker;-><init>()V

    .line 41
    iput-boolean v1, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mInitialized:Z

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mInBrowserProcess:Z

    .line 48
    iput-boolean v1, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mWaitForSharedRelros:Z

    .line 52
    iput-boolean v1, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mBrowserUsesSharedRelro:Z

    .line 55
    iput-object v2, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mSharedRelros:Landroid/os/Bundle;

    .line 58
    iput-wide v4, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mBaseLoadAddress:J

    .line 62
    iput-wide v4, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mCurrentLoadAddress:J

    .line 65
    iput-boolean v1, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mPrepareLibraryLoadCalled:Z

    .line 68
    iput-object v2, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mLoadedLibraries:Ljava/util/HashMap;

    .line 71
    return-void
.end method

.method static synthetic access$000(J)V
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 36
    invoke-static {p0, p1}, Lorg/chromium/base/library_loader/LegacyLinker;->nativeRunCallbackOnUiThread(J)V

    return-void
.end method

.method static create()Lorg/chromium/base/library_loader/Linker;
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lorg/chromium/base/library_loader/LegacyLinker;

    invoke-direct {v0}, Lorg/chromium/base/library_loader/LegacyLinker;-><init>()V

    return-object v0
.end method

.method private dumpBundle(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 376
    return-void
.end method

.method private ensureInitializedLocked()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 79
    sget-boolean v0, Lorg/chromium/base/library_loader/LegacyLinker;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 81
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mInitialized:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lorg/chromium/base/library_loader/NativeLibraries;->sUseLinker:Z

    if-nez v0, :cond_2

    .line 121
    :cond_1
    :goto_0
    return-void

    .line 87
    :cond_2
    invoke-static {}, Lorg/chromium/base/library_loader/LegacyLinker;->loadLinkerJniLibrary()V

    .line 89
    iget v0, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mMemoryDeviceConfig:I

    if-nez v0, :cond_3

    .line 90
    invoke-static {}, Lorg/chromium/base/SysUtils;->isLowEndDevice()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 91
    iput v3, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mMemoryDeviceConfig:I

    .line 99
    :cond_3
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 116
    const-string v0, "LibraryLoader"

    const-string v1, "FATAL: illegal shared RELRO config"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 93
    :cond_4
    const/4 v0, 0x2

    iput v0, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mMemoryDeviceConfig:I

    goto :goto_1

    .line 101
    :pswitch_0
    iput-boolean v2, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mBrowserUsesSharedRelro:Z

    .line 120
    :goto_2
    iput-boolean v3, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mInitialized:Z

    goto :goto_0

    .line 104
    :pswitch_1
    iget v0, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mMemoryDeviceConfig:I

    if-ne v0, v3, :cond_5

    .line 105
    iput-boolean v3, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mBrowserUsesSharedRelro:Z

    .line 106
    const-string v0, "LibraryLoader"

    const-string v1, "Low-memory device: shared RELROs used in all processes"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 108
    :cond_5
    iput-boolean v2, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mBrowserUsesSharedRelro:Z

    goto :goto_2

    .line 112
    :pswitch_2
    const-string v0, "LibraryLoader"

    const-string v1, "Beware: shared RELROs used in all processes!"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    iput-boolean v3, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mBrowserUsesSharedRelro:Z

    goto :goto_2

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static native nativeCreateSharedRelro(Ljava/lang/String;JLorg/chromium/base/library_loader/Linker$LibInfo;)Z
.end method

.method private static native nativeLoadLibrary(Ljava/lang/String;JLorg/chromium/base/library_loader/Linker$LibInfo;)Z
.end method

.method private static native nativeLoadLibraryInZipFile(Ljava/lang/String;Ljava/lang/String;JLorg/chromium/base/library_loader/Linker$LibInfo;)Z
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method private static native nativeRunCallbackOnUiThread(J)V
.end method

.method private static native nativeUseSharedRelro(Ljava/lang/String;Lorg/chromium/base/library_loader/Linker$LibInfo;)Z
.end method

.method public static postCallbackOnMainThread(J)V
    .locals 2
    .param p0, "opaque"    # J
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 568
    new-instance v0, Lorg/chromium/base/library_loader/LegacyLinker$1;

    invoke-direct {v0, p0, p1}, Lorg/chromium/base/library_loader/LegacyLinker$1;-><init>(J)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 574
    return-void
.end method

.method private setupBaseLoadAddressLocked()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 357
    sget-boolean v0, Lorg/chromium/base/library_loader/LegacyLinker;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 358
    :cond_0
    iget-wide v0, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mBaseLoadAddress:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 359
    invoke-virtual {p0}, Lorg/chromium/base/library_loader/LegacyLinker;->getRandomBaseLoadAddress()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mBaseLoadAddress:J

    .line 360
    iget-wide v0, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mBaseLoadAddress:J

    iput-wide v0, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mCurrentLoadAddress:J

    .line 361
    iget-wide v0, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mBaseLoadAddress:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 364
    const-string v0, "LibraryLoader"

    const-string v1, "Disabling shared RELROs due address space pressure"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 365
    iput-boolean v4, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mBrowserUsesSharedRelro:Z

    .line 366
    iput-boolean v4, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mWaitForSharedRelros:Z

    .line 369
    :cond_1
    return-void
.end method

.method private useSharedRelrosLocked(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 387
    sget-boolean v5, Lorg/chromium/base/library_loader/LegacyLinker;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mLock:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 393
    :cond_0
    if-nez p1, :cond_2

    .line 433
    :cond_1
    :goto_0
    return-void

    .line 400
    :cond_2
    iget-object v5, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mLoadedLibraries:Ljava/util/HashMap;

    if-eqz v5, :cond_1

    .line 410
    invoke-virtual {p0, p1}, Lorg/chromium/base/library_loader/LegacyLinker;->createLibInfoMapFromBundle(Landroid/os/Bundle;)Ljava/util/HashMap;

    move-result-object v4

    .line 413
    .local v4, "relroMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/chromium/base/library_loader/Linker$LibInfo;>;"
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 414
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/chromium/base/library_loader/Linker$LibInfo;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 415
    .local v3, "libName":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/base/library_loader/Linker$LibInfo;

    .line 416
    .local v2, "libInfo":Lorg/chromium/base/library_loader/Linker$LibInfo;
    invoke-static {v3, v2}, Lorg/chromium/base/library_loader/LegacyLinker;->nativeUseSharedRelro(Ljava/lang/String;Lorg/chromium/base/library_loader/Linker$LibInfo;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 417
    const-string v5, "LibraryLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not use shared RELRO section for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 426
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/chromium/base/library_loader/Linker$LibInfo;>;"
    .end local v2    # "libInfo":Lorg/chromium/base/library_loader/Linker$LibInfo;
    .end local v3    # "libName":Ljava/lang/String;
    :cond_4
    iget-boolean v5, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mInBrowserProcess:Z

    if-nez v5, :cond_1

    .line 427
    invoke-virtual {p0, v4}, Lorg/chromium/base/library_loader/LegacyLinker;->closeLibInfoMap(Ljava/util/HashMap;)V

    goto :goto_0
.end method


# virtual methods
.method public disableSharedRelros()V
    .locals 2

    .prologue
    .line 296
    iget-object v1, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 297
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/base/library_loader/LegacyLinker;->ensureInitializedLocked()V

    .line 298
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mInBrowserProcess:Z

    .line 299
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mWaitForSharedRelros:Z

    .line 300
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mBrowserUsesSharedRelro:Z

    .line 301
    monitor-exit v1

    .line 302
    return-void

    .line 301
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public finishLibraryLoad()V
    .locals 4

    .prologue
    .line 165
    iget-object v2, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 166
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/base/library_loader/LegacyLinker;->ensureInitializedLocked()V

    .line 174
    iget-object v1, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mLoadedLibraries:Ljava/util/HashMap;

    if-nez v1, :cond_2

    .line 213
    :cond_0
    :goto_0
    sget-boolean v1, Lorg/chromium/base/library_loader/NativeLibraries;->sEnableLinkerTests:Z

    if-eqz v1, :cond_1

    .line 214
    iget v1, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mMemoryDeviceConfig:I

    iget-boolean v3, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mInBrowserProcess:Z

    invoke-virtual {p0, v1, v3}, Lorg/chromium/base/library_loader/LegacyLinker;->runTestRunnerClassForTesting(IZ)V

    .line 216
    :cond_1
    monitor-exit v2

    .line 220
    return-void

    .line 179
    :cond_2
    iget-boolean v1, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mInBrowserProcess:Z

    if-eqz v1, :cond_3

    .line 182
    iget-object v1, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mLoadedLibraries:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Lorg/chromium/base/library_loader/LegacyLinker;->createBundleFromLibInfoMap(Ljava/util/HashMap;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mSharedRelros:Landroid/os/Bundle;

    .line 188
    iget-boolean v1, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mBrowserUsesSharedRelro:Z

    if-eqz v1, :cond_3

    .line 189
    iget-object v1, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mSharedRelros:Landroid/os/Bundle;

    invoke-direct {p0, v1}, Lorg/chromium/base/library_loader/LegacyLinker;->useSharedRelrosLocked(Landroid/os/Bundle;)V

    .line 193
    :cond_3
    iget-boolean v1, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mWaitForSharedRelros:Z

    if-eqz v1, :cond_0

    .line 194
    sget-boolean v1, Lorg/chromium/base/library_loader/LegacyLinker;->$assertionsDisabled:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mInBrowserProcess:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 216
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 197
    :cond_4
    :goto_1
    :try_start_1
    iget-object v1, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mSharedRelros:Landroid/os/Bundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_5

    .line 199
    :try_start_2
    iget-object v1, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 200
    :catch_0
    move-exception v0

    .line 202
    .local v0, "ie":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 205
    .end local v0    # "ie":Ljava/lang/InterruptedException;
    :cond_5
    iget-object v1, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mSharedRelros:Landroid/os/Bundle;

    invoke-direct {p0, v1}, Lorg/chromium/base/library_loader/LegacyLinker;->useSharedRelrosLocked(Landroid/os/Bundle;)V

    .line 207
    iget-object v1, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mSharedRelros:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->clear()V

    .line 208
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mSharedRelros:Landroid/os/Bundle;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public getBaseLoadAddress()J
    .locals 4

    .prologue
    .line 338
    iget-object v2, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 339
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/base/library_loader/LegacyLinker;->ensureInitializedLocked()V

    .line 340
    iget-boolean v0, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mInBrowserProcess:Z

    if-nez v0, :cond_0

    .line 341
    const-string v0, "LibraryLoader"

    const-string v1, "Shared RELRO sections are disabled in this process!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 342
    const-wide/16 v0, 0x0

    monitor-exit v2

    .line 351
    :goto_0
    return-wide v0

    .line 345
    :cond_0
    invoke-direct {p0}, Lorg/chromium/base/library_loader/LegacyLinker;->setupBaseLoadAddressLocked()V

    .line 351
    iget-wide v0, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mBaseLoadAddress:J

    monitor-exit v2

    goto :goto_0

    .line 352
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSharedRelros()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 271
    iget-object v1, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 272
    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mInBrowserProcess:Z

    if-nez v0, :cond_0

    .line 276
    const/4 v0, 0x0

    monitor-exit v1

    .line 283
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mSharedRelros:Landroid/os/Bundle;

    monitor-exit v1

    goto :goto_0

    .line 284
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public initServiceProcess(J)V
    .locals 3
    .param p1, "baseLoadAddress"    # J

    .prologue
    .line 318
    iget-object v1, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 319
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/base/library_loader/LegacyLinker;->ensureInitializedLocked()V

    .line 320
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mInBrowserProcess:Z

    .line 321
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mBrowserUsesSharedRelro:Z

    .line 322
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mWaitForSharedRelros:Z

    .line 323
    iput-wide p1, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mBaseLoadAddress:J

    .line 324
    iput-wide p1, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mCurrentLoadAddress:J

    .line 325
    monitor-exit v1

    .line 326
    return-void

    .line 325
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isUsingBrowserSharedRelros()Z
    .locals 2

    .prologue
    .line 129
    iget-object v1, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 130
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/base/library_loader/LegacyLinker;->ensureInitializedLocked()V

    .line 131
    iget-boolean v0, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mInBrowserProcess:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mBrowserUsesSharedRelro:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method loadLibraryImpl(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 16
    .param p1, "zipFilePath"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "libFilePath"    # Ljava/lang/String;
    .param p3, "isFixedAddressPermitted"    # Z

    .prologue
    .line 457
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/chromium/base/library_loader/LegacyLinker;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 458
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lorg/chromium/base/library_loader/LegacyLinker;->ensureInitializedLocked()V

    .line 464
    sget-boolean v8, Lorg/chromium/base/library_loader/LegacyLinker;->$assertionsDisabled:Z

    if-nez v8, :cond_0

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lorg/chromium/base/library_loader/LegacyLinker;->mPrepareLibraryLoadCalled:Z

    if-nez v8, :cond_0

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 556
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 466
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/chromium/base/library_loader/LegacyLinker;->mLoadedLibraries:Ljava/util/HashMap;

    if-nez v8, :cond_1

    .line 467
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v8, v0, Lorg/chromium/base/library_loader/LegacyLinker;->mLoadedLibraries:Ljava/util/HashMap;

    .line 470
    :cond_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/chromium/base/library_loader/LegacyLinker;->mLoadedLibraries:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 474
    monitor-exit v9

    .line 557
    :goto_0
    return-void

    .line 477
    :cond_2
    new-instance v3, Lorg/chromium/base/library_loader/Linker$LibInfo;

    invoke-direct {v3}, Lorg/chromium/base/library_loader/Linker$LibInfo;-><init>()V

    .line 478
    .local v3, "libInfo":Lorg/chromium/base/library_loader/Linker$LibInfo;
    const-wide/16 v4, 0x0

    .line 479
    .local v4, "loadAddress":J
    if-eqz p3, :cond_5

    .line 480
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lorg/chromium/base/library_loader/LegacyLinker;->mInBrowserProcess:Z

    if-eqz v8, :cond_3

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lorg/chromium/base/library_loader/LegacyLinker;->mBrowserUsesSharedRelro:Z

    if-nez v8, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lorg/chromium/base/library_loader/LegacyLinker;->mWaitForSharedRelros:Z

    if-eqz v8, :cond_5

    .line 482
    :cond_4
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/chromium/base/library_loader/LegacyLinker;->mCurrentLoadAddress:J

    .line 485
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/chromium/base/library_loader/LegacyLinker;->mBaseLoadAddress:J

    const-wide/32 v12, 0xc000000

    add-long/2addr v10, v12

    cmp-long v8, v4, v10

    if-lez v8, :cond_5

    .line 486
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Load address outside reservation, for: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 488
    .local v2, "errorMessage":Ljava/lang/String;
    const-string v8, "LibraryLoader"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v2, v10}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 489
    new-instance v8, Ljava/lang/UnsatisfiedLinkError;

    invoke-direct {v8, v2}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v8

    .line 494
    .end local v2    # "errorMessage":Ljava/lang/String;
    :cond_5
    move-object/from16 v6, p2

    .line 495
    .local v6, "sharedRelRoName":Ljava/lang/String;
    if-eqz p1, :cond_b

    .line 496
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v4, v5, v3}, Lorg/chromium/base/library_loader/LegacyLinker;->nativeLoadLibraryInZipFile(Ljava/lang/String;Ljava/lang/String;JLorg/chromium/base/library_loader/Linker$LibInfo;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 497
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to load library: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", in: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 499
    .restart local v2    # "errorMessage":Ljava/lang/String;
    const-string v8, "LibraryLoader"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v2, v10}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 500
    new-instance v8, Ljava/lang/UnsatisfiedLinkError;

    invoke-direct {v8, v2}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v8

    .line 502
    .end local v2    # "errorMessage":Ljava/lang/String;
    :cond_6
    move-object/from16 v6, p1

    .line 517
    :cond_7
    sget-boolean v8, Lorg/chromium/base/library_loader/NativeLibraries;->sEnableLinkerTests:Z

    if-eqz v8, :cond_8

    .line 518
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lorg/chromium/base/library_loader/LegacyLinker;->mInBrowserProcess:Z

    if-eqz v8, :cond_c

    const-string v7, "BROWSER_LIBRARY_ADDRESS"

    .line 520
    .local v7, "tag":Ljava/lang/String;
    :goto_1
    const-string v8, "LibraryLoader"

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "%s: %s %x"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v7, v12, v13

    const/4 v13, 0x1

    aput-object p2, v12, v13

    const/4 v13, 0x2

    iget-wide v14, v3, Lorg/chromium/base/library_loader/Linker$LibInfo;->mLoadAddress:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v8, v10, v11}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 524
    .end local v7    # "tag":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lorg/chromium/base/library_loader/LegacyLinker;->mInBrowserProcess:Z

    if-eqz v8, :cond_9

    .line 526
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/chromium/base/library_loader/LegacyLinker;->mCurrentLoadAddress:J

    invoke-static {v6, v10, v11, v3}, Lorg/chromium/base/library_loader/LegacyLinker;->nativeCreateSharedRelro(Ljava/lang/String;JLorg/chromium/base/library_loader/Linker$LibInfo;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 527
    const-string v8, "LibraryLoader"

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "Could not create shared RELRO for %s at %x"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p2, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/chromium/base/library_loader/LegacyLinker;->mCurrentLoadAddress:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v8, v10, v11}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 543
    :cond_9
    const-wide/16 v10, 0x0

    cmp-long v8, v4, v10

    if-eqz v8, :cond_a

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/chromium/base/library_loader/LegacyLinker;->mCurrentLoadAddress:J

    const-wide/16 v12, 0x0

    cmp-long v8, v10, v12

    if-eqz v8, :cond_a

    .line 548
    iget-wide v10, v3, Lorg/chromium/base/library_loader/Linker$LibInfo;->mLoadAddress:J

    iget-wide v12, v3, Lorg/chromium/base/library_loader/Linker$LibInfo;->mLoadSize:J

    add-long/2addr v10, v12

    const-wide/32 v12, 0x1000000

    add-long/2addr v10, v12

    move-object/from16 v0, p0

    iput-wide v10, v0, Lorg/chromium/base/library_loader/LegacyLinker;->mCurrentLoadAddress:J

    .line 552
    :cond_a
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/chromium/base/library_loader/LegacyLinker;->mLoadedLibraries:Ljava/util/HashMap;

    invoke-virtual {v8, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    monitor-exit v9

    goto/16 :goto_0

    .line 504
    :cond_b
    move-object/from16 v0, p2

    invoke-static {v0, v4, v5, v3}, Lorg/chromium/base/library_loader/LegacyLinker;->nativeLoadLibrary(Ljava/lang/String;JLorg/chromium/base/library_loader/Linker$LibInfo;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 505
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to load library: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 506
    .restart local v2    # "errorMessage":Ljava/lang/String;
    const-string v8, "LibraryLoader"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v2, v10}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 507
    new-instance v8, Ljava/lang/UnsatisfiedLinkError;

    invoke-direct {v8, v2}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v8

    .line 518
    .end local v2    # "errorMessage":Ljava/lang/String;
    :cond_c
    const-string v7, "RENDERER_LIBRARY_ADDRESS"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method

.method public prepareLibraryLoad()V
    .locals 2

    .prologue
    .line 143
    iget-object v1, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 144
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/base/library_loader/LegacyLinker;->ensureInitializedLocked()V

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mPrepareLibraryLoadCalled:Z

    .line 147
    iget-boolean v0, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mInBrowserProcess:Z

    if-eqz v0, :cond_0

    .line 150
    invoke-direct {p0}, Lorg/chromium/base/library_loader/LegacyLinker;->setupBaseLoadAddressLocked()V

    .line 152
    :cond_0
    monitor-exit v1

    .line 153
    return-void

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public useSharedRelros(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 236
    const/4 v0, 0x0

    .line 237
    .local v0, "clonedBundle":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    .line 238
    const-class v2, Lorg/chromium/base/library_loader/Linker$LibInfo;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 239
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "clonedBundle":Landroid/os/Bundle;
    const-class v2, Lorg/chromium/base/library_loader/Linker$LibInfo;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(Ljava/lang/ClassLoader;)V

    .line 240
    .restart local v0    # "clonedBundle":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 241
    .local v1, "parcel":Landroid/os/Parcel;
    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 242
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 243
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    .line 244
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 250
    .end local v1    # "parcel":Landroid/os/Parcel;
    :cond_0
    iget-object v3, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 253
    :try_start_0
    iput-object v0, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mSharedRelros:Landroid/os/Bundle;

    .line 255
    iget-object v2, p0, Lorg/chromium/base/library_loader/LegacyLinker;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 256
    monitor-exit v3

    .line 257
    return-void

    .line 256
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
