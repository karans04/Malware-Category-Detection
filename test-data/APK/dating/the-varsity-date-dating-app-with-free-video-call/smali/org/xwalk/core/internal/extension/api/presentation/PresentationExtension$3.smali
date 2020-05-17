.class Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension$3;
.super Ljava/lang/Object;
.source "PresentationExtension.java"

# interfaces
.implements Lorg/xwalk/core/internal/extension/api/presentation/PresentationView$PresentationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->updatePresentationView(Landroid/view/Display;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;


# direct methods
.method constructor <init>(Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;)V
    .locals 0

    .prologue
    .line 426
    iput-object p1, p0, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension$3;->this$0:Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Lorg/xwalk/core/internal/extension/api/presentation/PresentationView;)V
    .locals 2
    .param p1, "view"    # Lorg/xwalk/core/internal/extension/api/presentation/PresentationView;

    .prologue
    .line 432
    iget-object v0, p0, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension$3;->this$0:Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;

    invoke-static {v0}, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->access$900(Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;)Lorg/xwalk/core/internal/extension/api/presentation/PresentationView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 433
    iget-object v0, p0, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension$3;->this$0:Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;

    invoke-static {v0}, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->access$500(Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;)Lorg/xwalk/core/internal/extension/api/presentation/XWalkPresentationContent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension$3;->this$0:Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;

    invoke-static {v0}, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->access$500(Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;)Lorg/xwalk/core/internal/extension/api/presentation/XWalkPresentationContent;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xwalk/core/internal/extension/api/presentation/XWalkPresentationContent;->onPause()V

    .line 434
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension$3;->this$0:Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->access$902(Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;Lorg/xwalk/core/internal/extension/api/presentation/PresentationView;)Lorg/xwalk/core/internal/extension/api/presentation/PresentationView;

    .line 436
    :cond_1
    return-void
.end method

.method public onShow(Lorg/xwalk/core/internal/extension/api/presentation/PresentationView;)V
    .locals 1
    .param p1, "view"    # Lorg/xwalk/core/internal/extension/api/presentation/PresentationView;

    .prologue
    .line 442
    iget-object v0, p0, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension$3;->this$0:Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;

    invoke-static {v0}, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->access$900(Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;)Lorg/xwalk/core/internal/extension/api/presentation/PresentationView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension$3;->this$0:Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;

    invoke-static {v0}, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->access$500(Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;)Lorg/xwalk/core/internal/extension/api/presentation/XWalkPresentationContent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension$3;->this$0:Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;

    invoke-static {v0}, Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;->access$500(Lorg/xwalk/core/internal/extension/api/presentation/PresentationExtension;)Lorg/xwalk/core/internal/extension/api/presentation/XWalkPresentationContent;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xwalk/core/internal/extension/api/presentation/XWalkPresentationContent;->onResume()V

    .line 445
    :cond_0
    return-void
.end method
