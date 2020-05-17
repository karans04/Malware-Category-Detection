.class Lorg/chromium/mojo/bindings/ExecutorFactory;
.super Ljava/lang/Object;
.source "ExecutorFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;
    }
.end annotation


# static fields
.field private static final EXECUTORS:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private static final NOTIFY_BUFFER:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-object v0, Lorg/chromium/mojo/bindings/ExecutorFactory;->NOTIFY_BUFFER:Ljava/nio/ByteBuffer;

    .line 172
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/chromium/mojo/bindings/ExecutorFactory;->EXECUTORS:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method static synthetic access$000()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lorg/chromium/mojo/bindings/ExecutorFactory;->NOTIFY_BUFFER:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public static getExecutorForCurrentThread(Lorg/chromium/mojo/system/Core;)Ljava/util/concurrent/Executor;
    .locals 2
    .param p0, "core"    # Lorg/chromium/mojo/system/Core;

    .prologue
    .line 178
    sget-object v1, Lorg/chromium/mojo/bindings/ExecutorFactory;->EXECUTORS:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    .line 179
    .local v0, "executor":Ljava/util/concurrent/Executor;
    if-nez v0, :cond_0

    .line 180
    new-instance v0, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;

    .end local v0    # "executor":Ljava/util/concurrent/Executor;
    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;-><init>(Lorg/chromium/mojo/system/Core;)V

    .line 181
    .restart local v0    # "executor":Ljava/util/concurrent/Executor;
    sget-object v1, Lorg/chromium/mojo/bindings/ExecutorFactory;->EXECUTORS:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 183
    :cond_0
    return-object v0
.end method
