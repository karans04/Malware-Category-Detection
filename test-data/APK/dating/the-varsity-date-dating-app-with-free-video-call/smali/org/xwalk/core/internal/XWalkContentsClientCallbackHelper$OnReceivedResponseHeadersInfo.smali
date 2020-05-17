.class Lorg/xwalk/core/internal/XWalkContentsClientCallbackHelper$OnReceivedResponseHeadersInfo;
.super Ljava/lang/Object;
.source "XWalkContentsClientCallbackHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xwalk/core/internal/XWalkContentsClientCallbackHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnReceivedResponseHeadersInfo"
.end annotation


# instance fields
.field final mRequest:Lorg/xwalk/core/internal/XWalkContentsClient$WebResourceRequestInner;

.field final mResponse:Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;


# direct methods
.method constructor <init>(Lorg/xwalk/core/internal/XWalkContentsClient$WebResourceRequestInner;Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;)V
    .locals 0
    .param p1, "request"    # Lorg/xwalk/core/internal/XWalkContentsClient$WebResourceRequestInner;
    .param p2, "response"    # Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkContentsClientCallbackHelper$OnReceivedResponseHeadersInfo;->mRequest:Lorg/xwalk/core/internal/XWalkContentsClient$WebResourceRequestInner;

    .line 77
    iput-object p2, p0, Lorg/xwalk/core/internal/XWalkContentsClientCallbackHelper$OnReceivedResponseHeadersInfo;->mResponse:Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;

    .line 78
    return-void
.end method
