.class public interface abstract Lorg/xwalk/core/internal/XWalkWebResourceRequestInternal;
.super Ljava/lang/Object;
.source "XWalkWebResourceRequestInternal.java"


# annotations
.annotation build Lorg/xwalk/core/internal/XWalkAPI;
    instance = Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerInternal;
.end annotation


# virtual methods
.method public abstract getMethod()Ljava/lang/String;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation
.end method

.method public abstract getRequestHeaders()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation
.end method

.method public abstract getUrl()Landroid/net/Uri;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation
.end method

.method public abstract hasGesture()Z
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation
.end method

.method public abstract isForMainFrame()Z
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation
.end method
