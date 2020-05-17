.class public Lorg/chromium/ui/resources/statics/StaticResourceLoader;
.super Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader;
.source "StaticResourceLoader.java"


# direct methods
.method public constructor <init>(ILorg/chromium/ui/resources/ResourceLoader$ResourceLoaderCallback;Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "resourceType"    # I
    .param p2, "callback"    # Lorg/chromium/ui/resources/ResourceLoader$ResourceLoaderCallback;
    .param p3, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 25
    new-instance v0, Lorg/chromium/ui/resources/statics/StaticResourceLoader$1;

    invoke-direct {v0, p3}, Lorg/chromium/ui/resources/statics/StaticResourceLoader$1;-><init>(Landroid/content/res/Resources;)V

    invoke-direct {p0, p1, p2, v0}, Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader;-><init>(ILorg/chromium/ui/resources/ResourceLoader$ResourceLoaderCallback;Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader$ResourceCreator;)V

    .line 31
    return-void
.end method
