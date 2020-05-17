.class Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;
.super Ljava/lang/Object;
.source "XWalkSettingsInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xwalk/core/internal/XWalkSettingsInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final UPDATE_WEBKIT_PREFERENCES:I


# instance fields
.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lorg/xwalk/core/internal/XWalkSettingsInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 152
    const-class v0, Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/xwalk/core/internal/XWalkSettingsInternal;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->this$0:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    return-void
.end method

.method static synthetic access$600(Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;)V
    .locals 0
    .param p0, "x0"    # Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;

    .prologue
    .line 152
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->updateWebkitPreferencesLocked()V

    return-void
.end method

.method private updateWebkitPreferencesLocked()V
    .locals 4

    .prologue
    .line 192
    sget-boolean v0, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->this$0:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->access$100(Lorg/xwalk/core/internal/XWalkSettingsInternal;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 193
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->this$0:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->access$400(Lorg/xwalk/core/internal/XWalkSettingsInternal;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 212
    :cond_1
    :goto_0
    return-void

    .line 194
    :cond_2
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 195
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->runningOnUiThread()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 196
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->this$0:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->access$200(Lorg/xwalk/core/internal/XWalkSettingsInternal;)V

    goto :goto_0

    .line 199
    :cond_3
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->this$0:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->access$300(Lorg/xwalk/core/internal/XWalkSettingsInternal;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 202
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->this$0:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->access$302(Lorg/xwalk/core/internal/XWalkSettingsInternal;Z)Z

    .line 203
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 207
    :goto_1
    :try_start_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->this$0:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->access$300(Lorg/xwalk/core/internal/XWalkSettingsInternal;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->this$0:Lorg/xwalk/core/internal/XWalkSettingsInternal;

    invoke-static {v0}, Lorg/xwalk/core/internal/XWalkSettingsInternal;->access$100(Lorg/xwalk/core/internal/XWalkSettingsInternal;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 210
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method bindUiThread()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 177
    :goto_0
    return-void

    .line 163
    :cond_0
    new-instance v0, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler$1;

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->getUiThreadLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler$1;-><init>(Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->mHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method maybePostOnUiThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 186
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 189
    :cond_0
    return-void
.end method

.method maybeRunOnUiThreadBlocking(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 180
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkSettingsInternal$EventHandler;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 181
    invoke-static {p1}, Lorg/chromium/base/ThreadUtils;->runOnUiThreadBlocking(Ljava/lang/Runnable;)V

    .line 183
    :cond_0
    return-void
.end method
