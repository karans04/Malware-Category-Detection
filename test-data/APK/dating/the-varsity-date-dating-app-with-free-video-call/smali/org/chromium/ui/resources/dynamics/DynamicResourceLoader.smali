.class public Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;
.super Lorg/chromium/ui/resources/ResourceLoader;
.source "DynamicResourceLoader.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mDynamicResources:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lorg/chromium/ui/resources/dynamics/DynamicResource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(ILorg/chromium/ui/resources/ResourceLoader$ResourceLoaderCallback;)V
    .locals 1
    .param p1, "resourceType"    # I
    .param p2, "callback"    # Lorg/chromium/ui/resources/ResourceLoader$ResourceLoaderCallback;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lorg/chromium/ui/resources/ResourceLoader;-><init>(ILorg/chromium/ui/resources/ResourceLoader$ResourceLoaderCallback;)V

    .line 16
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;->mDynamicResources:Landroid/util/SparseArray;

    .line 28
    return-void
.end method


# virtual methods
.method public loadResource(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 55
    iget-object v1, p0, Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;->mDynamicResources:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/resources/dynamics/DynamicResource;

    .line 56
    .local v0, "resource":Lorg/chromium/ui/resources/dynamics/DynamicResource;
    if-nez v0, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    invoke-interface {v0}, Lorg/chromium/ui/resources/dynamics/DynamicResource;->isDirty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, v0}, Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;->notifyLoadFinished(ILorg/chromium/ui/resources/Resource;)V

    goto :goto_0
.end method

.method public preloadResource(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 67
    sget-boolean v0, Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Preloading dynamic resources isn\'t supported."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 68
    :cond_0
    return-void
.end method

.method public registerResource(ILorg/chromium/ui/resources/dynamics/DynamicResource;)V
    .locals 1
    .param p1, "resId"    # I
    .param p2, "resource"    # Lorg/chromium/ui/resources/dynamics/DynamicResource;

    .prologue
    .line 36
    sget-boolean v0, Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;->mDynamicResources:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 37
    :cond_0
    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;->mDynamicResources:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 38
    return-void
.end method

.method public unregisterResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 45
    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;->mDynamicResources:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 46
    return-void
.end method
