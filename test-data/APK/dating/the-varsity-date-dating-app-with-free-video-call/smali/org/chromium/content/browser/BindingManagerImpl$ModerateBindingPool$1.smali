.class Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool$1;
.super Ljava/lang/Object;
.source "BindingManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->onSentToBackground(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;

.field final synthetic val$onTesting:Z


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;Z)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool$1;->this$0:Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;

    iput-boolean p2, p0, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool$1;->val$onTesting:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 136
    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool$1;->this$0:Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;

    invoke-static {v0}, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->access$300(Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 137
    :try_start_0
    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool$1;->this$0:Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;

    invoke-static {v0}, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->access$400(Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;)Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_0

    monitor-exit v1

    .line 146
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool$1;->this$0:Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->access$402(Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 139
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    const-string v0, "cr.BindingManager"

    const-string v1, "Release moderate connections: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool$1;->this$0:Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;

    invoke-virtual {v4}, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    iget-boolean v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool$1;->val$onTesting:Z

    if-nez v0, :cond_1

    .line 142
    const-string v0, "Android.ModerateBindingCount"

    iget-object v1, p0, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool$1;->this$0:Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;

    invoke-virtual {v1}, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->size()I

    move-result v1

    invoke-static {v0, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordCountHistogram(Ljava/lang/String;I)V

    .line 145
    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool$1;->this$0:Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;

    invoke-virtual {v0}, Lorg/chromium/content/browser/BindingManagerImpl$ModerateBindingPool;->evictAll()V

    goto :goto_0

    .line 139
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
