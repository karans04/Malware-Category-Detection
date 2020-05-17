.class public abstract Lorg/xwalk/core/internal/extensions/XWalkNativeExtensionLoaderAndroid;
.super Ljava/lang/Object;
.source "XWalkNativeExtensionLoaderAndroid.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "xwalk::extensions"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native nativeRegisterExtensionInPath(Ljava/lang/String;)V
.end method


# virtual methods
.method public registerNativeExtensionsInPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-static {p1}, Lorg/xwalk/core/internal/extensions/XWalkNativeExtensionLoaderAndroid;->nativeRegisterExtensionInPath(Ljava/lang/String;)V

    .line 13
    return-void
.end method
