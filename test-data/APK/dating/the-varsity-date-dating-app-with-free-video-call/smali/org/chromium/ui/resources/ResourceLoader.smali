.class public abstract Lorg/chromium/ui/resources/ResourceLoader;
.super Ljava/lang/Object;
.source "ResourceLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ui/resources/ResourceLoader$ResourceLoaderCallback;
    }
.end annotation


# instance fields
.field private final mCallback:Lorg/chromium/ui/resources/ResourceLoader$ResourceLoaderCallback;

.field private final mResourceType:I


# direct methods
.method public constructor <init>(ILorg/chromium/ui/resources/ResourceLoader$ResourceLoaderCallback;)V
    .locals 0
    .param p1, "resourceType"    # I
    .param p2, "callback"    # Lorg/chromium/ui/resources/ResourceLoader$ResourceLoaderCallback;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lorg/chromium/ui/resources/ResourceLoader;->mResourceType:I

    .line 38
    iput-object p2, p0, Lorg/chromium/ui/resources/ResourceLoader;->mCallback:Lorg/chromium/ui/resources/ResourceLoader$ResourceLoaderCallback;

    .line 39
    return-void
.end method


# virtual methods
.method public getResourceType()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lorg/chromium/ui/resources/ResourceLoader;->mResourceType:I

    return v0
.end method

.method public abstract loadResource(I)V
.end method

.method protected notifyLoadFinished(ILorg/chromium/ui/resources/Resource;)V
    .locals 2
    .param p1, "resId"    # I
    .param p2, "resource"    # Lorg/chromium/ui/resources/Resource;

    .prologue
    .line 69
    iget-object v0, p0, Lorg/chromium/ui/resources/ResourceLoader;->mCallback:Lorg/chromium/ui/resources/ResourceLoader$ResourceLoaderCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/ui/resources/ResourceLoader;->mCallback:Lorg/chromium/ui/resources/ResourceLoader$ResourceLoaderCallback;

    invoke-virtual {p0}, Lorg/chromium/ui/resources/ResourceLoader;->getResourceType()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Lorg/chromium/ui/resources/ResourceLoader$ResourceLoaderCallback;->onResourceLoaded(IILorg/chromium/ui/resources/Resource;)V

    .line 70
    :cond_0
    return-void
.end method

.method public abstract preloadResource(I)V
.end method
