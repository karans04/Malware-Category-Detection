.class Lorg/chromium/mojo/system/impl/DataPipeConsumerHandleImpl;
.super Lorg/chromium/mojo/system/impl/HandleBase;
.source "DataPipeConsumerHandleImpl.java"

# interfaces
.implements Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;


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
    .param p1, "other"    # Lorg/chromium/mojo/system/impl/HandleBase;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lorg/chromium/mojo/system/impl/HandleBase;-><init>(Lorg/chromium/mojo/system/impl/HandleBase;)V

    .line 30
    return-void
.end method


# virtual methods
.method public beginReadData(ILorg/chromium/mojo/system/DataPipe$ReadFlags;)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "numBytes"    # I
    .param p2, "flags"    # Lorg/chromium/mojo/system/DataPipe$ReadFlags;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/chromium/mojo/system/impl/DataPipeConsumerHandleImpl;->mCore:Lorg/chromium/mojo/system/impl/CoreImpl;

    invoke-virtual {v0, p0, p1, p2}, Lorg/chromium/mojo/system/impl/CoreImpl;->beginReadData(Lorg/chromium/mojo/system/impl/DataPipeConsumerHandleImpl;ILorg/chromium/mojo/system/DataPipe$ReadFlags;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public discardData(ILorg/chromium/mojo/system/DataPipe$ReadFlags;)I
    .locals 1
    .param p1, "numBytes"    # I
    .param p2, "flags"    # Lorg/chromium/mojo/system/DataPipe$ReadFlags;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/chromium/mojo/system/impl/DataPipeConsumerHandleImpl;->mCore:Lorg/chromium/mojo/system/impl/CoreImpl;

    invoke-virtual {v0, p0, p1, p2}, Lorg/chromium/mojo/system/impl/CoreImpl;->discardData(Lorg/chromium/mojo/system/impl/DataPipeConsumerHandleImpl;ILorg/chromium/mojo/system/DataPipe$ReadFlags;)I

    move-result v0

    return v0
.end method

.method public endReadData(I)V
    .locals 1
    .param p1, "numBytesRead"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lorg/chromium/mojo/system/impl/DataPipeConsumerHandleImpl;->mCore:Lorg/chromium/mojo/system/impl/CoreImpl;

    invoke-virtual {v0, p0, p1}, Lorg/chromium/mojo/system/impl/CoreImpl;->endReadData(Lorg/chromium/mojo/system/impl/DataPipeConsumerHandleImpl;I)V

    .line 70
    return-void
.end method

.method public pass()Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lorg/chromium/mojo/system/impl/DataPipeConsumerHandleImpl;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/system/impl/DataPipeConsumerHandleImpl;-><init>(Lorg/chromium/mojo/system/impl/HandleBase;)V

    return-object v0
.end method

.method public bridge synthetic pass()Lorg/chromium/mojo/system/Handle;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lorg/chromium/mojo/system/impl/DataPipeConsumerHandleImpl;->pass()Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    move-result-object v0

    return-object v0
.end method

.method public readData(Ljava/nio/ByteBuffer;Lorg/chromium/mojo/system/DataPipe$ReadFlags;)Lorg/chromium/mojo/system/ResultAnd;
    .locals 1
    .param p1, "elements"    # Ljava/nio/ByteBuffer;
    .param p2, "flags"    # Lorg/chromium/mojo/system/DataPipe$ReadFlags;
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

    .prologue
    .line 53
    iget-object v0, p0, Lorg/chromium/mojo/system/impl/DataPipeConsumerHandleImpl;->mCore:Lorg/chromium/mojo/system/impl/CoreImpl;

    invoke-virtual {v0, p0, p1, p2}, Lorg/chromium/mojo/system/impl/CoreImpl;->readData(Lorg/chromium/mojo/system/impl/DataPipeConsumerHandleImpl;Ljava/nio/ByteBuffer;Lorg/chromium/mojo/system/DataPipe$ReadFlags;)Lorg/chromium/mojo/system/ResultAnd;

    move-result-object v0

    return-object v0
.end method
