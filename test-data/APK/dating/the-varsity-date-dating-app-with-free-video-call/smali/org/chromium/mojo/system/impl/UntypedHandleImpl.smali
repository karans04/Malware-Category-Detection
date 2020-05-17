.class Lorg/chromium/mojo/system/impl/UntypedHandleImpl;
.super Lorg/chromium/mojo/system/impl/HandleBase;
.source "UntypedHandleImpl.java"

# interfaces
.implements Lorg/chromium/mojo/system/UntypedHandle;


# direct methods
.method constructor <init>(Lorg/chromium/mojo/system/impl/CoreImpl;I)V
    .locals 0
    .param p1, "core"    # Lorg/chromium/mojo/system/impl/CoreImpl;
    .param p2, "mojoHandle"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/system/impl/HandleBase;-><init>(Lorg/chromium/mojo/system/impl/CoreImpl;I)V

    .line 23
    return-void
.end method

.method constructor <init>(Lorg/chromium/mojo/system/impl/HandleBase;)V
    .locals 0
    .param p1, "handle"    # Lorg/chromium/mojo/system/impl/HandleBase;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lorg/chromium/mojo/system/impl/HandleBase;-><init>(Lorg/chromium/mojo/system/impl/HandleBase;)V

    .line 30
    return-void
.end method


# virtual methods
.method public bridge synthetic pass()Lorg/chromium/mojo/system/Handle;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lorg/chromium/mojo/system/impl/UntypedHandleImpl;->pass()Lorg/chromium/mojo/system/UntypedHandle;

    move-result-object v0

    return-object v0
.end method

.method public pass()Lorg/chromium/mojo/system/UntypedHandle;
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lorg/chromium/mojo/system/impl/UntypedHandleImpl;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/system/impl/UntypedHandleImpl;-><init>(Lorg/chromium/mojo/system/impl/HandleBase;)V

    return-object v0
.end method

.method public toDataPipeConsumerHandle()Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lorg/chromium/mojo/system/impl/DataPipeConsumerHandleImpl;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/system/impl/DataPipeConsumerHandleImpl;-><init>(Lorg/chromium/mojo/system/impl/HandleBase;)V

    return-object v0
.end method

.method public toDataPipeProducerHandle()Lorg/chromium/mojo/system/DataPipe$ProducerHandle;
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lorg/chromium/mojo/system/impl/DataPipeProducerHandleImpl;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/system/impl/DataPipeProducerHandleImpl;-><init>(Lorg/chromium/mojo/system/impl/HandleBase;)V

    return-object v0
.end method

.method public toMessagePipeHandle()Lorg/chromium/mojo/system/MessagePipeHandle;
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lorg/chromium/mojo/system/impl/MessagePipeHandleImpl;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/system/impl/MessagePipeHandleImpl;-><init>(Lorg/chromium/mojo/system/impl/HandleBase;)V

    return-object v0
.end method

.method public toSharedBufferHandle()Lorg/chromium/mojo/system/SharedBufferHandle;
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lorg/chromium/mojo/system/impl/SharedBufferHandleImpl;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/system/impl/SharedBufferHandleImpl;-><init>(Lorg/chromium/mojo/system/impl/HandleBase;)V

    return-object v0
.end method
