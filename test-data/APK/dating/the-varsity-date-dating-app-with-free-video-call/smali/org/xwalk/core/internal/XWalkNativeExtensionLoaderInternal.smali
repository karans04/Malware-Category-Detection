.class public Lorg/xwalk/core/internal/XWalkNativeExtensionLoaderInternal;
.super Lorg/xwalk/core/internal/extensions/XWalkNativeExtensionLoaderAndroid;
.source "XWalkNativeExtensionLoaderInternal.java"


# annotations
.annotation build Lorg/xwalk/core/internal/XWalkAPI;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lorg/xwalk/core/internal/extensions/XWalkNativeExtensionLoaderAndroid;-><init>()V

    return-void
.end method


# virtual methods
.method public registerNativeExtensionsInPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 17
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/extensions/XWalkNativeExtensionLoaderAndroid;->registerNativeExtensionsInPath(Ljava/lang/String;)V

    .line 18
    return-void
.end method
