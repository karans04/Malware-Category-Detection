.class Lorg/chromium/media/VideoCaptureCamera$CrErrorCallback;
.super Ljava/lang/Object;
.source "VideoCaptureCamera.java"

# interfaces
.implements Landroid/hardware/Camera$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/VideoCaptureCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CrErrorCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/media/VideoCaptureCamera;


# direct methods
.method private constructor <init>(Lorg/chromium/media/VideoCaptureCamera;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lorg/chromium/media/VideoCaptureCamera$CrErrorCallback;->this$0:Lorg/chromium/media/VideoCaptureCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/media/VideoCaptureCamera;Lorg/chromium/media/VideoCaptureCamera$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/chromium/media/VideoCaptureCamera;
    .param p2, "x1"    # Lorg/chromium/media/VideoCaptureCamera$1;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lorg/chromium/media/VideoCaptureCamera$CrErrorCallback;-><init>(Lorg/chromium/media/VideoCaptureCamera;)V

    return-void
.end method


# virtual methods
.method public onError(ILandroid/hardware/Camera;)V
    .locals 10
    .param p1, "error"    # I
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    const-wide/16 v8, 0x0

    .line 76
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera$CrErrorCallback;->this$0:Lorg/chromium/media/VideoCaptureCamera;

    iget-object v1, p0, Lorg/chromium/media/VideoCaptureCamera$CrErrorCallback;->this$0:Lorg/chromium/media/VideoCaptureCamera;

    iget-wide v2, v1, Lorg/chromium/media/VideoCaptureCamera;->mNativeVideoCaptureDeviceAndroid:J

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error id: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lorg/chromium/media/VideoCaptureCamera;->nativeOnError(JLjava/lang/String;)V

    .line 78
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera$CrErrorCallback;->this$0:Lorg/chromium/media/VideoCaptureCamera;

    invoke-static {v0}, Lorg/chromium/media/VideoCaptureCamera;->access$000(Lorg/chromium/media/VideoCaptureCamera;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 79
    :try_start_0
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera$CrErrorCallback;->this$0:Lorg/chromium/media/VideoCaptureCamera;

    invoke-static {v0}, Lorg/chromium/media/VideoCaptureCamera;->access$100(Lorg/chromium/media/VideoCaptureCamera;)J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-nez v0, :cond_0

    monitor-exit v7

    .line 84
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v1, p0, Lorg/chromium/media/VideoCaptureCamera$CrErrorCallback;->this$0:Lorg/chromium/media/VideoCaptureCamera;

    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera$CrErrorCallback;->this$0:Lorg/chromium/media/VideoCaptureCamera;

    iget-wide v2, v0, Lorg/chromium/media/VideoCaptureCamera;->mNativeVideoCaptureDeviceAndroid:J

    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera$CrErrorCallback;->this$0:Lorg/chromium/media/VideoCaptureCamera;

    invoke-static {v0}, Lorg/chromium/media/VideoCaptureCamera;->access$100(Lorg/chromium/media/VideoCaptureCamera;)J

    move-result-wide v4

    const/4 v0, 0x0

    new-array v6, v0, [B

    invoke-virtual/range {v1 .. v6}, Lorg/chromium/media/VideoCaptureCamera;->nativeOnPhotoTaken(JJ[B)V

    .line 82
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera$CrErrorCallback;->this$0:Lorg/chromium/media/VideoCaptureCamera;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lorg/chromium/media/VideoCaptureCamera;->access$102(Lorg/chromium/media/VideoCaptureCamera;J)J

    .line 83
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
