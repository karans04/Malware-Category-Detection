.class Lorg/chromium/content/browser/MediaThrottler$1;
.super Ljava/lang/Object;
.source "MediaThrottler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/MediaThrottler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/MediaThrottler;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/MediaThrottler;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lorg/chromium/content/browser/MediaThrottler$1;->this$0:Lorg/chromium/content/browser/MediaThrottler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 84
    new-instance v0, Lorg/chromium/content/browser/MediaThrottler$ReleaseWatchDogTask;

    iget-object v1, p0, Lorg/chromium/content/browser/MediaThrottler$1;->this$0:Lorg/chromium/content/browser/MediaThrottler;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/content/browser/MediaThrottler$ReleaseWatchDogTask;-><init>(Lorg/chromium/content/browser/MediaThrottler;Lorg/chromium/content/browser/MediaThrottler$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/MediaThrottler$ReleaseWatchDogTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 85
    return-void
.end method
