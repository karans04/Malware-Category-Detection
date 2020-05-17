.class Lorg/chromium/mojo/system/impl/SharedBufferHandleImpl;
.super Lorg/chromium/mojo/system/impl/HandleBase;
.source "SharedBufferHandleImpl.java"

# interfaces
.implements Lorg/chromium/mojo/system/SharedBufferHandle;


# direct methods
.method constructor <init>(Lorg/chromium/mojo/system/impl/CoreImpl;I)V
    .locals 0
    .param p1, "core"    # Lorg/chromium/mojo/system/impl/CoreImpl;
    .param p2, "mojoHandle"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/system/impl/HandleBase;-><init>(Lorg/chromium/mojo/system/impl/CoreImpl;I)V

    .line 21
    return-void
.end method

.method constructor <init>(Lorg/chromium/mojo/system/impl/HandleBase;)V
    .locals 0
    .param p1, "handle"    # Lorg/chromium/mojo/system/impl/HandleBase;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lorg/chromium/mojo/system/impl/HandleBase;-><init>(Lorg/chromium/mojo/system/impl/HandleBase;)V

    .line 28
    return-void
.end method


# virtual methods
.method public duplicate(Lorg/chromium/mojo/system/SharedBufferHandle$DuplicateOptions;)Lorg/chromium/mojo/system/SharedBufferHandle;
    .locals 1
    .param p1, "options"    # Lorg/chromium/mojo/system/SharedBufferHandle$DuplicateOptions;

    .prologue
    .line 43
    iget-object v0, p0, Lorg/chromium/mojo/system/impl/SharedBufferHandleImpl;->mCore:Lorg/chromium/mojo/system/impl/CoreImpl;

    invoke-virtual {v0, p0, p1}, Lorg/chromium/mojo/system/impl/CoreImpl;->duplicate(Lorg/chromium/mojo/system/impl/SharedBufferHandleImpl;Lorg/chromium/mojo/system/SharedBufferHandle$DuplicateOptions;)Lorg/chromium/mojo/system/SharedBufferHandle;

    move-result-object v0

    return-object v0
.end method

.method public map(JJLorg/chromium/mojo/system/SharedBufferHandle$MapFlags;)Ljava/nio/ByteBuffer;
    .locals 7
    .param p1, "offset"    # J
    .param p3, "numBytes"    # J
    .param p5, "flags"    # Lorg/chromium/mojo/system/SharedBufferHandle$MapFlags;

    .prologue
    .line 51
    iget-object v0, p0, Lorg/chromium/mojo/system/impl/SharedBufferHandleImpl;->mCore:Lorg/chromium/mojo/system/impl/CoreImpl;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lorg/chromium/mojo/system/impl/CoreImpl;->map(Lorg/chromium/mojo/system/impl/SharedBufferHandleImpl;JJLorg/chromium/mojo/system/SharedBufferHandle$MapFlags;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic pass()Lorg/chromium/mojo/system/Handle;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lorg/chromium/mojo/system/impl/SharedBufferHandleImpl;->pass()Lorg/chromium/mojo/system/SharedBufferHandle;

    move-result-object v0

    return-object v0
.end method

.method public pass()Lorg/chromium/mojo/system/SharedBufferHandle;
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lorg/chromium/mojo/system/impl/SharedBufferHandleImpl;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/system/impl/SharedBufferHandleImpl;-><init>(Lorg/chromium/mojo/system/impl/HandleBase;)V

    return-object v0
.end method

.method public unmap(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/chromium/mojo/system/impl/SharedBufferHandleImpl;->mCore:Lorg/chromium/mojo/system/impl/CoreImpl;

    invoke-virtual {v0, p1}, Lorg/chromium/mojo/system/impl/CoreImpl;->unmap(Ljava/nio/ByteBuffer;)V

    .line 60
    return-void
.end method
