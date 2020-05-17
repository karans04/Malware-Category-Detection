.class public interface abstract Lorg/chromium/mojo/system/Handle;
.super Ljava/lang/Object;
.source "Handle.java"

# interfaces
.implements Ljava/io/Closeable;


# virtual methods
.method public abstract close()V
.end method

.method public abstract getCore()Lorg/chromium/mojo/system/Core;
.end method

.method public abstract isValid()Z
.end method

.method public abstract pass()Lorg/chromium/mojo/system/Handle;
.end method

.method public abstract releaseNativeHandle()I
.end method

.method public abstract toUntypedHandle()Lorg/chromium/mojo/system/UntypedHandle;
.end method

.method public abstract wait(Lorg/chromium/mojo/system/Core$HandleSignals;J)Lorg/chromium/mojo/system/Core$WaitResult;
.end method
