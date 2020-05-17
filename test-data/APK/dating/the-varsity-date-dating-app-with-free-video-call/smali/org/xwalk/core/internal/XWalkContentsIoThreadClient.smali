.class public abstract Lorg/xwalk/core/internal/XWalkContentsIoThreadClient;
.super Ljava/lang/Object;
.source "XWalkContentsIoThreadClient.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "xwalk"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getCacheMode()I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation
.end method

.method public abstract newLoginRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation
.end method

.method public abstract onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation
.end method

.method protected onReceivedResponseHeaders(Ljava/lang/String;ZZLjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 11
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "isMainFrame"    # Z
    .param p3, "hasUserGesture"    # Z
    .param p4, "method"    # Ljava/lang/String;
    .param p5, "requestHeaderNames"    # [Ljava/lang/String;
    .param p6, "requestHeaderValues"    # [Ljava/lang/String;
    .param p7, "mimeType"    # Ljava/lang/String;
    .param p8, "encoding"    # Ljava/lang/String;
    .param p9, "statusCode"    # I
    .param p10, "reasonPhrase"    # Ljava/lang/String;
    .param p11, "responseHeaderNames"    # [Ljava/lang/String;
    .param p12, "responseHeaderValues"    # [Ljava/lang/String;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 75
    new-instance v10, Lorg/xwalk/core/internal/XWalkContentsClient$WebResourceRequestInner;

    invoke-direct {v10}, Lorg/xwalk/core/internal/XWalkContentsClient$WebResourceRequestInner;-><init>()V

    .line 77
    .local v10, "request":Lorg/xwalk/core/internal/XWalkContentsClient$WebResourceRequestInner;
    iput-object p1, v10, Lorg/xwalk/core/internal/XWalkContentsClient$WebResourceRequestInner;->url:Ljava/lang/String;

    .line 78
    iput-boolean p2, v10, Lorg/xwalk/core/internal/XWalkContentsClient$WebResourceRequestInner;->isMainFrame:Z

    .line 79
    iput-boolean p3, v10, Lorg/xwalk/core/internal/XWalkContentsClient$WebResourceRequestInner;->hasUserGesture:Z

    .line 80
    iput-object p4, v10, Lorg/xwalk/core/internal/XWalkContentsClient$WebResourceRequestInner;->method:Ljava/lang/String;

    .line 81
    new-instance v2, Ljava/util/HashMap;

    move-object/from16 v0, p5

    array-length v3, v0

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, v10, Lorg/xwalk/core/internal/XWalkContentsClient$WebResourceRequestInner;->requestHeaders:Ljava/util/HashMap;

    .line 82
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    move-object/from16 v0, p5

    array-length v2, v0

    if-ge v9, v2, :cond_0

    .line 83
    iget-object v2, v10, Lorg/xwalk/core/internal/XWalkContentsClient$WebResourceRequestInner;->requestHeaders:Ljava/util/HashMap;

    aget-object v3, p5, v9

    aget-object v4, p6, v9

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 85
    :cond_0
    new-instance v7, Ljava/util/HashMap;

    move-object/from16 v0, p11

    array-length v2, v0

    invoke-direct {v7, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 89
    .local v7, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v9, 0x0

    :goto_1
    move-object/from16 v0, p11

    array-length v2, v0

    if-ge v9, v2, :cond_4

    .line 90
    aget-object v2, p11, v9

    invoke-interface {v7, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 91
    aget-object v2, p11, v9

    aget-object v3, p12, v9

    invoke-interface {v7, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :cond_1
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 92
    :cond_2
    aget-object v2, p12, v9

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 93
    aget-object v2, p11, v9

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 94
    .local v8, "currentValue":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 97
    :cond_3
    aget-object v2, p11, v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p12, v9

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 100
    .end local v8    # "currentValue":Ljava/lang/String;
    :cond_4
    new-instance v1, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;

    const/4 v4, 0x0

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move/from16 v5, p9

    move-object/from16 v6, p10

    invoke-direct/range {v1 .. v7}, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;Ljava/util/Map;)V

    .line 102
    .local v1, "response":Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;
    invoke-virtual {p0, v10, v1}, Lorg/xwalk/core/internal/XWalkContentsIoThreadClient;->onReceivedResponseHeaders(Lorg/xwalk/core/internal/XWalkContentsClient$WebResourceRequestInner;Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;)V

    .line 103
    return-void
.end method

.method public abstract onReceivedResponseHeaders(Lorg/xwalk/core/internal/XWalkContentsClient$WebResourceRequestInner;Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;)V
.end method

.method public abstract shouldBlockContentUrls()Z
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation
.end method

.method public abstract shouldBlockFileUrls()Z
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation
.end method

.method public abstract shouldBlockNetworkLoads()Z
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation
.end method

.method protected shouldInterceptRequest(Ljava/lang/String;ZZLjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "isMainFrame"    # Z
    .param p3, "hasUserGesture"    # Z
    .param p4, "method"    # Ljava/lang/String;
    .param p5, "requestHeaderNames"    # [Ljava/lang/String;
    .param p6, "requestHeaderValues"    # [Ljava/lang/String;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 54
    new-instance v1, Lorg/xwalk/core/internal/XWalkContentsClient$WebResourceRequestInner;

    invoke-direct {v1}, Lorg/xwalk/core/internal/XWalkContentsClient$WebResourceRequestInner;-><init>()V

    .line 56
    .local v1, "request":Lorg/xwalk/core/internal/XWalkContentsClient$WebResourceRequestInner;
    iput-object p1, v1, Lorg/xwalk/core/internal/XWalkContentsClient$WebResourceRequestInner;->url:Ljava/lang/String;

    .line 57
    iput-boolean p2, v1, Lorg/xwalk/core/internal/XWalkContentsClient$WebResourceRequestInner;->isMainFrame:Z

    .line 58
    iput-boolean p3, v1, Lorg/xwalk/core/internal/XWalkContentsClient$WebResourceRequestInner;->hasUserGesture:Z

    .line 59
    iput-object p4, v1, Lorg/xwalk/core/internal/XWalkContentsClient$WebResourceRequestInner;->method:Ljava/lang/String;

    .line 60
    new-instance v2, Ljava/util/HashMap;

    array-length v3, p5

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, v1, Lorg/xwalk/core/internal/XWalkContentsClient$WebResourceRequestInner;->requestHeaders:Ljava/util/HashMap;

    .line 61
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p5

    if-ge v0, v2, :cond_0

    .line 62
    iget-object v2, v1, Lorg/xwalk/core/internal/XWalkContentsClient$WebResourceRequestInner;->requestHeaders:Ljava/util/HashMap;

    aget-object v3, p5, v0

    aget-object v4, p6, v0

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {p0, v1}, Lorg/xwalk/core/internal/XWalkContentsIoThreadClient;->shouldInterceptRequest(Lorg/xwalk/core/internal/XWalkContentsClient$WebResourceRequestInner;)Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;

    move-result-object v2

    return-object v2
.end method

.method public abstract shouldInterceptRequest(Lorg/xwalk/core/internal/XWalkContentsClient$WebResourceRequestInner;)Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;
.end method
