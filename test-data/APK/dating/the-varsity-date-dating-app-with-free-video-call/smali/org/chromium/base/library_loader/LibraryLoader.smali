.class public Lorg/chromium/base/library_loader/LibraryLoader;
.super Ljava/lang/Object;
.source "LibraryLoader.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "base::android"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "LibraryLoader"

.field private static volatile sInstance:Lorg/chromium/base/library_loader/LibraryLoader;

.field private static sLibraryPreloader:Lorg/chromium/base/library_loader/NativeLibraryPreloader;

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private mCommandLineSwitched:Z

.field private volatile mInitialized:Z

.field private mIsUsingBrowserSharedRelros:Z

.field private mLibraryLoadTimeMs:J

.field private mLibraryPreloaderStatus:I

.field private final mLibraryProcessType:I

.field private mLibraryWasLoadedFromApk:Z

.field private mLoadAtFixedAddressFailed:Z

.field private mLoaded:Z

.field private final mPrefetchLibraryHasBeenCalled:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lorg/chromium/base/library_loader/LibraryLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/base/library_loader/LibraryLoader;->$assertionsDisabled:Z

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/base/library_loader/LibraryLoader;->sLock:Ljava/lang/Object;

    return-void

    .line 37
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(I)V
    .locals 1
    .param p1, "libraryProcessType"    # I

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLibraryPreloaderStatus:I

    .line 126
    iput p1, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLibraryProcessType:I

    .line 127
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mPrefetchLibraryHasBeenCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 128
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lorg/chromium/base/library_loader/LibraryLoader;->nativePercentageOfResidentNativeLibraryCode()I

    move-result v0

    return v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lorg/chromium/base/library_loader/LibraryLoader;->nativeForkAndPrefetchNativeLibrary()Z

    move-result v0

    return v0
.end method

.method private ensureCommandLineSwitchedAlreadyLocked()V
    .locals 1

    .prologue
    .line 340
    sget-boolean v0, Lorg/chromium/base/library_loader/LibraryLoader;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLoaded:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 341
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mCommandLineSwitched:Z

    if-eqz v0, :cond_1

    .line 351
    :goto_0
    return-void

    .line 344
    :cond_1
    invoke-static {}, Lorg/chromium/base/CommandLine;->getJavaSwitchesOrNull()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/base/library_loader/LibraryLoader;->nativeInitCommandLine([Ljava/lang/String;)V

    .line 345
    invoke-static {}, Lorg/chromium/base/CommandLine;->enableNativeProxy()V

    .line 346
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mCommandLineSwitched:Z

    .line 350
    invoke-static {}, Lorg/chromium/base/ContextUtils;->initApplicationContextForNative()V

    goto :goto_0
.end method

.method public static get(I)Lorg/chromium/base/library_loader/LibraryLoader;
    .locals 3
    .param p0, "libraryProcessType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/chromium/base/library_loader/ProcessInitException;
        }
    .end annotation

    .prologue
    .line 114
    sget-object v1, Lorg/chromium/base/library_loader/LibraryLoader;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 115
    :try_start_0
    sget-object v0, Lorg/chromium/base/library_loader/LibraryLoader;->sInstance:Lorg/chromium/base/library_loader/LibraryLoader;

    if-eqz v0, :cond_1

    .line 116
    sget-object v0, Lorg/chromium/base/library_loader/LibraryLoader;->sInstance:Lorg/chromium/base/library_loader/LibraryLoader;

    iget v0, v0, Lorg/chromium/base/library_loader/LibraryLoader;->mLibraryProcessType:I

    if-ne v0, p0, :cond_0

    sget-object v0, Lorg/chromium/base/library_loader/LibraryLoader;->sInstance:Lorg/chromium/base/library_loader/LibraryLoader;

    monitor-exit v1

    .line 121
    :goto_0
    return-object v0

    .line 117
    :cond_0
    new-instance v0, Lorg/chromium/base/library_loader/ProcessInitException;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Lorg/chromium/base/library_loader/ProcessInitException;-><init>(I)V

    throw v0

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 120
    :cond_1
    :try_start_1
    new-instance v0, Lorg/chromium/base/library_loader/LibraryLoader;

    invoke-direct {v0, p0}, Lorg/chromium/base/library_loader/LibraryLoader;-><init>(I)V

    sput-object v0, Lorg/chromium/base/library_loader/LibraryLoader;->sInstance:Lorg/chromium/base/library_loader/LibraryLoader;

    .line 121
    sget-object v0, Lorg/chromium/base/library_loader/LibraryLoader;->sInstance:Lorg/chromium/base/library_loader/LibraryLoader;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private getLibraryLoadFromApkStatus(Landroid/content/Context;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 399
    sget-boolean v0, Lorg/chromium/base/library_loader/LibraryLoader;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->getInstance()Lorg/chromium/base/library_loader/Linker;

    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->isUsed()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 401
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLibraryWasLoadedFromApk:Z

    if-eqz v0, :cond_1

    .line 402
    const/4 v0, 0x3

    .line 406
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getLibraryProcessType()I
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 431
    sget-object v0, Lorg/chromium/base/library_loader/LibraryLoader;->sInstance:Lorg/chromium/base/library_loader/LibraryLoader;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 432
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lorg/chromium/base/library_loader/LibraryLoader;->sInstance:Lorg/chromium/base/library_loader/LibraryLoader;

    iget v0, v0, Lorg/chromium/base/library_loader/LibraryLoader;->mLibraryProcessType:I

    goto :goto_0
.end method

.method private initializeAlreadyLocked()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/chromium/base/library_loader/ProcessInitException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 355
    iget-boolean v0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 375
    :goto_0
    return-void

    .line 359
    :cond_0
    invoke-direct {p0}, Lorg/chromium/base/library_loader/LibraryLoader;->ensureCommandLineSwitchedAlreadyLocked()V

    .line 361
    invoke-direct {p0}, Lorg/chromium/base/library_loader/LibraryLoader;->nativeLibraryLoaded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 362
    const-string v0, "LibraryLoader"

    const-string v1, "error calling nativeLibraryLoaded"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 363
    new-instance v0, Lorg/chromium/base/library_loader/ProcessInitException;

    invoke-direct {v0, v3}, Lorg/chromium/base/library_loader/ProcessInitException;-><init>(I)V

    throw v0

    .line 367
    :cond_1
    invoke-static {}, Lorg/chromium/base/TraceEvent;->registerNativeEnabledObserver()V

    .line 374
    iput-boolean v3, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mInitialized:Z

    goto :goto_0
.end method

.method private static isAbiSplit(Ljava/lang/String;)Z
    .locals 1
    .param p0, "splitName"    # Ljava/lang/String;

    .prologue
    .line 324
    const-string v0, "abi_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isInitialized()Z
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lorg/chromium/base/library_loader/LibraryLoader;->sInstance:Lorg/chromium/base/library_loader/LibraryLoader;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/chromium/base/library_loader/LibraryLoader;->sInstance:Lorg/chromium/base/library_loader/LibraryLoader;

    iget-boolean v0, v0, Lorg/chromium/base/library_loader/LibraryLoader;->mInitialized:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadAlreadyLocked(Landroid/content/Context;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/chromium/base/library_loader/ProcessInitException;
        }
    .end annotation

    .prologue
    .line 252
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/chromium/base/library_loader/LibraryLoader;->mLoaded:Z

    if-nez v14, :cond_5

    .line 253
    sget-boolean v14, Lorg/chromium/base/library_loader/LibraryLoader;->$assertionsDisabled:Z

    if-nez v14, :cond_0

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/chromium/base/library_loader/LibraryLoader;->mInitialized:Z

    if-eqz v14, :cond_0

    new-instance v14, Ljava/lang/AssertionError;

    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    throw v14
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    :catch_0
    move-exception v3

    .line 308
    .local v3, "e":Ljava/lang/UnsatisfiedLinkError;
    new-instance v14, Lorg/chromium/base/library_loader/ProcessInitException;

    const/4 v15, 0x2

    invoke-direct {v14, v15, v3}, Lorg/chromium/base/library_loader/ProcessInitException;-><init>(ILjava/lang/Throwable;)V

    throw v14

    .line 255
    .end local v3    # "e":Ljava/lang/UnsatisfiedLinkError;
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 257
    .local v10, "startTime":J
    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->isUsed()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 259
    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->getInstance()Lorg/chromium/base/library_loader/Linker;

    move-result-object v8

    .line 260
    .local v8, "linker":Lorg/chromium/base/library_loader/Linker;
    invoke-virtual {v8}, Lorg/chromium/base/library_loader/Linker;->prepareLibraryLoad()V

    .line 262
    sget-object v2, Lorg/chromium/base/library_loader/NativeLibraries;->LIBRARIES:[Ljava/lang/String;

    .local v2, "arr$":[Ljava/lang/String;
    array-length v5, v2

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v7, v2, v4

    .line 266
    .local v7, "library":Ljava/lang/String;
    invoke-virtual {v8, v7}, Lorg/chromium/base/library_loader/Linker;->isChromiumLinkerLibrary(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 262
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 272
    :cond_1
    const/4 v9, 0x0

    .line 273
    .local v9, "zipFilePath":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 274
    .local v6, "libFilePath":Ljava/lang/String;
    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->isInZipFile()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 276
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    iget-object v9, v14, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 277
    const-string v14, "LibraryLoader"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Loading "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " from within "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-static/range {v14 .. v16}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 284
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v6}, Lorg/chromium/base/library_loader/LibraryLoader;->loadLibrary(Lorg/chromium/base/library_loader/Linker;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 280
    :cond_2
    const-string v14, "LibraryLoader"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Loading "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-static/range {v14 .. v16}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 287
    .end local v6    # "libFilePath":Ljava/lang/String;
    .end local v7    # "library":Ljava/lang/String;
    .end local v9    # "zipFilePath":Ljava/lang/String;
    :cond_3
    invoke-virtual {v8}, Lorg/chromium/base/library_loader/Linker;->finishLibraryLoad()V

    .line 298
    .end local v8    # "linker":Lorg/chromium/base/library_loader/Linker;
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 299
    .local v12, "stopTime":J
    sub-long v14, v12, v10

    move-object/from16 v0, p0

    iput-wide v14, v0, Lorg/chromium/base/library_loader/LibraryLoader;->mLibraryLoadTimeMs:J

    .line 300
    const-string v14, "LibraryLoader"

    const-string v15, "Time to load native libraries: %d ms (timestamps %d-%d)"

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/chromium/base/library_loader/LibraryLoader;->mLibraryLoadTimeMs:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    const-wide/16 v18, 0x2710

    rem-long v18, v10, v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    const-wide/16 v18, 0x2710

    rem-long v18, v12, v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-static/range {v14 .. v16}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 305
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lorg/chromium/base/library_loader/LibraryLoader;->mLoaded:Z
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0

    .line 311
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v10    # "startTime":J
    .end local v12    # "stopTime":J
    :cond_5
    const-string v14, "LibraryLoader"

    const-string v15, "Expected native library version number \"%s\", actual native library version number \"%s\""

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    sget-object v18, Lorg/chromium/base/library_loader/NativeLibraries;->sVersionNumber:Ljava/lang/String;

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-direct/range {p0 .. p0}, Lorg/chromium/base/library_loader/LibraryLoader;->nativeGetVersionNumber()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-static/range {v14 .. v16}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 316
    sget-object v14, Lorg/chromium/base/library_loader/NativeLibraries;->sVersionNumber:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Lorg/chromium/base/library_loader/LibraryLoader;->nativeGetVersionNumber()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    .line 317
    new-instance v14, Lorg/chromium/base/library_loader/ProcessInitException;

    const/4 v15, 0x3

    invoke-direct {v14, v15}, Lorg/chromium/base/library_loader/ProcessInitException;-><init>(I)V

    throw v14

    .line 289
    .restart local v10    # "startTime":J
    :cond_6
    :try_start_2
    sget-object v14, Lorg/chromium/base/library_loader/LibraryLoader;->sLibraryPreloader:Lorg/chromium/base/library_loader/NativeLibraryPreloader;

    if-eqz v14, :cond_7

    .line 290
    sget-object v14, Lorg/chromium/base/library_loader/LibraryLoader;->sLibraryPreloader:Lorg/chromium/base/library_loader/NativeLibraryPreloader;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lorg/chromium/base/library_loader/NativeLibraryPreloader;->loadLibrary(Landroid/content/Context;)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lorg/chromium/base/library_loader/LibraryLoader;->mLibraryPreloaderStatus:I

    .line 293
    :cond_7
    sget-object v2, Lorg/chromium/base/library_loader/NativeLibraries;->LIBRARIES:[Ljava/lang/String;

    .restart local v2    # "arr$":[Ljava/lang/String;
    array-length v5, v2

    .restart local v5    # "len$":I
    const/4 v4, 0x0

    .restart local v4    # "i$":I
    :goto_3
    if-ge v4, v5, :cond_4

    aget-object v7, v2, v4

    .line 294
    .restart local v7    # "library":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_0

    .line 293
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 319
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v7    # "library":Ljava/lang/String;
    .end local v10    # "startTime":J
    :cond_8
    return-void
.end method

.method private loadLibrary(Lorg/chromium/base/library_loader/Linker;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "linker"    # Lorg/chromium/base/library_loader/Linker;
    .param p2, "zipFilePath"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "libFilePath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 226
    invoke-virtual {p1}, Lorg/chromium/base/library_loader/Linker;->isUsingBrowserSharedRelros()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 229
    iput-boolean v4, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mIsUsingBrowserSharedRelros:Z

    .line 231
    :try_start_0
    invoke-virtual {p1, p2, p3}, Lorg/chromium/base/library_loader/Linker;->loadLibrary(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :goto_0
    if-eqz p2, :cond_0

    .line 244
    iput-boolean v4, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLibraryWasLoadedFromApk:Z

    .line 246
    :cond_0
    return-void

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "LibraryLoader"

    const-string v2, "Failed to load native library with shared RELRO, retrying without"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    iput-boolean v4, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLoadAtFixedAddressFailed:Z

    .line 235
    invoke-virtual {p1, p2, p3}, Lorg/chromium/base/library_loader/Linker;->loadLibraryNoFixedAddress(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 239
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :cond_1
    invoke-virtual {p1, p2, p3}, Lorg/chromium/base/library_loader/Linker;->loadLibrary(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static native nativeForkAndPrefetchNativeLibrary()Z
.end method

.method private native nativeGetVersionNumber()Ljava/lang/String;
.end method

.method private native nativeInitCommandLine([Ljava/lang/String;)V
.end method

.method private native nativeLibraryLoaded()Z
.end method

.method private static native nativePercentageOfResidentNativeLibraryCode()I
.end method

.method private native nativeRecordChromiumAndroidLinkerBrowserHistogram(ZZIJ)V
.end method

.method private native nativeRecordLibraryPreloaderBrowserHistogram(I)V
.end method

.method private native nativeRegisterChromiumAndroidLinkerRendererHistogram(ZZJ)V
.end method

.method private native nativeRegisterLibraryPreloaderRendererHistogram(I)V
.end method

.method private recordBrowserProcessHistogram(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 385
    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->getInstance()Lorg/chromium/base/library_loader/Linker;

    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->isUsed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    iget-boolean v1, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mIsUsingBrowserSharedRelros:Z

    iget-boolean v2, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLoadAtFixedAddressFailed:Z

    invoke-direct {p0, p1}, Lorg/chromium/base/library_loader/LibraryLoader;->getLibraryLoadFromApkStatus(Landroid/content/Context;)I

    move-result v3

    iget-wide v4, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLibraryLoadTimeMs:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/chromium/base/library_loader/LibraryLoader;->nativeRecordChromiumAndroidLinkerBrowserHistogram(ZZIJ)V

    .line 391
    :cond_0
    sget-object v0, Lorg/chromium/base/library_loader/LibraryLoader;->sLibraryPreloader:Lorg/chromium/base/library_loader/NativeLibraryPreloader;

    if-eqz v0, :cond_1

    .line 392
    iget v0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLibraryPreloaderStatus:I

    invoke-direct {p0, v0}, Lorg/chromium/base/library_loader/LibraryLoader;->nativeRecordLibraryPreloaderBrowserHistogram(I)V

    .line 394
    :cond_1
    return-void
.end method

.method public static setNativeLibraryPreloader(Lorg/chromium/base/library_loader/NativeLibraryPreloader;)V
    .locals 2
    .param p0, "loader"    # Lorg/chromium/base/library_loader/NativeLibraryPreloader;

    .prologue
    .line 102
    sget-object v1, Lorg/chromium/base/library_loader/LibraryLoader;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 103
    :try_start_0
    sget-boolean v0, Lorg/chromium/base/library_loader/LibraryLoader;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    sget-object v0, Lorg/chromium/base/library_loader/LibraryLoader;->sLibraryPreloader:Lorg/chromium/base/library_loader/NativeLibraryPreloader;

    if-nez v0, :cond_0

    sget-object v0, Lorg/chromium/base/library_loader/LibraryLoader;->sInstance:Lorg/chromium/base/library_loader/LibraryLoader;

    if-eqz v0, :cond_1

    sget-object v0, Lorg/chromium/base/library_loader/LibraryLoader;->sInstance:Lorg/chromium/base/library_loader/LibraryLoader;

    iget-boolean v0, v0, Lorg/chromium/base/library_loader/LibraryLoader;->mLoaded:Z

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 104
    :cond_1
    :try_start_1
    sput-object p0, Lorg/chromium/base/library_loader/LibraryLoader;->sLibraryPreloader:Lorg/chromium/base/library_loader/NativeLibraryPreloader;

    .line 105
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    return-void
.end method


# virtual methods
.method public asyncPrefetchLibrariesToMemory()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 193
    iget-object v1, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mPrefetchLibraryHasBeenCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    .line 194
    .local v0, "coldStart":Z
    new-instance v1, Lorg/chromium/base/library_loader/LibraryLoader$1;

    invoke-direct {v1, p0, v0}, Lorg/chromium/base/library_loader/LibraryLoader$1;-><init>(Lorg/chromium/base/library_loader/LibraryLoader;Z)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Lorg/chromium/base/library_loader/LibraryLoader$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 221
    return-void
.end method

.method public ensureInitialized(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/chromium/base/library_loader/ProcessInitException;
        }
    .end annotation

    .prologue
    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/base/ContextUtils;->initApplicationContext(Landroid/content/Context;)V

    .line 138
    sget-object v1, Lorg/chromium/base/library_loader/LibraryLoader;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 139
    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 141
    monitor-exit v1

    .line 146
    :goto_0
    return-void

    .line 143
    :cond_0
    invoke-direct {p0, p1}, Lorg/chromium/base/library_loader/LibraryLoader;->loadAlreadyLocked(Landroid/content/Context;)V

    .line 144
    invoke-direct {p0}, Lorg/chromium/base/library_loader/LibraryLoader;->initializeAlreadyLocked()V

    .line 145
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public initialize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/chromium/base/library_loader/ProcessInitException;
        }
    .end annotation

    .prologue
    .line 178
    sget-object v1, Lorg/chromium/base/library_loader/LibraryLoader;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 179
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/base/library_loader/LibraryLoader;->initializeAlreadyLocked()V

    .line 180
    monitor-exit v1

    .line 181
    return-void

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public loadNow(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/chromium/base/library_loader/ProcessInitException;
        }
    .end annotation

    .prologue
    .line 167
    sget-object v1, Lorg/chromium/base/library_loader/LibraryLoader;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 168
    :try_start_0
    invoke-direct {p0, p1}, Lorg/chromium/base/library_loader/LibraryLoader;->loadAlreadyLocked(Landroid/content/Context;)V

    .line 169
    monitor-exit v1

    .line 170
    return-void

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onNativeInitializationComplete(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 379
    invoke-direct {p0, p1}, Lorg/chromium/base/library_loader/LibraryLoader;->recordBrowserProcessHistogram(Landroid/content/Context;)V

    .line 380
    return-void
.end method

.method public registerRendererProcessHistogram(ZZ)V
    .locals 2
    .param p1, "requestedSharedRelro"    # Z
    .param p2, "loadAtFixedAddressFailed"    # Z

    .prologue
    .line 415
    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->getInstance()Lorg/chromium/base/library_loader/Linker;

    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->isUsed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    iget-wide v0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLibraryLoadTimeMs:J

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/chromium/base/library_loader/LibraryLoader;->nativeRegisterChromiumAndroidLinkerRendererHistogram(ZZJ)V

    .line 420
    :cond_0
    sget-object v0, Lorg/chromium/base/library_loader/LibraryLoader;->sLibraryPreloader:Lorg/chromium/base/library_loader/NativeLibraryPreloader;

    if-eqz v0, :cond_1

    .line 421
    iget v0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLibraryPreloaderStatus:I

    invoke-direct {p0, v0}, Lorg/chromium/base/library_loader/LibraryLoader;->nativeRegisterLibraryPreloaderRendererHistogram(I)V

    .line 423
    :cond_1
    return-void
.end method

.method public switchCommandLineForWebView()V
    .locals 2

    .prologue
    .line 331
    sget-object v1, Lorg/chromium/base/library_loader/LibraryLoader;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 332
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/base/library_loader/LibraryLoader;->ensureCommandLineSwitchedAlreadyLocked()V

    .line 333
    monitor-exit v1

    .line 334
    return-void

    .line 333
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
