.class Lorg/chromium/media/VideoCaptureCamera$CrPictureCallback;
.super Ljava/lang/Object;
.source "VideoCaptureCamera.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/VideoCaptureCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CrPictureCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/media/VideoCaptureCamera;


# direct methods
.method private constructor <init>(Lorg/chromium/media/VideoCaptureCamera;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lorg/chromium/media/VideoCaptureCamera$CrPictureCallback;->this$0:Lorg/chromium/media/VideoCaptureCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/media/VideoCaptureCamera;Lorg/chromium/media/VideoCaptureCamera$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/chromium/media/VideoCaptureCamera;
    .param p2, "x1"    # Lorg/chromium/media/VideoCaptureCamera$1;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lorg/chromium/media/VideoCaptureCamera$CrPictureCallback;-><init>(Lorg/chromium/media/VideoCaptureCamera;)V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 8
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    const-wide/16 v4, 0x0

    .line 90
    iget-object v1, p0, Lorg/chromium/media/VideoCaptureCamera$CrPictureCallback;->this$0:Lorg/chromium/media/VideoCaptureCamera;

    invoke-static {v1}, Lorg/chromium/media/VideoCaptureCamera;->access$000(Lorg/chromium/media/VideoCaptureCamera;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 91
    :try_start_0
    iget-object v1, p0, Lorg/chromium/media/VideoCaptureCamera$CrPictureCallback;->this$0:Lorg/chromium/media/VideoCaptureCamera;

    invoke-static {v1}, Lorg/chromium/media/VideoCaptureCamera;->access$100(Lorg/chromium/media/VideoCaptureCamera;)J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lorg/chromium/media/VideoCaptureCamera$CrPictureCallback;->this$0:Lorg/chromium/media/VideoCaptureCamera;

    iget-object v2, p0, Lorg/chromium/media/VideoCaptureCamera$CrPictureCallback;->this$0:Lorg/chromium/media/VideoCaptureCamera;

    iget-wide v2, v2, Lorg/chromium/media/VideoCaptureCamera;->mNativeVideoCaptureDeviceAndroid:J

    iget-object v4, p0, Lorg/chromium/media/VideoCaptureCamera$CrPictureCallback;->this$0:Lorg/chromium/media/VideoCaptureCamera;

    invoke-static {v4}, Lorg/chromium/media/VideoCaptureCamera;->access$100(Lorg/chromium/media/VideoCaptureCamera;)J

    move-result-wide v4

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lorg/chromium/media/VideoCaptureCamera;->nativeOnPhotoTaken(JJ[B)V

    .line 95
    :cond_0
    iget-object v1, p0, Lorg/chromium/media/VideoCaptureCamera$CrPictureCallback;->this$0:Lorg/chromium/media/VideoCaptureCamera;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lorg/chromium/media/VideoCaptureCamera;->access$102(Lorg/chromium/media/VideoCaptureCamera;J)J

    .line 96
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    iget-object v1, p0, Lorg/chromium/media/VideoCaptureCamera$CrPictureCallback;->this$0:Lorg/chromium/media/VideoCaptureCamera;

    iget-object v1, v1, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-static {v1}, Lorg/chromium/media/VideoCaptureCamera;->getCameraParameters(Landroid/hardware/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 98
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 99
    iget-object v1, p0, Lorg/chromium/media/VideoCaptureCamera$CrPictureCallback;->this$0:Lorg/chromium/media/VideoCaptureCamera;

    iget-object v1, v1, Lorg/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 100
    invoke-virtual {p2}, Landroid/hardware/Camera;->startPreview()V

    .line 101
    return-void

    .line 96
    .end local v0    # "parameters":Landroid/hardware/Camera$Parameters;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
