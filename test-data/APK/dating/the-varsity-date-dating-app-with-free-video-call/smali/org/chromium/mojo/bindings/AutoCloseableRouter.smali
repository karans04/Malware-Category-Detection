.class Lorg/chromium/mojo/bindings/AutoCloseableRouter;
.super Ljava/lang/Object;
.source "AutoCloseableRouter.java"

# interfaces
.implements Lorg/chromium/mojo/bindings/Router;


# instance fields
.field private mClosed:Z

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mRouter:Lorg/chromium/mojo/bindings/Router;


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Router;)V
    .locals 1
    .param p1, "core"    # Lorg/chromium/mojo/system/Core;
    .param p2, "router"    # Lorg/chromium/mojo/bindings/Router;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p2, p0, Lorg/chromium/mojo/bindings/AutoCloseableRouter;->mRouter:Lorg/chromium/mojo/bindings/Router;

    .line 37
    invoke-static {p1}, Lorg/chromium/mojo/bindings/ExecutorFactory;->getExecutorForCurrentThread(Lorg/chromium/mojo/system/Core;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/mojo/bindings/AutoCloseableRouter;->mExecutor:Ljava/util/concurrent/Executor;

    .line 38
    return-void
.end method


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 1
    .param p1, "message"    # Lorg/chromium/mojo/bindings/Message;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/chromium/mojo/bindings/AutoCloseableRouter;->mRouter:Lorg/chromium/mojo/bindings/Router;

    invoke-interface {v0, p1}, Lorg/chromium/mojo/bindings/Router;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    move-result v0

    return v0
.end method

.method public acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z
    .locals 1
    .param p1, "message"    # Lorg/chromium/mojo/bindings/Message;
    .param p2, "responder"    # Lorg/chromium/mojo/bindings/MessageReceiver;

    .prologue
    .line 69
    iget-object v0, p0, Lorg/chromium/mojo/bindings/AutoCloseableRouter;->mRouter:Lorg/chromium/mojo/bindings/Router;

    invoke-interface {v0, p1, p2}, Lorg/chromium/mojo/bindings/Router;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/chromium/mojo/bindings/AutoCloseableRouter;->mRouter:Lorg/chromium/mojo/bindings/Router;

    invoke-interface {v0}, Lorg/chromium/mojo/bindings/Router;->close()V

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/mojo/bindings/AutoCloseableRouter;->mClosed:Z

    .line 96
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 103
    iget-boolean v0, p0, Lorg/chromium/mojo/bindings/AutoCloseableRouter;->mClosed:Z

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lorg/chromium/mojo/bindings/AutoCloseableRouter;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lorg/chromium/mojo/bindings/AutoCloseableRouter$1;

    invoke-direct {v1, p0}, Lorg/chromium/mojo/bindings/AutoCloseableRouter$1;-><init>(Lorg/chromium/mojo/bindings/AutoCloseableRouter;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 111
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Warning: Router objects should be explicitly closed when no longer required otherwise you may leak handles."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 115
    return-void
.end method

.method public bridge synthetic passHandle()Lorg/chromium/mojo/system/Handle;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/AutoCloseableRouter;->passHandle()Lorg/chromium/mojo/system/MessagePipeHandle;

    move-result-object v0

    return-object v0
.end method

.method public passHandle()Lorg/chromium/mojo/system/MessagePipeHandle;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/chromium/mojo/bindings/AutoCloseableRouter;->mRouter:Lorg/chromium/mojo/bindings/Router;

    invoke-interface {v0}, Lorg/chromium/mojo/bindings/Router;->passHandle()Lorg/chromium/mojo/system/Handle;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojo/system/MessagePipeHandle;

    return-object v0
.end method

.method public setErrorHandler(Lorg/chromium/mojo/bindings/ConnectionErrorHandler;)V
    .locals 1
    .param p1, "errorHandler"    # Lorg/chromium/mojo/bindings/ConnectionErrorHandler;

    .prologue
    .line 86
    iget-object v0, p0, Lorg/chromium/mojo/bindings/AutoCloseableRouter;->mRouter:Lorg/chromium/mojo/bindings/Router;

    invoke-interface {v0, p1}, Lorg/chromium/mojo/bindings/Router;->setErrorHandler(Lorg/chromium/mojo/bindings/ConnectionErrorHandler;)V

    .line 87
    return-void
.end method

.method public setIncomingMessageReceiver(Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V
    .locals 1
    .param p1, "incomingMessageReceiver"    # Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/chromium/mojo/bindings/AutoCloseableRouter;->mRouter:Lorg/chromium/mojo/bindings/Router;

    invoke-interface {v0, p1}, Lorg/chromium/mojo/bindings/Router;->setIncomingMessageReceiver(Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V

    .line 46
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/chromium/mojo/bindings/AutoCloseableRouter;->mRouter:Lorg/chromium/mojo/bindings/Router;

    invoke-interface {v0}, Lorg/chromium/mojo/bindings/Router;->start()V

    .line 79
    return-void
.end method
