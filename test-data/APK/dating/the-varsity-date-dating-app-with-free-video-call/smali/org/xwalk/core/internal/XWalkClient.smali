.class public Lorg/xwalk/core/internal/XWalkClient;
.super Ljava/lang/Object;
.source "XWalkClient.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;


# direct methods
.method public constructor <init>(Lorg/xwalk/core/internal/XWalkViewInternal;)V
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Lorg/xwalk/core/internal/XWalkViewInternal;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkClient;->mContext:Landroid/content/Context;

    .line 44
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkClient;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    .line 45
    return-void
.end method


# virtual methods
.method public doUpdateVisitedHistory(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "isReload"    # Z

    .prologue
    .line 104
    return-void
.end method

.method public onFormResubmission(Lorg/xwalk/core/internal/XWalkViewInternal;Landroid/os/Message;Landroid/os/Message;)V
    .locals 0
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "dontResend"    # Landroid/os/Message;
    .param p3, "resend"    # Landroid/os/Message;

    .prologue
    .line 92
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 93
    return-void
.end method

.method public onLoadResource(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 153
    return-void
.end method

.method public onProceededAfterSslError(Lorg/xwalk/core/internal/XWalkViewInternal;Landroid/net/http/SslError;)V
    .locals 0
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 113
    return-void
.end method

.method public onReceivedLoginRequest(Lorg/xwalk/core/internal/XWalkViewInternal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "realm"    # Ljava/lang/String;
    .param p3, "account"    # Ljava/lang/String;
    .param p4, "args"    # Ljava/lang/String;

    .prologue
    .line 149
    return-void
.end method

.method public onRendererResponsive(Lorg/xwalk/core/internal/XWalkViewInternal;)V
    .locals 0
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;

    .prologue
    .line 61
    return-void
.end method

.method public onRendererUnresponsive(Lorg/xwalk/core/internal/XWalkViewInternal;)V
    .locals 0
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;

    .prologue
    .line 53
    return-void
.end method

.method public onTooManyRedirects(Lorg/xwalk/core/internal/XWalkViewInternal;Landroid/os/Message;Landroid/os/Message;)V
    .locals 0
    .param p1, "view"    # Lorg/xwalk/core/internal/XWalkViewInternal;
    .param p2, "cancelMsg"    # Landroid/os/Message;
    .param p3, "continueMsg"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 79
    return-void
.end method
