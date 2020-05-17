.class public Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerInternal;
.super Ljava/lang/Object;
.source "XWalkWebResourceRequestHandlerInternal.java"

# interfaces
.implements Lorg/xwalk/core/internal/XWalkWebResourceRequestInternal;


# annotations
.annotation build Lorg/xwalk/core/internal/XWalkAPI;
    createInternally = true
    impl = Lorg/xwalk/core/internal/XWalkWebResourceRequestInternal;
.end annotation


# instance fields
.field private final mRequest:Lorg/xwalk/core/internal/XWalkContentsClient$WebResourceRequestInner;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerInternal;->mRequest:Lorg/xwalk/core/internal/XWalkContentsClient$WebResourceRequestInner;

    .line 19
    return-void
.end method

.method constructor <init>(Lorg/xwalk/core/internal/XWalkContentsClient$WebResourceRequestInner;)V
    .locals 0
    .param p1, "request"    # Lorg/xwalk/core/internal/XWalkContentsClient$WebResourceRequestInner;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerInternal;->mRequest:Lorg/xwalk/core/internal/XWalkContentsClient$WebResourceRequestInner;

    .line 24
    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerInternal;->mRequest:Lorg/xwalk/core/internal/XWalkContentsClient$WebResourceRequestInner;

    iget-object v0, v0, Lorg/xwalk/core/internal/XWalkContentsClient$WebResourceRequestInner;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestHeaders()Ljava/util/Map;
    .locals 1
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

    .prologue
    .line 48
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerInternal;->mRequest:Lorg/xwalk/core/internal/XWalkContentsClient$WebResourceRequestInner;

    iget-object v0, v0, Lorg/xwalk/core/internal/XWalkContentsClient$WebResourceRequestInner;->requestHeaders:Ljava/util/HashMap;

    return-object v0
.end method

.method public getUrl()Landroid/net/Uri;
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerInternal;->mRequest:Lorg/xwalk/core/internal/XWalkContentsClient$WebResourceRequestInner;

    iget-object v0, v0, Lorg/xwalk/core/internal/XWalkContentsClient$WebResourceRequestInner;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public hasGesture()Z
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerInternal;->mRequest:Lorg/xwalk/core/internal/XWalkContentsClient$WebResourceRequestInner;

    iget-boolean v0, v0, Lorg/xwalk/core/internal/XWalkContentsClient$WebResourceRequestInner;->hasUserGesture:Z

    return v0
.end method

.method public isForMainFrame()Z
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerInternal;->mRequest:Lorg/xwalk/core/internal/XWalkContentsClient$WebResourceRequestInner;

    iget-boolean v0, v0, Lorg/xwalk/core/internal/XWalkContentsClient$WebResourceRequestInner;->isMainFrame:Z

    return v0
.end method
