.class public Lorg/chromium/base/ResourceExtractor;
.super Ljava/lang/Object;
.source "ResourceExtractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/base/ResourceExtractor$1;,
        Lorg/chromium/base/ResourceExtractor$ExtractTask;,
        Lorg/chromium/base/ResourceExtractor$ResourceEntry;,
        Lorg/chromium/base/ResourceExtractor$ResourceInterceptor;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final APP_VERSION_PREF:Ljava/lang/String; = "org.chromium.base.ResourceExtractor.Version"

.field private static final ICU_DATA_FILENAME:Ljava/lang/String; = "icudtl.dat"

.field private static final TAG:Ljava/lang/String; = "cr.base"

.field private static final V8_NATIVES_DATA_FILENAME:Ljava/lang/String; = "natives_blob.bin"

.field private static final V8_SNAPSHOT_DATA_FILENAME:Ljava/lang/String; = "snapshot_blob.bin"

.field private static sInstance:Lorg/chromium/base/ResourceExtractor;

.field private static sInterceptor:Lorg/chromium/base/ResourceExtractor$ResourceInterceptor;

.field private static sResourcesToExtract:[Lorg/chromium/base/ResourceExtractor$ResourceEntry;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mExtractTask:Lorg/chromium/base/ResourceExtractor$ExtractTask;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    const-class v0, Lorg/chromium/base/ResourceExtractor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/base/ResourceExtractor;->$assertionsDisabled:Z

    .line 42
    new-array v0, v1, [Lorg/chromium/base/ResourceExtractor$ResourceEntry;

    sput-object v0, Lorg/chromium/base/ResourceExtractor;->sResourcesToExtract:[Lorg/chromium/base/ResourceExtractor$ResourceEntry;

    .line 44
    const/4 v0, 0x0

    sput-object v0, Lorg/chromium/base/ResourceExtractor;->sInterceptor:Lorg/chromium/base/ResourceExtractor$ResourceInterceptor;

    return-void

    :cond_0
    move v0, v1

    .line 34
    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/base/ResourceExtractor;->mContext:Landroid/content/Context;

    .line 262
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/base/ResourceExtractor;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/base/ResourceExtractor;

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/chromium/base/ResourceExtractor;->getOutputDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/base/ResourceExtractor;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/base/ResourceExtractor;

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/chromium/base/ResourceExtractor;->getAppDataDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/base/ResourceExtractor;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/base/ResourceExtractor;

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/chromium/base/ResourceExtractor;->deleteFiles()V

    return-void
.end method

.method static synthetic access$300()[Lorg/chromium/base/ResourceExtractor$ResourceEntry;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lorg/chromium/base/ResourceExtractor;->sResourcesToExtract:[Lorg/chromium/base/ResourceExtractor$ResourceEntry;

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-static {p0}, Lorg/chromium/base/ResourceExtractor;->isAppDataFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500()Lorg/chromium/base/ResourceExtractor$ResourceInterceptor;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lorg/chromium/base/ResourceExtractor;->sInterceptor:Lorg/chromium/base/ResourceExtractor$ResourceInterceptor;

    return-object v0
.end method

.method static synthetic access$600(Lorg/chromium/base/ResourceExtractor;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/base/ResourceExtractor;

    .prologue
    .line 34
    iget-object v0, p0, Lorg/chromium/base/ResourceExtractor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private deleteFiles()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 363
    new-instance v5, Ljava/io/File;

    invoke-direct {p0}, Lorg/chromium/base/ResourceExtractor;->getAppDataDir()Ljava/io/File;

    move-result-object v9

    const-string v10, "icudtl.dat"

    invoke-direct {v5, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 364
    .local v5, "icudata":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v9

    if-nez v9, :cond_0

    .line 365
    const-string v9, "cr.base"

    const-string v10, "Unable to remove the icudata %s"

    new-array v11, v14, [Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v13

    invoke-static {v9, v10, v11}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 367
    :cond_0
    new-instance v7, Ljava/io/File;

    invoke-direct {p0}, Lorg/chromium/base/ResourceExtractor;->getAppDataDir()Ljava/io/File;

    move-result-object v9

    const-string v10, "natives_blob.bin"

    invoke-direct {v7, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 368
    .local v7, "v8_natives":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v9

    if-nez v9, :cond_1

    .line 369
    const-string v9, "cr.base"

    const-string v10, "Unable to remove the v8 data %s"

    new-array v11, v14, [Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v13

    invoke-static {v9, v10, v11}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 371
    :cond_1
    new-instance v8, Ljava/io/File;

    invoke-direct {p0}, Lorg/chromium/base/ResourceExtractor;->getAppDataDir()Ljava/io/File;

    move-result-object v9

    const-string v10, "snapshot_blob.bin"

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 372
    .local v8, "v8_snapshot":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v9

    if-nez v9, :cond_2

    .line 373
    const-string v9, "cr.base"

    const-string v10, "Unable to remove the v8 data %s"

    new-array v11, v14, [Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v13

    invoke-static {v9, v10, v11}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 375
    :cond_2
    invoke-direct {p0}, Lorg/chromium/base/ResourceExtractor;->getOutputDir()Ljava/io/File;

    move-result-object v1

    .line 376
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 377
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 379
    .local v3, "files":[Ljava/io/File;
    if-eqz v3, :cond_4

    .line 380
    move-object v0, v3

    .local v0, "arr$":[Ljava/io/File;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_4

    aget-object v2, v0, v4

    .line 381
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v9

    if-nez v9, :cond_3

    .line 382
    const-string v9, "cr.base"

    const-string v10, "Unable to remove existing resource %s"

    new-array v11, v14, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v13

    invoke-static {v9, v10, v11}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 380
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 387
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "files":[Ljava/io/File;
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    :cond_4
    return-void
.end method

.method public static get(Landroid/content/Context;)Lorg/chromium/base/ResourceExtractor;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 230
    sget-object v0, Lorg/chromium/base/ResourceExtractor;->sInstance:Lorg/chromium/base/ResourceExtractor;

    if-nez v0, :cond_0

    .line 231
    new-instance v0, Lorg/chromium/base/ResourceExtractor;

    invoke-direct {v0, p0}, Lorg/chromium/base/ResourceExtractor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/chromium/base/ResourceExtractor;->sInstance:Lorg/chromium/base/ResourceExtractor;

    .line 233
    :cond_0
    sget-object v0, Lorg/chromium/base/ResourceExtractor;->sInstance:Lorg/chromium/base/ResourceExtractor;

    return-object v0
.end method

.method private getAppDataDir()Ljava/io/File;
    .locals 2

    .prologue
    .line 346
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/chromium/base/ResourceExtractor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lorg/chromium/base/PathUtils;->getDataDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private getOutputDir()Ljava/io/File;
    .locals 3

    .prologue
    .line 350
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lorg/chromium/base/ResourceExtractor;->getAppDataDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "paks"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static isAppDataFile(Ljava/lang/String;)Z
    .locals 1
    .param p0, "file"    # Ljava/lang/String;

    .prologue
    .line 52
    const-string v0, "icudtl.dat"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "natives_blob.bin"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "snapshot_blob.bin"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setResourceInterceptor(Lorg/chromium/base/ResourceExtractor$ResourceInterceptor;)V
    .locals 2
    .param p0, "interceptor"    # Lorg/chromium/base/ResourceExtractor$ResourceInterceptor;

    .prologue
    .line 245
    sget-boolean v0, Lorg/chromium/base/ResourceExtractor;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    sget-object v0, Lorg/chromium/base/ResourceExtractor;->sInstance:Lorg/chromium/base/ResourceExtractor;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/chromium/base/ResourceExtractor;->sInstance:Lorg/chromium/base/ResourceExtractor;

    iget-object v0, v0, Lorg/chromium/base/ResourceExtractor;->mExtractTask:Lorg/chromium/base/ResourceExtractor$ExtractTask;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Must be called before startExtractingResources is called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 246
    :cond_0
    sput-object p0, Lorg/chromium/base/ResourceExtractor;->sInterceptor:Lorg/chromium/base/ResourceExtractor$ResourceInterceptor;

    .line 247
    return-void
.end method

.method public static setResourcesToExtract([Lorg/chromium/base/ResourceExtractor$ResourceEntry;)V
    .locals 2
    .param p0, "entries"    # [Lorg/chromium/base/ResourceExtractor$ResourceEntry;
    .annotation build Lorg/chromium/base/annotations/SuppressFBWarnings;
        value = {
            "EI_EXPOSE_STATIC_REP2"
        }
    .end annotation

    .prologue
    .line 256
    sget-boolean v0, Lorg/chromium/base/ResourceExtractor;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    sget-object v0, Lorg/chromium/base/ResourceExtractor;->sInstance:Lorg/chromium/base/ResourceExtractor;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/chromium/base/ResourceExtractor;->sInstance:Lorg/chromium/base/ResourceExtractor;

    iget-object v0, v0, Lorg/chromium/base/ResourceExtractor;->mExtractTask:Lorg/chromium/base/ResourceExtractor$ExtractTask;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Must be called before startExtractingResources is called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 257
    :cond_0
    sput-object p0, Lorg/chromium/base/ResourceExtractor;->sResourcesToExtract:[Lorg/chromium/base/ResourceExtractor$ResourceEntry;

    .line 258
    return-void
.end method

.method private static shouldSkipPakExtraction()Z
    .locals 1

    .prologue
    .line 393
    sget-object v0, Lorg/chromium/base/ResourceExtractor;->sResourcesToExtract:[Lorg/chromium/base/ResourceExtractor$ResourceEntry;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addCompletionCallback(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 306
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 308
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 309
    .local v0, "handler":Landroid/os/Handler;
    invoke-static {}, Lorg/chromium/base/ResourceExtractor;->shouldSkipPakExtraction()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 310
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 321
    :goto_0
    return-void

    .line 314
    :cond_0
    sget-boolean v1, Lorg/chromium/base/ResourceExtractor;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/chromium/base/ResourceExtractor;->mExtractTask:Lorg/chromium/base/ResourceExtractor$ExtractTask;

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 315
    :cond_1
    sget-boolean v1, Lorg/chromium/base/ResourceExtractor;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/chromium/base/ResourceExtractor;->mExtractTask:Lorg/chromium/base/ResourceExtractor$ExtractTask;

    invoke-virtual {v1}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 316
    :cond_2
    iget-object v1, p0, Lorg/chromium/base/ResourceExtractor;->mExtractTask:Lorg/chromium/base/ResourceExtractor$ExtractTask;

    invoke-virtual {v1}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v1, v2, :cond_3

    .line 317
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 319
    :cond_3
    iget-object v1, p0, Lorg/chromium/base/ResourceExtractor;->mExtractTask:Lorg/chromium/base/ResourceExtractor$ExtractTask;

    invoke-static {v1}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->access$700(Lorg/chromium/base/ResourceExtractor$ExtractTask;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public startExtractingResources()V
    .locals 3

    .prologue
    .line 329
    iget-object v0, p0, Lorg/chromium/base/ResourceExtractor;->mExtractTask:Lorg/chromium/base/ResourceExtractor$ExtractTask;

    if-eqz v0, :cond_1

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    invoke-static {}, Lorg/chromium/base/ResourceExtractor;->shouldSkipPakExtraction()Z

    move-result v0

    if-nez v0, :cond_0

    .line 341
    new-instance v0, Lorg/chromium/base/ResourceExtractor$ExtractTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/chromium/base/ResourceExtractor$ExtractTask;-><init>(Lorg/chromium/base/ResourceExtractor;Lorg/chromium/base/ResourceExtractor$1;)V

    iput-object v0, p0, Lorg/chromium/base/ResourceExtractor;->mExtractTask:Lorg/chromium/base/ResourceExtractor$ExtractTask;

    .line 342
    iget-object v0, p0, Lorg/chromium/base/ResourceExtractor;->mExtractTask:Lorg/chromium/base/ResourceExtractor$ExtractTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public waitForCompletion()V
    .locals 4

    .prologue
    .line 272
    invoke-static {}, Lorg/chromium/base/ResourceExtractor;->shouldSkipPakExtraction()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 292
    :goto_0
    return-void

    .line 276
    :cond_0
    sget-boolean v3, Lorg/chromium/base/ResourceExtractor;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/chromium/base/ResourceExtractor;->mExtractTask:Lorg/chromium/base/ResourceExtractor$ExtractTask;

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 279
    :cond_1
    :try_start_0
    iget-object v3, p0, Lorg/chromium/base/ResourceExtractor;->mExtractTask:Lorg/chromium/base/ResourceExtractor$ExtractTask;

    invoke-virtual {v3}, Lorg/chromium/base/ResourceExtractor$ExtractTask;->get()Ljava/lang/Object;

    .line 282
    const/4 v3, 0x0

    sput-object v3, Lorg/chromium/base/ResourceExtractor;->sInterceptor:Lorg/chromium/base/ResourceExtractor$ResourceInterceptor;

    .line 283
    const/4 v3, 0x0

    sput-object v3, Lorg/chromium/base/ResourceExtractor;->sInstance:Lorg/chromium/base/ResourceExtractor;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 284
    :catch_0
    move-exception v0

    .line 286
    .local v0, "e":Ljava/util/concurrent/CancellationException;
    invoke-direct {p0}, Lorg/chromium/base/ResourceExtractor;->deleteFiles()V

    goto :goto_0

    .line 287
    .end local v0    # "e":Ljava/util/concurrent/CancellationException;
    :catch_1
    move-exception v1

    .line 288
    .local v1, "e2":Ljava/util/concurrent/ExecutionException;
    invoke-direct {p0}, Lorg/chromium/base/ResourceExtractor;->deleteFiles()V

    goto :goto_0

    .line 289
    .end local v1    # "e2":Ljava/util/concurrent/ExecutionException;
    :catch_2
    move-exception v2

    .line 290
    .local v2, "e3":Ljava/lang/InterruptedException;
    invoke-direct {p0}, Lorg/chromium/base/ResourceExtractor;->deleteFiles()V

    goto :goto_0
.end method
