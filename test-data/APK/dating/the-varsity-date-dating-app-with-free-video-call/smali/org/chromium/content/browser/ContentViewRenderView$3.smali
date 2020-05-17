.class Lorg/chromium/content/browser/ContentViewRenderView$3;
.super Ljava/lang/Object;
.source "ContentViewRenderView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/ContentViewRenderView;->onSwapBuffersCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/ContentViewRenderView;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/ContentViewRenderView;)V
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewRenderView$3;->this$0:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewRenderView$3;->this$0:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewRenderView;->access$600(Lorg/chromium/content/browser/ContentViewRenderView;)Landroid/view/SurfaceView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setBackgroundResource(I)V

    .line 342
    return-void
.end method
