.class public final Lorg/chromium/base/ResourceExtractor$ResourceEntry;
.super Ljava/lang/Object;
.source "ResourceExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/base/ResourceExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResourceEntry"
.end annotation


# instance fields
.field public final extractedFileName:Ljava/lang/String;

.field public final pathWithinApk:Ljava/lang/String;

.field public final resourceId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "resourceId"    # I
    .param p2, "pathWithinApk"    # Ljava/lang/String;
    .param p3, "extractedFileName"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput p1, p0, Lorg/chromium/base/ResourceExtractor$ResourceEntry;->resourceId:I

    .line 67
    iput-object p2, p0, Lorg/chromium/base/ResourceExtractor$ResourceEntry;->pathWithinApk:Ljava/lang/String;

    .line 68
    iput-object p3, p0, Lorg/chromium/base/ResourceExtractor$ResourceEntry;->extractedFileName:Ljava/lang/String;

    .line 69
    return-void
.end method
