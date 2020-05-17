.class Lorg/chromium/base/JavaHandlerThread$2;
.super Ljava/lang/Object;
.source "JavaHandlerThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/base/JavaHandlerThread;->stop(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/base/JavaHandlerThread;

.field final synthetic val$nativeEvent:J

.field final synthetic val$nativeThread:J

.field final synthetic val$quitSafely:Z


# direct methods
.method constructor <init>(Lorg/chromium/base/JavaHandlerThread;JJZ)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lorg/chromium/base/JavaHandlerThread$2;->this$0:Lorg/chromium/base/JavaHandlerThread;

    iput-wide p2, p0, Lorg/chromium/base/JavaHandlerThread$2;->val$nativeThread:J

    iput-wide p4, p0, Lorg/chromium/base/JavaHandlerThread$2;->val$nativeEvent:J

    iput-boolean p6, p0, Lorg/chromium/base/JavaHandlerThread$2;->val$quitSafely:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 50
    iget-object v0, p0, Lorg/chromium/base/JavaHandlerThread$2;->this$0:Lorg/chromium/base/JavaHandlerThread;

    iget-wide v2, p0, Lorg/chromium/base/JavaHandlerThread$2;->val$nativeThread:J

    iget-wide v4, p0, Lorg/chromium/base/JavaHandlerThread$2;->val$nativeEvent:J

    invoke-static {v0, v2, v3, v4, v5}, Lorg/chromium/base/JavaHandlerThread;->access$100(Lorg/chromium/base/JavaHandlerThread;JJ)V

    .line 51
    iget-boolean v0, p0, Lorg/chromium/base/JavaHandlerThread$2;->val$quitSafely:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/base/JavaHandlerThread$2;->this$0:Lorg/chromium/base/JavaHandlerThread;

    iget-object v0, v0, Lorg/chromium/base/JavaHandlerThread;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 52
    :cond_0
    return-void
.end method
