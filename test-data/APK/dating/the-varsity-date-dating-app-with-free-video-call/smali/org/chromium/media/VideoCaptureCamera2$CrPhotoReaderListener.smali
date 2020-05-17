.class Lorg/chromium/media/VideoCaptureCamera2$CrPhotoReaderListener;
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
    name = "CrPhotoReaderListener"
.end annotation


# instance fields
.field private final mCallbackId:J

.field final synthetic this$0:Lorg/chromium/media/VideoCaptureCamera2;


# direct methods
.method constructor <init>(Lorg/chromium/media/VideoCaptureCamera2;J)V
    .locals 0
    .param p2, "callbackId"    # J

    .prologue
    .line 175
    iput-object p1, p0, Lorg/chromium/media/VideoCaptureCamera2$CrPhotoReaderListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-wide p2, p0, Lorg/chromium/media/VideoCaptureCamera2$CrPhotoReaderListener;->mCallbackId:J

    .line 177
    return-void
.end method

.method private readCapturedData(Landroid/media/Image;)[B
    .locals 6
    .param p1, "image"    # Landroid/media/Image;

    .prologue
    .line 180
    const/4 v1, 0x0

    .line 182
    .local v1, "capturedData":[B
    :try_start_0
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    move-object v2, v1

    .line 189
    .end local v1    # "capturedData":[B
    .local v2, "capturedData":[B
    :goto_0
    return-object v2

    .line 183
    .end local v2    # "capturedData":[B
    .restart local v1    # "capturedData":[B
    :catch_0
    move-exception v3

    .line 185
    .local v3, "ex":Ljava/lang/UnsupportedOperationException;
    :try_start_1
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 186
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    new-array v1, v4, [B

    .line 187
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v1

    .line 189
    .end local v1    # "capturedData":[B
    .restart local v2    # "capturedData":[B
    goto :goto_0

    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "capturedData":[B
    .end local v3    # "ex":Ljava/lang/UnsupportedOperationException;
    .restart local v1    # "capturedData":[B
    :catchall_0
    move-exception v4

    move-object v2, v1

    .end local v1    # "capturedData":[B
    .restart local v2    # "capturedData":[B
    goto :goto_0
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 11
    .param p1, "reader"    # Landroid/media/ImageReader;

    .prologue
    .line 195
    const-string v1, "VideoCapture"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CrPhotoReaderListener.mCallbackId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lorg/chromium/media/VideoCaptureCamera2$CrPhotoReaderListener;->mCallbackId:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :try_start_0
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .local v7, "image":Landroid/media/Image;
    const/4 v9, 0x0

    .line 197
    if-nez v7, :cond_2

    .line 198
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 196
    :catch_0
    move-exception v1

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 209
    :catchall_0
    move-exception v2

    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    :goto_0
    if-eqz v7, :cond_0

    if-eqz v2, :cond_6

    :try_start_3
    invoke-virtual {v7}, Landroid/media/Image;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_0
    :goto_1
    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1

    .end local v7    # "image":Landroid/media/Image;
    :catch_1
    move-exception v0

    .line 210
    .local v0, "ex":Ljava/lang/IllegalStateException;
    iget-object v1, p0, Lorg/chromium/media/VideoCaptureCamera2$CrPhotoReaderListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    iget-wide v2, p0, Lorg/chromium/media/VideoCaptureCamera2$CrPhotoReaderListener;->mCallbackId:J

    invoke-static {v1, v2, v3}, Lorg/chromium/media/VideoCaptureCamera2;->access$600(Lorg/chromium/media/VideoCaptureCamera2;J)V

    .line 217
    .end local v0    # "ex":Ljava/lang/IllegalStateException;
    :cond_1
    :goto_2
    return-void

    .line 201
    .restart local v7    # "image":Landroid/media/Image;
    :cond_2
    :try_start_5
    invoke-virtual {v7}, Landroid/media/Image;->getFormat()I

    move-result v1

    const/16 v2, 0x100

    if-eq v1, v2, :cond_3

    .line 202
    const-string v1, "VideoCapture"

    const-string v2, "Unexpected image format: %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v7}, Landroid/media/Image;->getFormat()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 209
    :catchall_1
    move-exception v1

    move-object v2, v9

    goto :goto_0

    .line 206
    :cond_3
    invoke-direct {p0, v7}, Lorg/chromium/media/VideoCaptureCamera2$CrPhotoReaderListener;->readCapturedData(Landroid/media/Image;)[B

    move-result-object v6

    .line 207
    .local v6, "capturedData":[B
    iget-object v1, p0, Lorg/chromium/media/VideoCaptureCamera2$CrPhotoReaderListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    iget-object v2, p0, Lorg/chromium/media/VideoCaptureCamera2$CrPhotoReaderListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    iget-wide v2, v2, Lorg/chromium/media/VideoCaptureCamera2;->mNativeVideoCaptureDeviceAndroid:J

    iget-wide v4, p0, Lorg/chromium/media/VideoCaptureCamera2$CrPhotoReaderListener;->mCallbackId:J

    invoke-virtual/range {v1 .. v6}, Lorg/chromium/media/VideoCaptureCamera2;->nativeOnPhotoTaken(JJ[B)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 209
    if-eqz v7, :cond_4

    if-eqz v9, :cond_5

    :try_start_6
    invoke-virtual {v7}, Landroid/media/Image;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_1

    .line 214
    :cond_4
    :goto_3
    iget-object v1, p0, Lorg/chromium/media/VideoCaptureCamera2$CrPhotoReaderListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v1}, Lorg/chromium/media/VideoCaptureCamera2;->access$200(Lorg/chromium/media/VideoCaptureCamera2;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 216
    iget-object v1, p0, Lorg/chromium/media/VideoCaptureCamera2$CrPhotoReaderListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    iget-object v2, p0, Lorg/chromium/media/VideoCaptureCamera2$CrPhotoReaderListener;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    iget-wide v2, v2, Lorg/chromium/media/VideoCaptureCamera2;->mNativeVideoCaptureDeviceAndroid:J

    const-string v4, "Error restarting preview"

    invoke-virtual {v1, v2, v3, v4}, Lorg/chromium/media/VideoCaptureCamera2;->nativeOnError(JLjava/lang/String;)V

    goto :goto_2

    .line 209
    :catch_2
    move-exception v8

    .local v8, "x2":Ljava/lang/Throwable;
    :try_start_7
    invoke-virtual {v9, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v8    # "x2":Ljava/lang/Throwable;
    :cond_5
    invoke-virtual {v7}, Landroid/media/Image;->close()V

    goto :goto_3

    .end local v6    # "capturedData":[B
    :catch_3
    move-exception v8

    .restart local v8    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v2, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    .end local v8    # "x2":Ljava/lang/Throwable;
    :cond_6
    invoke-virtual {v7}, Landroid/media/Image;->close()V
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1
.end method
