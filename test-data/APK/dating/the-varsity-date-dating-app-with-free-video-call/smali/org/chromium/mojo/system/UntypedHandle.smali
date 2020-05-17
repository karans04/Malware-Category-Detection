.class public interface abstract Lorg/chromium/mojo/system/UntypedHandle;
.super Ljava/lang/Object;
.source "UntypedHandle.java"

# interfaces
.implements Lorg/chromium/mojo/system/Handle;


# virtual methods
.method public abstract pass()Lorg/chromium/mojo/system/UntypedHandle;
.end method

.method public abstract toDataPipeConsumerHandle()Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;
.end method

.method public abstract toDataPipeProducerHandle()Lorg/chromium/mojo/system/DataPipe$ProducerHandle;
.end method

.method public abstract toMessagePipeHandle()Lorg/chromium/mojo/system/MessagePipeHandle;
.end method

.method public abstract toSharedBufferHandle()Lorg/chromium/mojo/system/SharedBufferHandle;
.end method
