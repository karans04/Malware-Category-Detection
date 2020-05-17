.class Lorg/chromium/ui/VSyncMonitor$1;
.super Ljava/lang/Object;
.source "VSyncMonitor.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/ui/VSyncMonitor;-><init>(Landroid/content/Context;Lorg/chromium/ui/VSyncMonitor$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/ui/VSyncMonitor;

.field final synthetic val$useEstimatedRefreshPeriod:Z


# direct methods
.method constructor <init>(Lorg/chromium/ui/VSyncMonitor;Z)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lorg/chromium/ui/VSyncMonitor$1;->this$0:Lorg/chromium/ui/VSyncMonitor;

    iput-boolean p2, p0, Lorg/chromium/ui/VSyncMonitor$1;->val$useEstimatedRefreshPeriod:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 7
    .param p1, "frameTimeNanos"    # J

    .prologue
    .line 73
    const-string v3, "VSync"

    invoke-static {v3}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 74
    iget-boolean v3, p0, Lorg/chromium/ui/VSyncMonitor$1;->val$useEstimatedRefreshPeriod:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/chromium/ui/VSyncMonitor$1;->this$0:Lorg/chromium/ui/VSyncMonitor;

    invoke-static {v3}, Lorg/chromium/ui/VSyncMonitor;->access$000(Lorg/chromium/ui/VSyncMonitor;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 78
    iget-object v3, p0, Lorg/chromium/ui/VSyncMonitor$1;->this$0:Lorg/chromium/ui/VSyncMonitor;

    invoke-static {v3}, Lorg/chromium/ui/VSyncMonitor;->access$100(Lorg/chromium/ui/VSyncMonitor;)J

    move-result-wide v4

    sub-long v0, p1, v4

    .line 79
    .local v0, "lastRefreshDurationNano":J
    const v2, 0x3dcccccd    # 0.1f

    .line 80
    .local v2, "lastRefreshDurationWeight":F
    iget-object v3, p0, Lorg/chromium/ui/VSyncMonitor$1;->this$0:Lorg/chromium/ui/VSyncMonitor;

    iget-object v4, p0, Lorg/chromium/ui/VSyncMonitor$1;->this$0:Lorg/chromium/ui/VSyncMonitor;

    invoke-static {v4}, Lorg/chromium/ui/VSyncMonitor;->access$200(Lorg/chromium/ui/VSyncMonitor;)J

    move-result-wide v4

    sub-long v4, v0, v4

    long-to-float v4, v4

    mul-float/2addr v4, v2

    float-to-long v4, v4

    invoke-static {v3, v4, v5}, Lorg/chromium/ui/VSyncMonitor;->access$214(Lorg/chromium/ui/VSyncMonitor;J)J

    .line 83
    .end local v0    # "lastRefreshDurationNano":J
    .end local v2    # "lastRefreshDurationWeight":F
    :cond_0
    iget-object v3, p0, Lorg/chromium/ui/VSyncMonitor$1;->this$0:Lorg/chromium/ui/VSyncMonitor;

    invoke-static {v3, p1, p2}, Lorg/chromium/ui/VSyncMonitor;->access$102(Lorg/chromium/ui/VSyncMonitor;J)J

    .line 84
    iget-object v3, p0, Lorg/chromium/ui/VSyncMonitor$1;->this$0:Lorg/chromium/ui/VSyncMonitor;

    iget-object v4, p0, Lorg/chromium/ui/VSyncMonitor$1;->this$0:Lorg/chromium/ui/VSyncMonitor;

    invoke-static {v4}, Lorg/chromium/ui/VSyncMonitor;->access$300(Lorg/chromium/ui/VSyncMonitor;)J

    move-result-wide v4

    invoke-static {v3, p1, p2, v4, v5}, Lorg/chromium/ui/VSyncMonitor;->access$400(Lorg/chromium/ui/VSyncMonitor;JJ)V

    .line 85
    const-string v3, "VSync"

    invoke-static {v3}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 86
    return-void
.end method
