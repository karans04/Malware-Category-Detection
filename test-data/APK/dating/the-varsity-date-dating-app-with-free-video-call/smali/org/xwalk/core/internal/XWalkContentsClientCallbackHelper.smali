.class Lorg/xwalk/core/internal/XWalkContentsClientCallbackHelper;
.super Ljava/lang/Object;
.source "XWalkContentsClientCallbackHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xwalk/core/internal/XWalkContentsClientCallbackHelper$OnReceivedResponseHeadersInfo;,
        Lorg/xwalk/core/internal/XWalkContentsClientCallbackHelper$OnReceivedErrorInfo;,
        Lorg/xwalk/core/internal/XWalkContentsClientCallbackHelper$LoginRequestInfo;,
        Lorg/xwalk/core/internal/XWalkContentsClientCallbackHelper$DownloadInfo;
    }
.end annotation


# static fields
.field private static final MSG_ON_DOWNLOAD_START:I = 0x3

.field private static final MSG_ON_LOAD_RESOURCE:I = 0x1

.field private static final MSG_ON_PAGE_FINISHED:I = 0x7

.field private static final MSG_ON_PAGE_STARTED:I = 0x2

.field private static final MSG_ON_RECEIVED_ERROR:I = 0x5

.field private static final MSG_ON_RECEIVED_LOGIN_REQUEST:I = 0x4

.field private static final MSG_ON_RECEIVED_RESPONSE_HEADERS:I = 0x8

.field private static final MSG_ON_RESOURCE_LOAD_STARTED:I = 0x6


# instance fields
.field private final mContentsClient:Lorg/xwalk/core/internal/XWalkContentsClient;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lorg/xwalk/core/internal/XWalkContentsClient;)V
    .locals 2
    .param p1, "contentsClient"    # Lorg/xwalk/core/internal/XWalkContentsClient;

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Lorg/xwalk/core/internal/XWalkContentsClientCallbackHelper$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/xwalk/core/internal/XWalkContentsClientCallbackHelper$1;-><init>(Lorg/xwalk/core/internal/XWalkContentsClientCallbackHelper;Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientCallbackHelper;->mHandler:Landroid/os/Handler;

    .line 146
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkContentsClientCallbackHelper;->mContentsClient:Lorg/xwalk/core/internal/XWalkContentsClient;

    .line 147
    return-void
.end method

.method static synthetic access$000(Lorg/xwalk/core/internal/XWalkContentsClientCallbackHelper;)Lorg/xwalk/core/internal/XWalkContentsClient;
    .locals 1
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkContentsClientCallbackHelper;

    .prologue
    .line 20
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientCallbackHelper;->mContentsClient:Lorg/xwalk/core/internal/XWalkContentsClient;

    return-object v0
.end method


# virtual methods
.method public postOnDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "contentDisposition"    # Ljava/lang/String;
    .param p4, "mimeType"    # Ljava/lang/String;
    .param p5, "contentLength"    # J

    .prologue
    .line 159
    new-instance v1, Lorg/xwalk/core/internal/XWalkContentsClientCallbackHelper$DownloadInfo;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-direct/range {v1 .. v7}, Lorg/xwalk/core/internal/XWalkContentsClientCallbackHelper$DownloadInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 161
    .local v1, "info":Lorg/xwalk/core/internal/XWalkContentsClientCallbackHelper$DownloadInfo;
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientCallbackHelper;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContentsClientCallbackHelper;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 162
    return-void
.end method

.method public postOnLoadResource(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 150
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientCallbackHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientCallbackHelper;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 151
    return-void
.end method

.method public postOnPageFinished(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 179
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientCallbackHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientCallbackHelper;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 180
    return-void
.end method

.method public postOnPageStarted(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 154
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientCallbackHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientCallbackHelper;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 155
    return-void
.end method

.method public postOnReceivedError(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "errorCode"    # I
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 170
    new-instance v0, Lorg/xwalk/core/internal/XWalkContentsClientCallbackHelper$OnReceivedErrorInfo;

    invoke-direct {v0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkContentsClientCallbackHelper$OnReceivedErrorInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 171
    .local v0, "info":Lorg/xwalk/core/internal/XWalkContentsClientCallbackHelper$OnReceivedErrorInfo;
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientCallbackHelper;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContentsClientCallbackHelper;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 172
    return-void
.end method

.method public postOnReceivedLoginRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "realm"    # Ljava/lang/String;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "args"    # Ljava/lang/String;

    .prologue
    .line 165
    new-instance v0, Lorg/xwalk/core/internal/XWalkContentsClientCallbackHelper$LoginRequestInfo;

    invoke-direct {v0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkContentsClientCallbackHelper$LoginRequestInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .local v0, "info":Lorg/xwalk/core/internal/XWalkContentsClientCallbackHelper$LoginRequestInfo;
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientCallbackHelper;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContentsClientCallbackHelper;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 167
    return-void
.end method

.method public postOnReceivedResponseHeaders(Lorg/xwalk/core/internal/XWalkContentsClient$WebResourceRequestInner;Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;)V
    .locals 4
    .param p1, "request"    # Lorg/xwalk/core/internal/XWalkContentsClient$WebResourceRequestInner;
    .param p2, "response"    # Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;

    .prologue
    .line 184
    new-instance v0, Lorg/xwalk/core/internal/XWalkContentsClientCallbackHelper$OnReceivedResponseHeadersInfo;

    invoke-direct {v0, p1, p2}, Lorg/xwalk/core/internal/XWalkContentsClientCallbackHelper$OnReceivedResponseHeadersInfo;-><init>(Lorg/xwalk/core/internal/XWalkContentsClient$WebResourceRequestInner;Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;)V

    .line 186
    .local v0, "info":Lorg/xwalk/core/internal/XWalkContentsClientCallbackHelper$OnReceivedResponseHeadersInfo;
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientCallbackHelper;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkContentsClientCallbackHelper;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 187
    return-void
.end method

.method public postOnResourceLoadStarted(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 175
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentsClientCallbackHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentsClientCallbackHelper;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 176
    return-void
.end method
