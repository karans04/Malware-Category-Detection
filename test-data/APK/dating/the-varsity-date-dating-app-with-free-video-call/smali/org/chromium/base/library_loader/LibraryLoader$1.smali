.class Lorg/chromium/base/library_loader/LibraryLoader$1;
.super Landroid/os/AsyncTask;
.source "LibraryLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/base/library_loader/LibraryLoader;->asyncPrefetchLibrariesToMemory()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/base/library_loader/LibraryLoader;

.field final synthetic val$coldStart:Z


# direct methods
.method constructor <init>(Lorg/chromium/base/library_loader/LibraryLoader;Z)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lorg/chromium/base/library_loader/LibraryLoader$1;->this$0:Lorg/chromium/base/library_loader/LibraryLoader;

    iput-boolean p2, p0, Lorg/chromium/base/library_loader/LibraryLoader$1;->val$coldStart:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 194
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/base/library_loader/LibraryLoader$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 197
    const-string v3, "LibraryLoader.asyncPrefetchLibrariesToMemory"

    invoke-static {v3}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 198
    invoke-static {}, Lorg/chromium/base/library_loader/LibraryLoader;->access$000()I

    move-result v1

    .line 199
    .local v1, "percentage":I
    const/4 v2, 0x0

    .line 200
    .local v2, "success":Z
    iget-boolean v3, p0, Lorg/chromium/base/library_loader/LibraryLoader$1;->val$coldStart:Z

    if-eqz v3, :cond_0

    .line 201
    invoke-static {}, Lorg/chromium/base/library_loader/LibraryLoader;->access$100()Z

    move-result v2

    .line 202
    if-nez v2, :cond_0

    .line 203
    const-string v3, "LibraryLoader"

    const-string v4, "Forking a process to prefetch the native library failed."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    :cond_0
    invoke-static {}, Lorg/chromium/base/metrics/RecordHistogram;->initialize()V

    .line 209
    iget-boolean v3, p0, Lorg/chromium/base/library_loader/LibraryLoader$1;->val$coldStart:Z

    if-eqz v3, :cond_1

    .line 210
    const-string v3, "LibraryLoader.PrefetchStatus"

    invoke-static {v3, v2}, Lorg/chromium/base/metrics/RecordHistogram;->recordBooleanHistogram(Ljava/lang/String;Z)V

    .line 212
    :cond_1
    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    .line 213
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LibraryLoader.PercentageOfResidentCodeBeforePrefetch"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v3, p0, Lorg/chromium/base/library_loader/LibraryLoader$1;->val$coldStart:Z

    if-eqz v3, :cond_3

    const-string v3, ".ColdStartup"

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "histogram":Ljava/lang/String;
    invoke-static {v0, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordPercentageHistogram(Ljava/lang/String;I)V

    .line 217
    .end local v0    # "histogram":Ljava/lang/String;
    :cond_2
    const-string v3, "LibraryLoader.asyncPrefetchLibrariesToMemory"

    invoke-static {v3}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 218
    const/4 v3, 0x0

    return-object v3

    .line 213
    :cond_3
    const-string v3, ".WarmStartup"

    goto :goto_0
.end method
