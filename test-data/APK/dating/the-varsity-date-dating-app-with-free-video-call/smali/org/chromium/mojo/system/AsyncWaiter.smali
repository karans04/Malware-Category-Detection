.class public interface abstract Lorg/chromium/mojo/system/AsyncWaiter;
.super Ljava/lang/Object;
.source "AsyncWaiter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/mojo/system/AsyncWaiter$Callback;,
        Lorg/chromium/mojo/system/AsyncWaiter$Cancellable;
    }
.end annotation


# virtual methods
.method public abstract asyncWait(Lorg/chromium/mojo/system/Handle;Lorg/chromium/mojo/system/Core$HandleSignals;JLorg/chromium/mojo/system/AsyncWaiter$Callback;)Lorg/chromium/mojo/system/AsyncWaiter$Cancellable;
.end method
