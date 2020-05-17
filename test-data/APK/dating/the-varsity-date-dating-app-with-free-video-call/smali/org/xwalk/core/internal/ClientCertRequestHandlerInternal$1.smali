.class Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal$1;
.super Ljava/lang/Object;
.source "ClientCertRequestHandlerInternal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->proceed(Ljava/security/PrivateKey;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;

.field final synthetic val$chain:Ljava/util/List;

.field final synthetic val$privateKey:Ljava/security/PrivateKey;


# direct methods
.method constructor <init>(Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;Ljava/util/List;Ljava/security/PrivateKey;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal$1;->this$0:Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;

    iput-object p2, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal$1;->val$chain:Ljava/util/List;

    iput-object p3, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal$1;->val$privateKey:Ljava/security/PrivateKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 52
    const/4 v0, 0x0

    .line 53
    .local v0, "chains":[Ljava/security/cert/X509Certificate;
    iget-object v1, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal$1;->val$chain:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 54
    iget-object v1, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal$1;->val$chain:Ljava/util/List;

    iget-object v2, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal$1;->val$chain:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/security/cert/X509Certificate;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "chains":[Ljava/security/cert/X509Certificate;
    check-cast v0, [Ljava/security/cert/X509Certificate;

    .line 56
    .restart local v0    # "chains":[Ljava/security/cert/X509Certificate;
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal$1;->this$0:Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;

    iget-object v2, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal$1;->val$privateKey:Ljava/security/PrivateKey;

    invoke-static {v1, v2, v0}, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->access$000(Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)V

    .line 57
    return-void
.end method
