.class public abstract Lorg/xwalk/core/internal/XWalkDownloadListenerInternal;
.super Ljava/lang/Object;
.source "XWalkDownloadListenerInternal.java"


# annotations
.annotation build Lorg/xwalk/core/internal/XWalkAPI;
    createExternally = true
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation
.end method
