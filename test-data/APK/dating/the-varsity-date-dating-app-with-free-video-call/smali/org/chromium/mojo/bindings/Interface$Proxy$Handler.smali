.class public interface abstract Lorg/chromium/mojo/bindings/Interface$Proxy$Handler;
.super Ljava/lang/Object;
.source "Interface.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojo/bindings/Interface$Proxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Handler"
.end annotation


# virtual methods
.method public abstract getVersion()I
.end method

.method public abstract passHandle()Lorg/chromium/mojo/system/MessagePipeHandle;
.end method

.method public abstract queryVersion(Lorg/chromium/mojo/bindings/Callbacks$Callback1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/Callbacks$Callback1",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract requireVersion(I)V
.end method

.method public abstract setErrorHandler(Lorg/chromium/mojo/bindings/ConnectionErrorHandler;)V
.end method
