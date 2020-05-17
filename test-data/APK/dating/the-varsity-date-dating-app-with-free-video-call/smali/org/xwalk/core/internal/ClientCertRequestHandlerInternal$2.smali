.class Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal$2;
.super Ljava/lang/Object;
.source "ClientCertRequestHandlerInternal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->ignore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;


# direct methods
.method constructor <init>(Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal$2;->this$0:Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal$2;->this$0:Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;

    invoke-static {v0}, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->access$100(Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;)V

    .line 67
    return-void
.end method
