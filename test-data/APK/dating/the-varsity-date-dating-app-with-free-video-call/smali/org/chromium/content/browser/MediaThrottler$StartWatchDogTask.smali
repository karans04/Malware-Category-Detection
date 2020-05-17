.class Lorg/chromium/content/browser/MediaThrottler$StartWatchDogTask;
.super Landroid/os/AsyncTask;
.source "MediaThrottler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/MediaThrottler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartWatchDogTask"
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
    .line 101
    iput-object p1, p0, Lorg/chromium/content/browser/MediaThrottler$StartWatchDogTask;->this$0:Lorg/chromium/content/browser/MediaThrottler;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/content/browser/MediaThrottler;Lorg/chromium/content/browser/MediaThrottler$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/chromium/content/browser/MediaThrottler;
    .param p2, "x1"    # Lorg/chromium/content/browser/MediaThrottler$1;

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/MediaThrottler$StartWatchDogTask;-><init>(Lorg/chromium/content/browser/MediaThrottler;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 101
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/MediaThrottler$StartWatchDogTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    const/4 v6, 0x0

    .line 104
    iget-object v1, p0, Lorg/chromium/content/browser/MediaThrottler$StartWatchDogTask;->this$0:Lorg/chromium/content/browser/MediaThrottler;

    invoke-static {v1}, Lorg/chromium/content/browser/MediaThrottler;->access$000(Lorg/chromium/content/browser/MediaThrottler;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 105
    :try_start_0
    iget-object v1, p0, Lorg/chromium/content/browser/MediaThrottler$StartWatchDogTask;->this$0:Lorg/chromium/content/browser/MediaThrottler;

    invoke-static {v1}, Lorg/chromium/content/browser/MediaThrottler;->access$200(Lorg/chromium/content/browser/MediaThrottler;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/chromium/content/browser/MediaThrottler$StartWatchDogTask;->this$0:Lorg/chromium/content/browser/MediaThrottler;

    invoke-static {v1}, Lorg/chromium/content/browser/MediaThrottler;->access$100(Lorg/chromium/content/browser/MediaThrottler;)I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :goto_0
    return-object v6

    .line 107
    :cond_1
    :try_start_1
    iget-object v1, p0, Lorg/chromium/content/browser/MediaThrottler$StartWatchDogTask;->this$0:Lorg/chromium/content/browser/MediaThrottler;

    iget-object v3, p0, Lorg/chromium/content/browser/MediaThrottler$StartWatchDogTask;->this$0:Lorg/chromium/content/browser/MediaThrottler;

    invoke-static {v3}, Lorg/chromium/content/browser/MediaThrottler;->access$400(Lorg/chromium/content/browser/MediaThrottler;)Landroid/content/Context;

    move-result-object v3

    sget v4, Lorg/chromium/content/R$raw;->empty:I

    invoke-static {v3, v4}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/chromium/content/browser/MediaThrottler;->access$202(Lorg/chromium/content/browser/MediaThrottler;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    :goto_1
    :try_start_2
    iget-object v1, p0, Lorg/chromium/content/browser/MediaThrottler$StartWatchDogTask;->this$0:Lorg/chromium/content/browser/MediaThrottler;

    invoke-static {v1}, Lorg/chromium/content/browser/MediaThrottler;->access$200(Lorg/chromium/content/browser/MediaThrottler;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-nez v1, :cond_2

    .line 114
    const-string v1, "cr_MediaThrottler"

    const-string v3, "Unable to create watch dog player, treat it as server crash."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    iget-object v1, p0, Lorg/chromium/content/browser/MediaThrottler$StartWatchDogTask;->this$0:Lorg/chromium/content/browser/MediaThrottler;

    invoke-static {v1}, Lorg/chromium/content/browser/MediaThrottler;->access$500(Lorg/chromium/content/browser/MediaThrottler;)V

    .line 119
    :goto_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_3
    const-string v1, "cr_MediaThrottler"

    const-string v3, "Exception happens while creating the watch dog player."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v1, v3, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 110
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "cr_MediaThrottler"

    const-string v3, "Exception happens while creating the watch dog player."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v1, v3, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 117
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_2
    iget-object v1, p0, Lorg/chromium/content/browser/MediaThrottler$StartWatchDogTask;->this$0:Lorg/chromium/content/browser/MediaThrottler;

    invoke-static {v1}, Lorg/chromium/content/browser/MediaThrottler;->access$200(Lorg/chromium/content/browser/MediaThrottler;)Landroid/media/MediaPlayer;

    move-result-object v1

    iget-object v3, p0, Lorg/chromium/content/browser/MediaThrottler$StartWatchDogTask;->this$0:Lorg/chromium/content/browser/MediaThrottler;

    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method
