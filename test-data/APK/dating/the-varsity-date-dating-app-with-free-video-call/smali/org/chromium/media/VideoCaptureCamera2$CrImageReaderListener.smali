.class Lorg/chromium/media/VideoCaptureCamera2$CrImageReaderListener;
.super Ljava/lang/Object;
.source "VideoCaptureCamera2.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/VideoCaptureCamera2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CrImageReaderListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/media/VideoCaptureCamera2;


# direct methods
.method private constructor <init>(Lorg/chromium/media/VideoCaptureCamera2;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lorg/chromium/media/VideoCaptureCamera2$CrImageReaderListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/media/VideoCaptureCamera2;Lorg/chromium/media/VideoCaptureCamera2$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/chromium/media/VideoCaptureCamera2;
    .param p2, "x1"    # Lorg/chromium/media/VideoCaptureCamera2$1;

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lorg/chromium/media/VideoCaptureCamera2$CrImageReaderListener;-><init>(Lorg/chromium/media/VideoCaptureCamera2;)V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 11
    .param p1, "reader"    # Landroid/media/ImageReader;

    .prologue
    .line 111
    :try_start_0
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .local v7, "image":Landroid/media/Image;
    const/4 v9, 0x0

    .line 112
    if-nez v7, :cond_2

    .line 132
    if-eqz v7, :cond_0

    if-eqz v9, :cond_1

    :try_start_1
    invoke-virtual {v7}, Landroid/media/Image;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 135
    .end local v7    # "image":Landroid/media/Image;
    :cond_0
    :goto_0
    return-void

    .line 132
    .restart local v7    # "image":Landroid/media/Image;
    :catch_0
    move-exception v8

    .local v8, "x2":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v9, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .end local v7    # "image":Landroid/media/Image;
    .end local v8    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 133
    .local v0, "ex":Ljava/lang/IllegalStateException;
    const-string v1, "VideoCapture"

    const-string v2, "acquireLatestImage():"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 132
    .end local v0    # "ex":Ljava/lang/IllegalStateException;
    .restart local v7    # "image":Landroid/media/Image;
    :cond_1
    :try_start_3
    invoke-virtual {v7}, Landroid/media/Image;->close()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 114
    :cond_2
    :try_start_4
    invoke-virtual {v7}, Landroid/media/Image;->getFormat()I

    move-result v1

    const/16 v2, 0x23

    if-ne v1, v2, :cond_3

    invoke-virtual {v7}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    .line 115
    :cond_3
    iget-object v1, p0, Lorg/chromium/media/VideoCaptureCamera2$CrImageReaderListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    iget-object v2, p0, Lorg/chromium/media/VideoCaptureCamera2$CrImageReaderListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    iget-wide v2, v2, Lorg/chromium/media/VideoCaptureCamera2;->mNativeVideoCaptureDeviceAndroid:J

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected image format: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v7}, Landroid/media/Image;->getFormat()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " or #planes: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v7}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/chromium/media/VideoCaptureCamera2;->nativeOnError(JLjava/lang/String;)V

    .line 117
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 111
    :catch_2
    move-exception v1

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 132
    :catchall_0
    move-exception v2

    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    :goto_1
    if-eqz v7, :cond_4

    if-eqz v2, :cond_9

    :try_start_6
    invoke-virtual {v7}, Landroid/media/Image;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_4
    :goto_2
    :try_start_7
    throw v1
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_1

    .line 120
    :cond_5
    :try_start_8
    invoke-virtual {p1}, Landroid/media/ImageReader;->getWidth()I

    move-result v1

    invoke-virtual {v7}, Landroid/media/Image;->getWidth()I

    move-result v2

    if-ne v1, v2, :cond_6

    invoke-virtual {p1}, Landroid/media/ImageReader;->getHeight()I

    move-result v1

    invoke-virtual {v7}, Landroid/media/Image;->getHeight()I

    move-result v2

    if-eq v1, v2, :cond_7

    .line 122
    :cond_6
    iget-object v1, p0, Lorg/chromium/media/VideoCaptureCamera2$CrImageReaderListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    iget-object v2, p0, Lorg/chromium/media/VideoCaptureCamera2$CrImageReaderListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    iget-wide v2, v2, Lorg/chromium/media/VideoCaptureCamera2;->mNativeVideoCaptureDeviceAndroid:J

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ImageReader size ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/media/ImageReader;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/media/ImageReader;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") did not match Image size ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v7}, Landroid/media/Image;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v7}, Landroid/media/Image;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/chromium/media/VideoCaptureCamera2;->nativeOnError(JLjava/lang/String;)V

    .line 126
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 132
    :catchall_1
    move-exception v1

    move-object v2, v9

    goto :goto_1

    .line 129
    :cond_7
    iget-object v1, p0, Lorg/chromium/media/VideoCaptureCamera2$CrImageReaderListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v1}, Lorg/chromium/media/VideoCaptureCamera2;->access$400(Lorg/chromium/media/VideoCaptureCamera2;)[B

    move-result-object v1

    invoke-static {v7, v1}, Lorg/chromium/media/VideoCaptureCamera2;->access$500(Landroid/media/Image;[B)V

    .line 130
    iget-object v1, p0, Lorg/chromium/media/VideoCaptureCamera2$CrImageReaderListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    iget-object v2, p0, Lorg/chromium/media/VideoCaptureCamera2$CrImageReaderListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    iget-wide v2, v2, Lorg/chromium/media/VideoCaptureCamera2;->mNativeVideoCaptureDeviceAndroid:J

    iget-object v4, p0, Lorg/chromium/media/VideoCaptureCamera2$CrImageReaderListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v4}, Lorg/chromium/media/VideoCaptureCamera2;->access$400(Lorg/chromium/media/VideoCaptureCamera2;)[B

    move-result-object v4

    iget-object v5, p0, Lorg/chromium/media/VideoCaptureCamera2$CrImageReaderListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v5}, Lorg/chromium/media/VideoCaptureCamera2;->access$400(Lorg/chromium/media/VideoCaptureCamera2;)[B

    move-result-object v5

    array-length v5, v5

    iget-object v6, p0, Lorg/chromium/media/VideoCaptureCamera2$CrImageReaderListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-virtual {v6}, Lorg/chromium/media/VideoCaptureCamera2;->getCameraRotation()I

    move-result v6

    invoke-virtual/range {v1 .. v6}, Lorg/chromium/media/VideoCaptureCamera2;->nativeOnFrameAvailable(J[BII)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 132
    if-eqz v7, :cond_0

    if-eqz v9, :cond_8

    :try_start_9
    invoke-virtual {v7}, Landroid/media/Image;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_0

    :catch_3
    move-exception v8

    .restart local v8    # "x2":Ljava/lang/Throwable;
    :try_start_a
    invoke-virtual {v9, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .end local v8    # "x2":Ljava/lang/Throwable;
    :cond_8
    invoke-virtual {v7}, Landroid/media/Image;->close()V

    goto/16 :goto_0

    :catch_4
    move-exception v8

    .restart local v8    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v2, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .end local v8    # "x2":Ljava/lang/Throwable;
    :cond_9
    invoke-virtual {v7}, Landroid/media/Image;->close()V
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_2
.end method
