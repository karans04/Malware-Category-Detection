.class Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension$2$1;
.super Ljava/lang/Object;
.source "PresentationExtension.java"

# interfaces
.implements Lorg/xwalk/core/internal/extension/api/presentation/XWalkPresentationContent$PresentationDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension$2;


# direct methods
.method constructor <init>(Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension$2;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension$2$1;->this$1:Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentClosed(Lorg/xwalk/core/internal/extension/api/presentation/XWalkPresentationContent;)V
    .locals 1
    .param p1, "content"    # Lorg/xwalk/core/internal/extension/api/presentation/XWalkPresentationContent;

    .prologue
    .line 302
    iget-object v0, p0, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension$2$1;->this$1:Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension$2;

    iget-object v0, v0, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension$2;->this$0:Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;

    invoke-static {v0}, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->access$500(Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;)Lorg/xwalk/core/internal/extension/api/presentation/XWalkPresentationContent;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 303
    iget-object v0, p0, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension$2$1;->this$1:Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension$2;

    iget-object v0, v0, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension$2;->this$0:Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;

    invoke-static {v0}, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->access$200(Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;)V

    .line 304
    iget-object v0, p0, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension$2$1;->this$1:Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension$2;

    iget-object v0, v0, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension$2;->this$0:Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;

    invoke-static {v0}, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->access$900(Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;)Lorg/xwalk/core/internal/extension/api/presentation/PresentationView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension$2$1;->this$1:Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension$2;

    iget-object v0, v0, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension$2;->this$0:Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;

    invoke-static {v0}, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->access$900(Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;)Lorg/xwalk/core/internal/extension/api/presentation/PresentationView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xwalk/core/internal/extension/api/presentation/PresentationView;->cancel()V

    .line 306
    :cond_0
    return-void
.end method

.method public onContentLoaded(Lorg/xwalk/core/internal/extension/api/presentation/XWalkPresentationContent;)V
    .locals 4
    .param p1, "content"    # Lorg/xwalk/core/internal/extension/api/presentation/XWalkPresentationContent;

    .prologue
    .line 297
    iget-object v0, p0, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension$2$1;->this$1:Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension$2;

    iget-object v0, v0, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension$2;->this$0:Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;

    iget-object v1, p0, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension$2$1;->this$1:Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension$2;

    iget v1, v1, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension$2;->val$instanceId:I

    iget-object v2, p0, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension$2$1;->this$1:Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension$2;

    iget v2, v2, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension$2;->val$requestId:I

    invoke-virtual {p1}, Lorg/xwalk/core/internal/extension/api/presentation/XWalkPresentationContent;->getPresentationId()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->access$800(Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;III)V

    .line 298
    return-void
.end method
