.class public abstract Lorg/chromium/base/PathService;
.super Ljava/lang/Object;
.source "PathService.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "base::android"
.end annotation


# static fields
.field public static final DIR_MODULE:I = 0x3


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native nativeOverride(ILjava/lang/String;)V
.end method

.method public static override(ILjava/lang/String;)V
    .locals 0
    .param p0, "what"    # I
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-static {p0, p1}, Lorg/chromium/base/PathService;->nativeOverride(ILjava/lang/String;)V

    .line 23
    return-void
.end method
