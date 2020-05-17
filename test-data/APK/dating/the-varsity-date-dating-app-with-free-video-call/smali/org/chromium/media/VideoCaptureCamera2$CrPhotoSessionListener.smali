.class Lorg/chromium/media/VideoCaptureCamera2$CrPhotoSessionListener;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "VideoCaptureCamera2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/VideoCaptureCamera2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CrPhotoSessionListener"
.end annotation


# instance fields
.field private final mCallbackId:J

.field private final mPhotoRequest:Landroid/hardware/camera2/CaptureRequest;

.field final synthetic this$0:Lorg/chromium/media/VideoCaptureCamera2;


# direct methods
.method constructor <init>(Lorg/chromium/media/VideoCaptureCamera2;Landroid/hardware/camera2/CaptureRequest;J)V
    .locals 1
    .param p2, "photoRequest"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "callbackId"    # J

    .prologue
    .line 143
    iput-object p1, p0, Lorg/chromium/media/VideoCaptureCamera2$CrPhotoSessionListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    .line 144
    iput-object p2, p0, Lorg/chromium/media/VideoCaptureCamera2$CrPhotoSessionListener;->mPhotoRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 145
    iput-wide p3, p0, Lorg/chromium/media/VideoCaptureCamera2$CrPhotoSessionListener;->mCallbackId:J

    .line 146
    return-void
.end method


# virtual methods
.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 4
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    .line 165
    const-string v0, "VideoCapture"

    const-string v1, "failed configuring capture session"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    iget-object v0, p0, Lorg/chromium/media/VideoCaptureCamera2$CrPhotoSessionListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    iget-wide v2, p0, Lorg/chromium/media/VideoCaptureCamera2$CrPhotoSessionListener;->mCallbackId:J

    invoke-static {v0, v2, v3}, Lorg/chromium/media/VideoCaptureCamera2;->access$600(Lorg/chromium/media/VideoCaptureCamera2;J)V

    .line 167
    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 4
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    .line 150
    const-string v1, "VideoCapture"

    const-string v2, "onConfigured"

    invoke-static {v1, v2}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :try_start_0
    iget-object v1, p0, Lorg/chromium/media/VideoCaptureCamera2$CrPhotoSessionListener;->mPhotoRequest:Landroid/hardware/camera2/CaptureRequest;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_0
    return-void

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    const-string v1, "VideoCapture"

    const-string v2, "capture() error"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    iget-object v1, p0, Lorg/chromium/media/VideoCaptureCamera2$CrPhotoSessionListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    iget-wide v2, p0, Lorg/chromium/media/VideoCaptureCamera2$CrPhotoSessionListener;->mCallbackId:J

    invoke-static {v1, v2, v3}, Lorg/chromium/media/VideoCaptureCamera2;->access$600(Lorg/chromium/media/VideoCaptureCamera2;J)V

    goto :goto_0
.end method
