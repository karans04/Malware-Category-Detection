.class Lorg/chromium/media/VideoCaptureCamera2$CrPreviewSessionListener;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "VideoCaptureCamera2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/VideoCaptureCamera2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CrPreviewSessionListener"
.end annotation


# instance fields
.field private final mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

.field final synthetic this$0:Lorg/chromium/media/VideoCaptureCamera2;


# direct methods
.method constructor <init>(Lorg/chromium/media/VideoCaptureCamera2;Landroid/hardware/camera2/CaptureRequest;)V
    .locals 0
    .param p2, "previewRequest"    # Landroid/hardware/camera2/CaptureRequest;

    .prologue
    .line 75
    iput-object p1, p0, Lorg/chromium/media/VideoCaptureCamera2$CrPreviewSessionListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    .line 76
    iput-object p2, p0, Lorg/chromium/media/VideoCaptureCamera2$CrPreviewSessionListener;->mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 77
    return-void
.end method


# virtual methods
.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 4
    .param p1, "cameraCaptureSession"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    .line 101
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2$CrPreviewSessionListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    sget-object v1, Lorg/chromium/media/VideoCaptureCamera2$CameraState;->STOPPED:Lorg/chromium/media/VideoCaptureCamera2$CameraState;

    invoke-static {v0, v1}, Lorg/chromium/media/VideoCaptureCamera2;->access$100(Lorg/chromium/media/VideoCaptureCamera2;Lorg/chromium/media/VideoCaptureCamera2$CameraState;)V

    .line 102
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2$CrPreviewSessionListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    iget-object v1, p0, Lorg/chromium/media/VideoCaptureCamera2$CrPreviewSessionListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    iget-wide v2, v1, Lorg/chromium/media/VideoCaptureCamera2;->mNativeVideoCaptureDeviceAndroid:J

    const-string v1, "Camera session configuration error"

    invoke-virtual {v0, v2, v3, v1}, Lorg/chromium/media/VideoCaptureCamera2;->nativeOnError(JLjava/lang/String;)V

    .line 103
    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 5
    .param p1, "cameraCaptureSession"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    .line 81
    const-string v1, "VideoCapture"

    const-string v2, "onConfigured"

    invoke-static {v1, v2}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lorg/chromium/media/VideoCaptureCamera2$CrPreviewSessionListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v1, p1}, Lorg/chromium/media/VideoCaptureCamera2;->access$302(Lorg/chromium/media/VideoCaptureCamera2;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 88
    :try_start_0
    iget-object v1, p0, Lorg/chromium/media/VideoCaptureCamera2$CrPreviewSessionListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v1}, Lorg/chromium/media/VideoCaptureCamera2;->access$300(Lorg/chromium/media/VideoCaptureCamera2;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/media/VideoCaptureCamera2$CrPreviewSessionListener;->mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 94
    iget-object v1, p0, Lorg/chromium/media/VideoCaptureCamera2$CrPreviewSessionListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    sget-object v2, Lorg/chromium/media/VideoCaptureCamera2$CameraState;->STARTED:Lorg/chromium/media/VideoCaptureCamera2$CameraState;

    invoke-static {v1, v2}, Lorg/chromium/media/VideoCaptureCamera2;->access$100(Lorg/chromium/media/VideoCaptureCamera2;Lorg/chromium/media/VideoCaptureCamera2$CameraState;)V

    .line 95
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "ex":Ljava/lang/Exception;
    :goto_1
    const-string v1, "VideoCapture"

    const-string v2, "setRepeatingRequest: "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 89
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method
