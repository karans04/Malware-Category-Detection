.class public interface abstract Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;
.super Ljava/lang/Object;
.source "DataPipe.java"

# interfaces
.implements Lorg/chromium/mojo/system/Handle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojo/system/DataPipe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConsumerHandle"
.end annotation


# virtual methods
.method public abstract beginReadData(ILorg/chromium/mojo/system/DataPipe$ReadFlags;)Ljava/nio/ByteBuffer;
.end method

.method public abstract discardData(ILorg/chromium/mojo/system/DataPipe$ReadFlags;)I
.end method

.method public abstract endReadData(I)V
.end method

.method public abstract pass()Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;
.end method

.method public abstract readData(Ljava/nio/ByteBuffer;Lorg/chromium/mojo/system/DataPipe$ReadFlags;)Lorg/chromium/mojo/system/ResultAnd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Lorg/chromium/mojo/system/DataPipe$ReadFlags;",
            ")",
            "Lorg/chromium/mojo/system/ResultAnd",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method
