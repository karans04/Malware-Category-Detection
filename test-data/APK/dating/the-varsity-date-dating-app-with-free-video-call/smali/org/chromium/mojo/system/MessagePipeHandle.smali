.class public interface abstract Lorg/chromium/mojo/system/MessagePipeHandle;
.super Ljava/lang/Object;
.source "MessagePipeHandle.java"

# interfaces
.implements Lorg/chromium/mojo/system/Handle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;,
        Lorg/chromium/mojo/system/MessagePipeHandle$ReadFlags;,
        Lorg/chromium/mojo/system/MessagePipeHandle$WriteFlags;,
        Lorg/chromium/mojo/system/MessagePipeHandle$CreateOptions;,
        Lorg/chromium/mojo/system/MessagePipeHandle$CreateFlags;
    }
.end annotation


# virtual methods
.method public abstract pass()Lorg/chromium/mojo/system/MessagePipeHandle;
.end method

.method public abstract readMessage(Ljava/nio/ByteBuffer;ILorg/chromium/mojo/system/MessagePipeHandle$ReadFlags;)Lorg/chromium/mojo/system/ResultAnd;
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
.end method

.method public abstract writeMessage(Ljava/nio/ByteBuffer;Ljava/util/List;Lorg/chromium/mojo/system/MessagePipeHandle$WriteFlags;)V
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
.end method
