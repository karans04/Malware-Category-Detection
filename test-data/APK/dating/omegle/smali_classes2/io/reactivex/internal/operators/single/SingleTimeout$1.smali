.class Lio/reactivex/internal/operators/single/SingleTimeout$1;
.super Ljava/lang/Object;
.source "SingleTimeout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/reactivex/internal/operators/single/SingleTimeout;->subscribeActual(Lio/reactivex/SingleObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/reactivex/internal/operators/single/SingleTimeout;

.field final synthetic val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$s:Lio/reactivex/SingleObserver;

.field final synthetic val$set:Lio/reactivex/disposables/CompositeDisposable;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/single/SingleTimeout;Ljava/util/concurrent/atomic/AtomicBoolean;Lio/reactivex/disposables/CompositeDisposable;Lio/reactivex/SingleObserver;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleTimeout$1;->this$0:Lio/reactivex/internal/operators/single/SingleTimeout;

    iput-object p2, p0, Lio/reactivex/internal/operators/single/SingleTimeout$1;->val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lio/reactivex/internal/operators/single/SingleTimeout$1;->val$set:Lio/reactivex/disposables/CompositeDisposable;

    iput-object p4, p0, Lio/reactivex/internal/operators/single/SingleTimeout$1;->val$s:Lio/reactivex/SingleObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 54
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleTimeout$1;->val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleTimeout$1;->this$0:Lio/reactivex/internal/operators/single/SingleTimeout;

    iget-object v0, v0, Lio/reactivex/internal/operators/single/SingleTimeout;->other:Lio/reactivex/SingleSource;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleTimeout$1;->val$set:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    .line 57
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleTimeout$1;->this$0:Lio/reactivex/internal/operators/single/SingleTimeout;

    iget-object v0, v0, Lio/reactivex/internal/operators/single/SingleTimeout;->other:Lio/reactivex/SingleSource;

    new-instance v1, Lio/reactivex/internal/operators/single/SingleTimeout$1$1;

    invoke-direct {v1, p0}, Lio/reactivex/internal/operators/single/SingleTimeout$1$1;-><init>(Lio/reactivex/internal/operators/single/SingleTimeout$1;)V

    invoke-interface {v0, v1}, Lio/reactivex/SingleSource;->subscribe(Lio/reactivex/SingleObserver;)V

    goto :goto_0

    .line 78
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleTimeout$1;->val$set:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    .line 79
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleTimeout$1;->val$s:Lio/reactivex/SingleObserver;

    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    invoke-interface {v0, v1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method
