.class Lorg/chromium/content/browser/MediaThrottler$ReleaseWatchDogTask;
.super Landroid/os/AsyncTask;
.source "MediaThrottler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/MediaThrottler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReleaseWatchDogTask"
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
.field final synthetic this$0:Lorg/chromium/content/browser/MediaThrottler;


# direct methods
.method private constructor <init>(Lorg/chromium/content/browser/MediaThrottler;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lorg/chromium/content/browser/MediaThrottler$ReleaseWatchDogTask;->this$0:Lorg/chromium/content/browser/MediaThrottler;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/content/browser/MediaThrottler;Lorg/chromium/content/browser/MediaThrottler$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/chromium/content/browser/MediaThrottler;
    .param p2, "x1"    # Lorg/chromium/content/browser/MediaThrottler$1;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/MediaThrottler$ReleaseWatchDogTask;-><init>(Lorg/chromium/content/browser/MediaThrottler;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 68
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/MediaThrottler$ReleaseWatchDogTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    const/4 v3, 0x0

    .line 71
    iget-object v0, p0, Lorg/chromium/content/browser/MediaThrottler$ReleaseWatchDogTask;->this$0:Lorg/chromium/content/browser/MediaThrottler;

    invoke-static {v0}, Lorg/chromium/content/browser/MediaThrottler;->access$000(Lorg/chromium/content/browser/MediaThrottler;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 72
    :try_start_0
    iget-object v0, p0, Lorg/chromium/content/browser/MediaThrottler$ReleaseWatchDogTask;->this$0:Lorg/chromium/content/browser/MediaThrottler;

    invoke-static {v0}, Lorg/chromium/content/browser/MediaThrottler;->access$100(Lorg/chromium/content/browser/MediaThrottler;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/MediaThrottler$ReleaseWatchDogTask;->this$0:Lorg/chromium/content/browser/MediaThrottler;

    invoke-static {v0}, Lorg/chromium/content/browser/MediaThrottler;->access$200(Lorg/chromium/content/browser/MediaThrottler;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lorg/chromium/content/browser/MediaThrottler$ReleaseWatchDogTask;->this$0:Lorg/chromium/content/browser/MediaThrottler;

    invoke-static {v0}, Lorg/chromium/content/browser/MediaThrottler;->access$200(Lorg/chromium/content/browser/MediaThrottler;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 74
    iget-object v0, p0, Lorg/chromium/content/browser/MediaThrottler$ReleaseWatchDogTask;->this$0:Lorg/chromium/content/browser/MediaThrottler;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/chromium/content/browser/MediaThrottler;->access$202(Lorg/chromium/content/browser/MediaThrottler;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 76
    :cond_0
    monitor-exit v1

    .line 77
    return-object v3

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
