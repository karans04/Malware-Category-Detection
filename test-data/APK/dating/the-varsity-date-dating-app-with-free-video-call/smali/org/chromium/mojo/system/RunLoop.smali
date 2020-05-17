.class public interface abstract Lorg/chromium/mojo/system/RunLoop;
.super Ljava/lang/Object;
.source "RunLoop.java"

# interfaces
.implements Ljava/io/Closeable;


# virtual methods
.method public abstract close()V
.end method

.method public abstract postDelayedTask(Ljava/lang/Runnable;J)V
.end method

.method public abstract quit()V
.end method

.method public abstract run()V
.end method

.method public abstract runUntilIdle()V
.end method
