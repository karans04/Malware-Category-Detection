.class public Lorg/chromium/mojo/system/InvalidHandle;
.super Ljava/lang/Object;
.source "InvalidHandle.java"

# interfaces
.implements Lorg/chromium/mojo/system/UntypedHandle;
.implements Lorg/chromium/mojo/system/MessagePipeHandle;
.implements Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;
.implements Lorg/chromium/mojo/system/DataPipe$ProducerHandle;
.implements Lorg/chromium/mojo/system/SharedBufferHandle;


# static fields
.field public static final INSTANCE:Lorg/chromium/mojo/system/InvalidHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lorg/chromium/mojo/system/InvalidHandle;

    invoke-direct {v0}, Lorg/chromium/mojo/system/InvalidHandle;-><init>()V

    sput-object v0, Lorg/chromium/mojo/system/InvalidHandle;->INSTANCE:Lorg/chromium/mojo/system/InvalidHandle;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method


# virtual methods
.method public beginReadData(ILorg/chromium/mojo/system/DataPipe$ReadFlags;)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "numBytes"    # I
    .param p2, "flags"    # Lorg/chromium/mojo/system/DataPipe$ReadFlags;

    .prologue
    .line 191
    new-instance v0, Lorg/chromium/mojo/system/MojoException;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/chromium/mojo/system/MojoException;-><init>(I)V

    throw v0
.end method

.method public beginWriteData(ILorg/chromium/mojo/system/DataPipe$WriteFlags;)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "numBytes"    # I
    .param p2, "flags"    # Lorg/chromium/mojo/system/DataPipe$WriteFlags;

    .prologue
    .line 158
    new-instance v0, Lorg/chromium/mojo/system/MojoException;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/chromium/mojo/system/MojoException;-><init>(I)V

    throw v0
.end method

.method public close()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.method public discardData(ILorg/chromium/mojo/system/DataPipe$ReadFlags;)I
    .locals 2
    .param p1, "numBytes"    # I
    .param p2, "flags"    # Lorg/chromium/mojo/system/DataPipe$ReadFlags;

    .prologue
    .line 174
    new-instance v0, Lorg/chromium/mojo/system/MojoException;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/chromium/mojo/system/MojoException;-><init>(I)V

    throw v0
.end method

.method public duplicate(Lorg/chromium/mojo/system/SharedBufferHandle$DuplicateOptions;)Lorg/chromium/mojo/system/SharedBufferHandle;
    .locals 2
    .param p1, "options"    # Lorg/chromium/mojo/system/SharedBufferHandle$DuplicateOptions;

    .prologue
    .line 125
    new-instance v0, Lorg/chromium/mojo/system/MojoException;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/chromium/mojo/system/MojoException;-><init>(I)V

    throw v0
.end method

.method public endReadData(I)V
    .locals 2
    .param p1, "numBytesRead"    # I

    .prologue
    .line 199
    new-instance v0, Lorg/chromium/mojo/system/MojoException;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/chromium/mojo/system/MojoException;-><init>(I)V

    throw v0
.end method

.method public endWriteData(I)V
    .locals 2
    .param p1, "numBytesWritten"    # I

    .prologue
    .line 166
    new-instance v0, Lorg/chromium/mojo/system/MojoException;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/chromium/mojo/system/MojoException;-><init>(I)V

    throw v0
.end method

.method public getCore()Lorg/chromium/mojo/system/Core;
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public map(JJLorg/chromium/mojo/system/SharedBufferHandle$MapFlags;)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "offset"    # J
    .param p3, "numBytes"    # J
    .param p5, "flags"    # Lorg/chromium/mojo/system/SharedBufferHandle$MapFlags;

    .prologue
    .line 133
    new-instance v0, Lorg/chromium/mojo/system/MojoException;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/chromium/mojo/system/MojoException;-><init>(I)V

    throw v0
.end method

.method public bridge synthetic pass()Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lorg/chromium/mojo/system/InvalidHandle;->pass()Lorg/chromium/mojo/system/InvalidHandle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic pass()Lorg/chromium/mojo/system/DataPipe$ProducerHandle;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lorg/chromium/mojo/system/InvalidHandle;->pass()Lorg/chromium/mojo/system/InvalidHandle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic pass()Lorg/chromium/mojo/system/Handle;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lorg/chromium/mojo/system/InvalidHandle;->pass()Lorg/chromium/mojo/system/InvalidHandle;

    move-result-object v0

    return-object v0
.end method

.method public pass()Lorg/chromium/mojo/system/InvalidHandle;
    .locals 0

    .prologue
    .line 69
    return-object p0
.end method

.method public bridge synthetic pass()Lorg/chromium/mojo/system/MessagePipeHandle;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lorg/chromium/mojo/system/InvalidHandle;->pass()Lorg/chromium/mojo/system/InvalidHandle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic pass()Lorg/chromium/mojo/system/SharedBufferHandle;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lorg/chromium/mojo/system/InvalidHandle;->pass()Lorg/chromium/mojo/system/InvalidHandle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic pass()Lorg/chromium/mojo/system/UntypedHandle;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lorg/chromium/mojo/system/InvalidHandle;->pass()Lorg/chromium/mojo/system/InvalidHandle;

    move-result-object v0

    return-object v0
.end method

.method public readData(Ljava/nio/ByteBuffer;Lorg/chromium/mojo/system/DataPipe$ReadFlags;)Lorg/chromium/mojo/system/ResultAnd;
    .locals 2
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
    .line 182
    new-instance v0, Lorg/chromium/mojo/system/MojoException;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/chromium/mojo/system/MojoException;-><init>(I)V

    throw v0
.end method

.method public readMessage(Ljava/nio/ByteBuffer;ILorg/chromium/mojo/system/MessagePipeHandle$ReadFlags;)Lorg/chromium/mojo/system/ResultAnd;
    .locals 2
    .param p1, "bytes"    # Ljava/nio/ByteBuffer;
    .param p2, "maxNumberOfHandles"    # I
    .param p3, "flags"    # Lorg/chromium/mojo/system/MessagePipeHandle$ReadFlags;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "I",
            "Lorg/chromium/mojo/system/MessagePipeHandle$ReadFlags;",
            ")",
            "Lorg/chromium/mojo/system/ResultAnd",
            "<",
            "Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    new-instance v0, Lorg/chromium/mojo/system/MojoException;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/chromium/mojo/system/MojoException;-><init>(I)V

    throw v0
.end method

.method public releaseNativeHandle()I
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public toDataPipeConsumerHandle()Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;
    .locals 0

    .prologue
    .line 101
    return-object p0
.end method

.method public toDataPipeProducerHandle()Lorg/chromium/mojo/system/DataPipe$ProducerHandle;
    .locals 0

    .prologue
    .line 109
    return-object p0
.end method

.method public toMessagePipeHandle()Lorg/chromium/mojo/system/MessagePipeHandle;
    .locals 0

    .prologue
    .line 93
    return-object p0
.end method

.method public toSharedBufferHandle()Lorg/chromium/mojo/system/SharedBufferHandle;
    .locals 0

    .prologue
    .line 117
    return-object p0
.end method

.method public toUntypedHandle()Lorg/chromium/mojo/system/UntypedHandle;
    .locals 0

    .prologue
    .line 77
    return-object p0
.end method

.method public unmap(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 141
    new-instance v0, Lorg/chromium/mojo/system/MojoException;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/chromium/mojo/system/MojoException;-><init>(I)V

    throw v0
.end method

.method public wait(Lorg/chromium/mojo/system/Core$HandleSignals;J)Lorg/chromium/mojo/system/Core$WaitResult;
    .locals 2
    .param p1, "signals"    # Lorg/chromium/mojo/system/Core$HandleSignals;
    .param p2, "deadline"    # J

    .prologue
    .line 45
    new-instance v0, Lorg/chromium/mojo/system/MojoException;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/chromium/mojo/system/MojoException;-><init>(I)V

    throw v0
.end method

.method public writeData(Ljava/nio/ByteBuffer;Lorg/chromium/mojo/system/DataPipe$WriteFlags;)Lorg/chromium/mojo/system/ResultAnd;
    .locals 2
    .param p1, "elements"    # Ljava/nio/ByteBuffer;
    .param p2, "flags"    # Lorg/chromium/mojo/system/DataPipe$WriteFlags;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Lorg/chromium/mojo/system/DataPipe$WriteFlags;",
            ")",
            "Lorg/chromium/mojo/system/ResultAnd",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    new-instance v0, Lorg/chromium/mojo/system/MojoException;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/chromium/mojo/system/MojoException;-><init>(I)V

    throw v0
.end method

.method public writeMessage(Ljava/nio/ByteBuffer;Ljava/util/List;Lorg/chromium/mojo/system/MessagePipeHandle$WriteFlags;)V
    .locals 2
    .param p1, "bytes"    # Ljava/nio/ByteBuffer;
    .param p3, "flags"    # Lorg/chromium/mojo/system/MessagePipeHandle$WriteFlags;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/List",
            "<+",
            "Lorg/chromium/mojo/system/Handle;",
            ">;",
            "Lorg/chromium/mojo/system/MessagePipeHandle$WriteFlags;",
            ")V"
        }
    .end annotation

    .prologue
    .line 208
    .local p2, "handles":Ljava/util/List;, "Ljava/util/List<+Lorg/chromium/mojo/system/Handle;>;"
    new-instance v0, Lorg/chromium/mojo/system/MojoException;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/chromium/mojo/system/MojoException;-><init>(I)V

    throw v0
.end method
