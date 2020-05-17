.class Lorg/chromium/base/library_loader/ModernLinker;
.super Lorg/chromium/base/library_loader/Linker;
.source "ModernLinker.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final TAG:Ljava/lang/String; = "LibraryLoader"


# instance fields
.field private mBaseLoadAddress:J

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

.field private mSharedRelros:Ljava/util/HashMap;
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

.field private mSharedRelrosBundle:Landroid/os/Bundle;

.field private mWaitForSharedRelros:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lorg/chromium/base/library_loader/ModernLinker;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/base/library_loader/ModernLinker;->$assertionsDisabled:Z

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

    .line 66
    invoke-direct {p0}, Lorg/chromium/base/library_loader/Linker;-><init>()V

    .line 37
    iput-boolean v1, p0, Lorg/chromium/base/library_loader/ModernLinker;->mInitialized:Z

    .line 40
    iput-boolean v1, p0, Lorg/chromium/base/library_loader/ModernLinker;->mWaitForSharedRelros:Z

    .line 43
    iput-object v2, p0, Lorg/chromium/base/library_loader/ModernLinker;->mSharedRelros:Ljava/util/HashMap;

    .line 46
    iput-object v2, p0, Lorg/chromium/base/library_loader/ModernLinker;->mSharedRelrosBundle:Landroid/os/Bundle;

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/base/library_loader/ModernLinker;->mInBrowserProcess:Z

    .line 52
    iput-wide v4, p0, Lorg/chromium/base/library_loader/ModernLinker;->mBaseLoadAddress:J

    .line 57
    iput-wide v4, p0, Lorg/chromium/base/library_loader/ModernLinker;->mCurrentLoadAddress:J

    .line 60
    iput-boolean v1, p0, Lorg/chromium/base/library_loader/ModernLinker;->mPrepareLibraryLoadCalled:Z

    .line 63
    iput-object v2, p0, Lorg/chromium/base/library_loader/ModernLinker;->mLoadedLibraries:Ljava/util/HashMap;

    .line 66
    return-void
.end method

.method static create()Lorg/chromium/base/library_loader/Linker;
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lorg/chromium/base/library_loader/ModernLinker;

    invoke-direct {v0}, Lorg/chromium/base/library_loader/ModernLinker;-><init>()V

    return-object v0
.end method

.method private ensureInitializedLocked()V
    .locals 1

    .prologue
    .line 73
    sget-boolean v0, Lorg/chromium/base/library_loader/ModernLinker;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/base/library_loader/ModernLinker;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 74
    :cond_0
    sget-boolean v0, Lorg/chromium/base/library_loader/ModernLinker;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lorg/chromium/base/library_loader/NativeLibraries;->sUseLinker:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 78
    :cond_1
    iget-boolean v0, p0, Lorg/chromium/base/library_loader/ModernLinker;->mInitialized:Z

    if-nez v0, :cond_2

    .line 79
    invoke-static {}, Lorg/chromium/base/library_loader/ModernLinker;->loadLinkerJniLibrary()V

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/base/library_loader/ModernLinker;->mInitialized:Z

    .line 82
    :cond_2
    return-void
.end method

.method private static native nativeCreateSharedRelro(Ljava/lang/String;JLjava/lang/String;Lorg/chromium/base/library_loader/Linker$LibInfo;)Z
.end method

.method private static native nativeGetCpuAbi()Ljava/lang/String;
.end method

.method private static native nativeLoadLibrary(Ljava/lang/String;JLorg/chromium/base/library_loader/Linker$LibInfo;)Z
.end method

.method private setupBaseLoadAddressLocked()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 309
    sget-boolean v0, Lorg/chromium/base/library_loader/ModernLinker;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/base/library_loader/ModernLinker;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 312
    :cond_0
    iget-wide v0, p0, Lorg/chromium/base/library_loader/ModernLinker;->mBaseLoadAddress:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 313
    invoke-virtual {p0}, Lorg/chromium/base/library_loader/ModernLinker;->getRandomBaseLoadAddress()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/base/library_loader/ModernLinker;->mBaseLoadAddress:J

    .line 315
    :cond_1
    iget-wide v0, p0, Lorg/chromium/base/library_loader/ModernLinker;->mBaseLoadAddress:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 318
    const-string v0, "LibraryLoader"

    const-string v1, "Disabling shared RELROs due address space pressure"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 319
    iput-boolean v4, p0, Lorg/chromium/base/library_loader/ModernLinker;->mWaitForSharedRelros:Z

    .line 321
    :cond_2
    return-void
.end method

.method private waitForSharedRelrosLocked()V
    .locals 4
    .annotation build Lorg/chromium/base/annotations/SuppressFBWarnings;
        value = {
            "RCN_REDUNDANT_NULLCHECK_OF_NULL_VALUE"
        }
    .end annotation

    .prologue
    .line 162
    sget-boolean v1, Lorg/chromium/base/library_loader/ModernLinker;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/chromium/base/library_loader/ModernLinker;->mLock:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 165
    :cond_0
    iget-object v1, p0, Lorg/chromium/base/library_loader/ModernLinker;->mSharedRelros:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    .line 185
    :cond_1
    return-void

    .line 170
    :cond_2
    const-wide/16 v2, 0x0

    .line 171
    .local v2, "startTime":J
    :goto_0
    iget-object v1, p0, Lorg/chromium/base/library_loader/ModernLinker;->mSharedRelros:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 173
    :try_start_0
    iget-object v1, p0, Lorg/chromium/base/library_loader/ModernLinker;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method


# virtual methods
.method public disableSharedRelros()V
    .locals 2

    .prologue
    .line 253
    iget-object v1, p0, Lorg/chromium/base/library_loader/ModernLinker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 254
    :try_start_0
    sget-boolean v0, Lorg/chromium/base/library_loader/ModernLinker;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/base/library_loader/ModernLinker;->mPrepareLibraryLoadCalled:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 259
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 257
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lorg/chromium/base/library_loader/ModernLinker;->mInBrowserProcess:Z

    .line 258
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/base/library_loader/ModernLinker;->mWaitForSharedRelros:Z

    .line 259
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 260
    return-void
.end method

.method public finishLibraryLoad()V
    .locals 3

    .prologue
    .line 139
    iget-object v1, p0, Lorg/chromium/base/library_loader/ModernLinker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 140
    :try_start_0
    sget-boolean v0, Lorg/chromium/base/library_loader/ModernLinker;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/base/library_loader/ModernLinker;->mPrepareLibraryLoadCalled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 143
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lorg/chromium/base/library_loader/ModernLinker;->mInBrowserProcess:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/base/library_loader/ModernLinker;->mSharedRelros:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lorg/chromium/base/library_loader/ModernLinker;->mSharedRelros:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Lorg/chromium/base/library_loader/ModernLinker;->closeLibInfoMap(Ljava/util/HashMap;)V

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/base/library_loader/ModernLinker;->mSharedRelros:Ljava/util/HashMap;

    .line 149
    :cond_1
    sget-boolean v0, Lorg/chromium/base/library_loader/NativeLibraries;->sEnableLinkerTests:Z

    if-eqz v0, :cond_2

    .line 150
    const/4 v0, 0x0

    iget-boolean v2, p0, Lorg/chromium/base/library_loader/ModernLinker;->mInBrowserProcess:Z

    invoke-virtual {p0, v0, v2}, Lorg/chromium/base/library_loader/ModernLinker;->runTestRunnerClassForTesting(IZ)V

    .line 152
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    return-void
.end method

.method public getBaseLoadAddress()J
    .locals 4

    .prologue
    .line 295
    iget-object v1, p0, Lorg/chromium/base/library_loader/ModernLinker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 296
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/base/library_loader/ModernLinker;->ensureInitializedLocked()V

    .line 297
    invoke-direct {p0}, Lorg/chromium/base/library_loader/ModernLinker;->setupBaseLoadAddressLocked()V

    .line 303
    iget-wide v2, p0, Lorg/chromium/base/library_loader/ModernLinker;->mBaseLoadAddress:J

    monitor-exit v1

    return-wide v2

    .line 304
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSharedRelros()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 220
    iget-object v1, p0, Lorg/chromium/base/library_loader/ModernLinker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 221
    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/base/library_loader/ModernLinker;->mInBrowserProcess:Z

    if-nez v0, :cond_0

    .line 225
    const/4 v0, 0x0

    monitor-exit v1

    .line 239
    :goto_0
    return-object v0

    .line 230
    :cond_0
    iget-object v0, p0, Lorg/chromium/base/library_loader/ModernLinker;->mSharedRelrosBundle:Landroid/os/Bundle;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/base/library_loader/ModernLinker;->mSharedRelros:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lorg/chromium/base/library_loader/ModernLinker;->mSharedRelros:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Lorg/chromium/base/library_loader/ModernLinker;->createBundleFromLibInfoMap(Ljava/util/HashMap;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/base/library_loader/ModernLinker;->mSharedRelrosBundle:Landroid/os/Bundle;

    .line 239
    :cond_1
    iget-object v0, p0, Lorg/chromium/base/library_loader/ModernLinker;->mSharedRelrosBundle:Landroid/os/Bundle;

    monitor-exit v1

    goto :goto_0

    .line 240
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
    .line 276
    iget-object v1, p0, Lorg/chromium/base/library_loader/ModernLinker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 277
    :try_start_0
    sget-boolean v0, Lorg/chromium/base/library_loader/ModernLinker;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/base/library_loader/ModernLinker;->mPrepareLibraryLoadCalled:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 284
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 281
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lorg/chromium/base/library_loader/ModernLinker;->mInBrowserProcess:Z

    .line 282
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/base/library_loader/ModernLinker;->mWaitForSharedRelros:Z

    .line 283
    iput-wide p1, p0, Lorg/chromium/base/library_loader/ModernLinker;->mBaseLoadAddress:J

    .line 284
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 285
    return-void
.end method

.method public isUsingBrowserSharedRelros()Z
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method loadLibraryImpl(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 18
    .param p1, "zipFilePath"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "libFilePath"    # Ljava/lang/String;
    .param p3, "isFixedAddressPermitted"    # Z

    .prologue
    .line 345
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/chromium/base/library_loader/ModernLinker;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 346
    :try_start_0
    sget-boolean v10, Lorg/chromium/base/library_loader/ModernLinker;->$assertionsDisabled:Z

    if-nez v10, :cond_0

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lorg/chromium/base/library_loader/ModernLinker;->mPrepareLibraryLoadCalled:Z

    if-nez v10, :cond_0

    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    .line 442
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 349
    :cond_0
    if-eqz p1, :cond_1

    .line 355
    :try_start_1
    invoke-static {}, Lorg/chromium/base/library_loader/ModernLinker;->nativeGetCpuAbi()Ljava/lang/String;

    move-result-object v2

    .line 356
    .local v2, "cpuAbi":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "!/lib/"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "/crazy."

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 363
    .end local v2    # "cpuAbi":Ljava/lang/String;
    .local v3, "dlopenExtPath":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/chromium/base/library_loader/ModernLinker;->mLoadedLibraries:Ljava/util/HashMap;

    invoke-virtual {v10, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 367
    monitor-exit v11

    .line 443
    :goto_1
    return-void

    .line 360
    .end local v3    # "dlopenExtPath":Ljava/lang/String;
    :cond_1
    move-object/from16 v3, p2

    .restart local v3    # "dlopenExtPath":Ljava/lang/String;
    goto :goto_0

    .line 373
    :cond_2
    const-wide/16 v6, 0x0

    .line 374
    .local v6, "loadAddress":J
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lorg/chromium/base/library_loader/ModernLinker;->mInBrowserProcess:Z

    if-nez v10, :cond_3

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lorg/chromium/base/library_loader/ModernLinker;->mWaitForSharedRelros:Z

    if-eqz v10, :cond_3

    if-eqz p3, :cond_3

    .line 375
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/chromium/base/library_loader/ModernLinker;->mCurrentLoadAddress:J

    .line 378
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/chromium/base/library_loader/ModernLinker;->mBaseLoadAddress:J

    const-wide/32 v14, 0xc000000

    add-long/2addr v12, v14

    cmp-long v10, v6, v12

    if-lez v10, :cond_3

    .line 379
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Load address outside reservation, for: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 380
    .local v4, "errorMessage":Ljava/lang/String;
    const-string v10, "LibraryLoader"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v10, v4, v12}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 381
    new-instance v10, Ljava/lang/UnsatisfiedLinkError;

    invoke-direct {v10, v4}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v10

    .line 385
    .end local v4    # "errorMessage":Ljava/lang/String;
    :cond_3
    new-instance v5, Lorg/chromium/base/library_loader/Linker$LibInfo;

    invoke-direct {v5}, Lorg/chromium/base/library_loader/Linker$LibInfo;-><init>()V

    .line 387
    .local v5, "libInfo":Lorg/chromium/base/library_loader/Linker$LibInfo;
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lorg/chromium/base/library_loader/ModernLinker;->mInBrowserProcess:Z

    if-eqz v10, :cond_6

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/chromium/base/library_loader/ModernLinker;->mCurrentLoadAddress:J

    const-wide/16 v14, 0x0

    cmp-long v10, v12, v14

    if-eqz v10, :cond_6

    .line 391
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x0

    invoke-static {v12}, Lorg/chromium/base/PathUtils;->getDataDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "/RELRO:"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 392
    .local v8, "relroPath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/chromium/base/library_loader/ModernLinker;->mCurrentLoadAddress:J

    invoke-static {v3, v12, v13, v8, v5}, Lorg/chromium/base/library_loader/ModernLinker;->nativeCreateSharedRelro(Ljava/lang/String;JLjava/lang/String;Lorg/chromium/base/library_loader/Linker$LibInfo;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 394
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/chromium/base/library_loader/ModernLinker;->mSharedRelros:Ljava/util/HashMap;

    invoke-virtual {v10, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    .end local v8    # "relroPath":Ljava/lang/String;
    :cond_4
    :goto_2
    invoke-static {v3, v6, v7, v5}, Lorg/chromium/base/library_loader/ModernLinker;->nativeLoadLibrary(Ljava/lang/String;JLorg/chromium/base/library_loader/Linker$LibInfo;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 413
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to load library: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 414
    .restart local v4    # "errorMessage":Ljava/lang/String;
    const-string v10, "LibraryLoader"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v10, v4, v12}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 415
    new-instance v10, Ljava/lang/UnsatisfiedLinkError;

    invoke-direct {v10, v4}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v10

    .line 396
    .end local v4    # "errorMessage":Ljava/lang/String;
    .restart local v8    # "relroPath":Ljava/lang/String;
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to create shared relro: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 397
    .restart local v4    # "errorMessage":Ljava/lang/String;
    const-string v10, "LibraryLoader"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v10, v4, v12}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 399
    .end local v4    # "errorMessage":Ljava/lang/String;
    .end local v8    # "relroPath":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lorg/chromium/base/library_loader/ModernLinker;->mInBrowserProcess:Z

    if-nez v10, :cond_4

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/chromium/base/library_loader/ModernLinker;->mCurrentLoadAddress:J

    const-wide/16 v14, 0x0

    cmp-long v10, v12, v14

    if-eqz v10, :cond_4

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lorg/chromium/base/library_loader/ModernLinker;->mWaitForSharedRelros:Z

    if-eqz v10, :cond_4

    .line 403
    invoke-direct/range {p0 .. p0}, Lorg/chromium/base/library_loader/ModernLinker;->waitForSharedRelrosLocked()V

    .line 404
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/chromium/base/library_loader/ModernLinker;->mSharedRelros:Ljava/util/HashMap;

    invoke-virtual {v10, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 405
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/chromium/base/library_loader/ModernLinker;->mSharedRelros:Ljava/util/HashMap;

    invoke-virtual {v10, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "libInfo":Lorg/chromium/base/library_loader/Linker$LibInfo;
    check-cast v5, Lorg/chromium/base/library_loader/Linker$LibInfo;

    .restart local v5    # "libInfo":Lorg/chromium/base/library_loader/Linker$LibInfo;
    goto :goto_2

    .line 424
    :cond_7
    sget-boolean v10, Lorg/chromium/base/library_loader/NativeLibraries;->sEnableLinkerTests:Z

    if-eqz v10, :cond_8

    .line 425
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lorg/chromium/base/library_loader/ModernLinker;->mInBrowserProcess:Z

    if-eqz v10, :cond_a

    const-string v9, "BROWSER_LIBRARY_ADDRESS"

    .line 427
    .local v9, "tag":Ljava/lang/String;
    :goto_3
    const-string v10, "LibraryLoader"

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v13, "%s: %s %x"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v9, v14, v15

    const/4 v15, 0x1

    aput-object p2, v14, v15

    const/4 v15, 0x2

    iget-wide v0, v5, Lorg/chromium/base/library_loader/Linker$LibInfo;->mLoadAddress:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v10, v12, v13}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 431
    .end local v9    # "tag":Ljava/lang/String;
    :cond_8
    const-wide/16 v12, 0x0

    cmp-long v10, v6, v12

    if-eqz v10, :cond_9

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/chromium/base/library_loader/ModernLinker;->mCurrentLoadAddress:J

    const-wide/16 v14, 0x0

    cmp-long v10, v12, v14

    if-eqz v10, :cond_9

    .line 434
    iget-wide v12, v5, Lorg/chromium/base/library_loader/Linker$LibInfo;->mLoadAddress:J

    iget-wide v14, v5, Lorg/chromium/base/library_loader/Linker$LibInfo;->mLoadSize:J

    add-long/2addr v12, v14

    const-wide/32 v14, 0x1000000

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/chromium/base/library_loader/ModernLinker;->mCurrentLoadAddress:J

    .line 438
    :cond_9
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/chromium/base/library_loader/ModernLinker;->mLoadedLibraries:Ljava/util/HashMap;

    invoke-virtual {v10, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    monitor-exit v11

    goto/16 :goto_1

    .line 425
    :cond_a
    const-string v9, "RENDERER_LIBRARY_ADDRESS"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method public prepareLibraryLoad()V
    .locals 4

    .prologue
    .line 105
    sget-boolean v0, Lorg/chromium/base/library_loader/ModernLinker;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lorg/chromium/base/library_loader/NativeLibraries;->sUseLinker:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 107
    :cond_0
    iget-object v1, p0, Lorg/chromium/base/library_loader/ModernLinker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 108
    :try_start_0
    sget-boolean v0, Lorg/chromium/base/library_loader/ModernLinker;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/chromium/base/library_loader/ModernLinker;->mPrepareLibraryLoadCalled:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 109
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lorg/chromium/base/library_loader/ModernLinker;->ensureInitializedLocked()V

    .line 114
    iget-boolean v0, p0, Lorg/chromium/base/library_loader/ModernLinker;->mInBrowserProcess:Z

    if-eqz v0, :cond_2

    .line 115
    invoke-direct {p0}, Lorg/chromium/base/library_loader/ModernLinker;->setupBaseLoadAddressLocked()V

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/chromium/base/library_loader/ModernLinker;->mSharedRelros:Ljava/util/HashMap;

    .line 120
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/chromium/base/library_loader/ModernLinker;->mLoadedLibraries:Ljava/util/HashMap;

    .line 123
    iget-wide v2, p0, Lorg/chromium/base/library_loader/ModernLinker;->mBaseLoadAddress:J

    iput-wide v2, p0, Lorg/chromium/base/library_loader/ModernLinker;->mCurrentLoadAddress:J

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/base/library_loader/ModernLinker;->mPrepareLibraryLoadCalled:Z

    .line 126
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    return-void
.end method

.method public useSharedRelros(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 202
    iget-object v1, p0, Lorg/chromium/base/library_loader/ModernLinker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 203
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/chromium/base/library_loader/ModernLinker;->createLibInfoMapFromBundle(Landroid/os/Bundle;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/base/library_loader/ModernLinker;->mSharedRelros:Ljava/util/HashMap;

    .line 204
    iget-object v0, p0, Lorg/chromium/base/library_loader/ModernLinker;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 205
    monitor-exit v1

    .line 206
    return-void

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
