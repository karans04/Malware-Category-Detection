.class Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;
.super Ljava/lang/Object;
.source "ExecutorFactory.java"

# interfaces
.implements Ljava/util/concurrent/Executor;
.implements Lorg/chromium/mojo/system/AsyncWaiter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojo/bindings/ExecutorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PipedExecutor"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final mPendingActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mReadHandle:Lorg/chromium/mojo/system/MessagePipeHandle;

.field private final mWaiter:Lorg/chromium/mojo/system/AsyncWaiter;

.field private final mWriteHandle:Lorg/chromium/mojo/system/MessagePipeHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lorg/chromium/mojo/bindings/ExecutorFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/chromium/mojo/system/Core;)V
    .locals 2
    .param p1, "core"    # Lorg/chromium/mojo/system/Core;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-interface {p1}, Lorg/chromium/mojo/system/Core;->getDefaultAsyncWaiter()Lorg/chromium/mojo/system/AsyncWaiter;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;->mWaiter:Lorg/chromium/mojo/system/AsyncWaiter;

    .line 70
    sget-boolean v1, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;->mWaiter:Lorg/chromium/mojo/system/AsyncWaiter;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 71
    :cond_0
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;->mLock:Ljava/lang/Object;

    .line 72
    new-instance v1, Lorg/chromium/mojo/system/MessagePipeHandle$CreateOptions;

    invoke-direct {v1}, Lorg/chromium/mojo/system/MessagePipeHandle$CreateOptions;-><init>()V

    invoke-interface {p1, v1}, Lorg/chromium/mojo/system/Core;->createMessagePipe(Lorg/chromium/mojo/system/MessagePipeHandle$CreateOptions;)Lorg/chromium/mojo/system/Pair;

    move-result-object v0

    .line 74
    .local v0, "handles":Lorg/chromium/mojo/system/Pair;, "Lorg/chromium/mojo/system/Pair<Lorg/chromium/mojo/system/MessagePipeHandle;Lorg/chromium/mojo/system/MessagePipeHandle;>;"
    iget-object v1, v0, Lorg/chromium/mojo/system/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lorg/chromium/mojo/system/MessagePipeHandle;

    iput-object v1, p0, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;->mReadHandle:Lorg/chromium/mojo/system/MessagePipeHandle;

    .line 75
    iget-object v1, v0, Lorg/chromium/mojo/system/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lorg/chromium/mojo/system/MessagePipeHandle;

    iput-object v1, p0, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;->mWriteHandle:Lorg/chromium/mojo/system/MessagePipeHandle;

    .line 76
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;->mPendingActions:Ljava/util/List;

    .line 77
    invoke-direct {p0}, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;->asyncWait()V

    .line 78
    return-void
.end method

.method private asyncWait()V
    .locals 7

    .prologue
    .line 85
    iget-object v1, p0, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;->mWaiter:Lorg/chromium/mojo/system/AsyncWaiter;

    iget-object v2, p0, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;->mReadHandle:Lorg/chromium/mojo/system/MessagePipeHandle;

    sget-object v3, Lorg/chromium/mojo/system/Core$HandleSignals;->READABLE:Lorg/chromium/mojo/system/Core$HandleSignals;

    const-wide/16 v4, -0x1

    move-object v6, p0

    invoke-interface/range {v1 .. v6}, Lorg/chromium/mojo/system/AsyncWaiter;->asyncWait(Lorg/chromium/mojo/system/Handle;Lorg/chromium/mojo/system/Core$HandleSignals;JLorg/chromium/mojo/system/AsyncWaiter$Callback;)Lorg/chromium/mojo/system/AsyncWaiter$Cancellable;

    .line 87
    return-void
.end method

.method private close()V
    .locals 2

    .prologue
    .line 113
    iget-object v1, p0, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 114
    :try_start_0
    iget-object v0, p0, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;->mWriteHandle:Lorg/chromium/mojo/system/MessagePipeHandle;

    invoke-interface {v0}, Lorg/chromium/mojo/system/MessagePipeHandle;->close()V

    .line 115
    iget-object v0, p0, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;->mPendingActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 116
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    iget-object v0, p0, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;->mReadHandle:Lorg/chromium/mojo/system/MessagePipeHandle;

    invoke-interface {v0}, Lorg/chromium/mojo/system/MessagePipeHandle;->close()V

    .line 118
    return-void

    .line 116
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private readNotifyBufferMessage()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 126
    :try_start_0
    iget-object v2, p0, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;->mReadHandle:Lorg/chromium/mojo/system/MessagePipeHandle;

    invoke-static {}, Lorg/chromium/mojo/bindings/ExecutorFactory;->access$000()Ljava/nio/ByteBuffer;

    move-result-object v3

    const/4 v4, 0x0

    sget-object v5, Lorg/chromium/mojo/system/MessagePipeHandle$ReadFlags;->NONE:Lorg/chromium/mojo/system/MessagePipeHandle$ReadFlags;

    invoke-interface {v2, v3, v4, v5}, Lorg/chromium/mojo/system/MessagePipeHandle;->readMessage(Ljava/nio/ByteBuffer;ILorg/chromium/mojo/system/MessagePipeHandle$ReadFlags;)Lorg/chromium/mojo/system/ResultAnd;

    move-result-object v0

    .line 128
    .local v0, "readMessageResult":Lorg/chromium/mojo/system/ResultAnd;, "Lorg/chromium/mojo/system/ResultAnd<Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;>;"
    invoke-virtual {v0}, Lorg/chromium/mojo/system/ResultAnd;->getMojoResult()I

    move-result v2

    if-nez v2, :cond_0

    .line 129
    invoke-direct {p0}, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;->asyncWait()V
    :try_end_0
    .catch Lorg/chromium/mojo/system/MojoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    const/4 v1, 0x1

    .line 135
    .end local v0    # "readMessageResult":Lorg/chromium/mojo/system/ResultAnd;, "Lorg/chromium/mojo/system/ResultAnd<Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;>;"
    :cond_0
    :goto_0
    return v1

    .line 132
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private runNextAction()V
    .locals 5

    .prologue
    .line 142
    const/4 v1, 0x0

    .line 143
    .local v1, "toRun":Ljava/lang/Runnable;
    iget-object v3, p0, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 144
    :try_start_0
    iget-object v2, p0, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;->mPendingActions:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/Runnable;

    move-object v1, v0

    .line 145
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 147
    return-void

    .line 145
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 5
    .param p1, "command"    # Ljava/lang/Runnable;

    .prologue
    .line 158
    iget-object v1, p0, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 159
    :try_start_0
    iget-object v0, p0, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;->mWriteHandle:Lorg/chromium/mojo/system/MessagePipeHandle;

    invoke-interface {v0}, Lorg/chromium/mojo/system/MessagePipeHandle;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Trying to execute an action on a closed executor."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 163
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;->mPendingActions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object v0, p0, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;->mWriteHandle:Lorg/chromium/mojo/system/MessagePipeHandle;

    invoke-static {}, Lorg/chromium/mojo/bindings/ExecutorFactory;->access$000()Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Lorg/chromium/mojo/system/MessagePipeHandle$WriteFlags;->NONE:Lorg/chromium/mojo/system/MessagePipeHandle$WriteFlags;

    invoke-interface {v0, v2, v3, v4}, Lorg/chromium/mojo/system/MessagePipeHandle;->writeMessage(Ljava/nio/ByteBuffer;Ljava/util/List;Lorg/chromium/mojo/system/MessagePipeHandle$WriteFlags;)V

    .line 165
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    return-void
.end method

.method public onError(Lorg/chromium/mojo/system/MojoException;)V
    .locals 0
    .param p1, "exception"    # Lorg/chromium/mojo/system/MojoException;

    .prologue
    .line 106
    invoke-direct {p0}, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;->close()V

    .line 107
    return-void
.end method

.method public onResult(I)V
    .locals 1
    .param p1, "result"    # I

    .prologue
    .line 94
    if-nez p1, :cond_0

    invoke-direct {p0}, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;->readNotifyBufferMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-direct {p0}, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;->runNextAction()V

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-direct {p0}, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;->close()V

    goto :goto_0
.end method
