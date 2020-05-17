.class Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader$AsyncLoadTask;
.super Landroid/os/AsyncTask;
.source "AsyncPreloadResourceLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncLoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lorg/chromium/ui/resources/Resource;",
        ">;"
    }
.end annotation


# instance fields
.field private final mResourceId:I

.field final synthetic this$0:Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader;


# direct methods
.method public constructor <init>(Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader;I)V
    .locals 0
    .param p2, "resourceId"    # I

    .prologue
    .line 109
    iput-object p1, p0, Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader$AsyncLoadTask;->this$0:Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 110
    iput p2, p0, Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader$AsyncLoadTask;->mResourceId:I

    .line 111
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 106
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader$AsyncLoadTask;->doInBackground([Ljava/lang/Void;)Lorg/chromium/ui/resources/Resource;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lorg/chromium/ui/resources/Resource;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 115
    iget-object v0, p0, Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader$AsyncLoadTask;->this$0:Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader;

    iget v1, p0, Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader$AsyncLoadTask;->mResourceId:I

    invoke-static {v0, v1}, Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader;->access$000(Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader;I)Lorg/chromium/ui/resources/Resource;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 106
    check-cast p1, Lorg/chromium/ui/resources/Resource;

    invoke-virtual {p0, p1}, Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader$AsyncLoadTask;->onPostExecute(Lorg/chromium/ui/resources/Resource;)V

    return-void
.end method

.method protected onPostExecute(Lorg/chromium/ui/resources/Resource;)V
    .locals 2
    .param p1, "resource"    # Lorg/chromium/ui/resources/Resource;

    .prologue
    .line 122
    iget-object v0, p0, Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader$AsyncLoadTask;->this$0:Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader;

    invoke-static {v0}, Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader;->access$100(Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader;)Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader$AsyncLoadTask;->mResourceId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 124
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader$AsyncLoadTask;->this$0:Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader;

    iget v1, p0, Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader$AsyncLoadTask;->mResourceId:I

    invoke-static {v0, p1, v1}, Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader;->access$200(Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader;Lorg/chromium/ui/resources/Resource;I)V

    goto :goto_0
.end method
