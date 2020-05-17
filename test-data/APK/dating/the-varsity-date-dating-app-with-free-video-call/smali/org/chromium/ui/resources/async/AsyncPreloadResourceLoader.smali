.class public Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader;
.super Lorg/chromium/ui/resources/ResourceLoader;
.source "AsyncPreloadResourceLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader$AsyncLoadTask;,
        Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader$ResourceCreator;
    }
.end annotation


# instance fields
.field private final mCreator:Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader$ResourceCreator;

.field private final mOutstandingLoads:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader$AsyncLoadTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILorg/chromium/ui/resources/ResourceLoader$ResourceLoaderCallback;Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader$ResourceCreator;)V
    .locals 1
    .param p1, "resourceType"    # I
    .param p2, "callback"    # Lorg/chromium/ui/resources/ResourceLoader$ResourceLoaderCallback;
    .param p3, "creator"    # Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader$ResourceCreator;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lorg/chromium/ui/resources/ResourceLoader;-><init>(ILorg/chromium/ui/resources/ResourceLoader$ResourceLoaderCallback;)V

    .line 35
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader;->mOutstandingLoads:Landroid/util/SparseArray;

    .line 49
    iput-object p3, p0, Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader;->mCreator:Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader$ResourceCreator;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader;I)Lorg/chromium/ui/resources/Resource;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader;
    .param p1, "x1"    # I

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader;->createResource(I)Lorg/chromium/ui/resources/Resource;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader;

    .prologue
    .line 19
    iget-object v0, p0, Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader;->mOutstandingLoads:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader;Lorg/chromium/ui/resources/Resource;I)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader;
    .param p1, "x1"    # Lorg/chromium/ui/resources/Resource;
    .param p2, "x2"    # I

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader;->registerResource(Lorg/chromium/ui/resources/Resource;I)V

    return-void
.end method

.method private createResource(I)Lorg/chromium/ui/resources/Resource;
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 93
    :try_start_0
    const-string v0, "AsyncPreloadResourceLoader.createResource"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader;->mCreator:Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader$ResourceCreator;

    invoke-interface {v0, p1}, Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader$ResourceCreator;->create(I)Lorg/chromium/ui/resources/Resource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 96
    const-string v1, "AsyncPreloadResourceLoader.createResource"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    return-object v0

    :catchall_0
    move-exception v0

    const-string v1, "AsyncPreloadResourceLoader.createResource"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw v0
.end method

.method private registerResource(Lorg/chromium/ui/resources/Resource;I)V
    .locals 1
    .param p1, "resource"    # Lorg/chromium/ui/resources/Resource;
    .param p2, "resourceId"    # I

    .prologue
    .line 101
    invoke-virtual {p0, p2, p1}, Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader;->notifyLoadFinished(ILorg/chromium/ui/resources/Resource;)V

    .line 102
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/chromium/ui/resources/Resource;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 103
    :cond_0
    iget-object v0, p0, Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader;->mOutstandingLoads:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 104
    return-void
.end method


# virtual methods
.method public loadResource(I)V
    .locals 4
    .param p1, "resId"    # I

    .prologue
    const/4 v3, 0x0

    .line 61
    iget-object v2, p0, Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader;->mOutstandingLoads:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader$AsyncLoadTask;

    .line 63
    .local v1, "task":Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader$AsyncLoadTask;
    if-eqz v1, :cond_0

    .line 64
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader$AsyncLoadTask;->cancel(Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 66
    :try_start_0
    invoke-virtual {v1}, Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader$AsyncLoadTask;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/ui/resources/Resource;

    invoke-direct {p0, v2, p1}, Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader;->registerResource(Lorg/chromium/ui/resources/Resource;I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 76
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {p0, p1, v3}, Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader;->notifyLoadFinished(ILorg/chromium/ui/resources/Resource;)V

    goto :goto_0

    .line 69
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 70
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {p0, p1, v3}, Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader;->notifyLoadFinished(ILorg/chromium/ui/resources/Resource;)V

    goto :goto_0

    .line 75
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :cond_0
    invoke-direct {p0, p1}, Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader;->createResource(I)Lorg/chromium/ui/resources/Resource;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader;->registerResource(Lorg/chromium/ui/resources/Resource;I)V

    goto :goto_0
.end method

.method public preloadResource(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 85
    iget-object v1, p0, Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader;->mOutstandingLoads:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 89
    :goto_0
    return-void

    .line 86
    :cond_0
    new-instance v0, Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader$AsyncLoadTask;

    invoke-direct {v0, p0, p1}, Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader$AsyncLoadTask;-><init>(Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader;I)V

    .line 87
    .local v0, "task":Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader$AsyncLoadTask;
    sget-object v2, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Void;

    invoke-virtual {v0, v2, v1}, Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader$AsyncLoadTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 88
    iget-object v1, p0, Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader;->mOutstandingLoads:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method
