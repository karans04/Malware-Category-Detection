.class public final Lio/reactivex/internal/operators/single/SingleEquals;
.super Lio/reactivex/Single;
.source "SingleEquals.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Single<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final first:Lio/reactivex/SingleSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleSource<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final second:Lio/reactivex/SingleSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleSource<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/SingleSource;Lio/reactivex/SingleSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleSource<",
            "+TT;>;",
            "Lio/reactivex/SingleSource<",
            "+TT;>;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Lio/reactivex/Single;-><init>()V

    .line 29
    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleEquals;->first:Lio/reactivex/SingleSource;

    .line 30
    iput-object p2, p0, Lio/reactivex/internal/operators/single/SingleEquals;->second:Lio/reactivex/SingleSource;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/SingleObserver;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 36
    new-instance v7, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    const/4 v0, 0x2

    .line 37
    new-array v8, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-object v0, v8, v1

    const/4 v1, 0x1

    aput-object v0, v8, v1

    .line 39
    new-instance v9, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v9}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    .line 40
    invoke-interface {p1, v9}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 79
    iget-object v10, p0, Lio/reactivex/internal/operators/single/SingleEquals;->first:Lio/reactivex/SingleSource;

    new-instance v11, Lio/reactivex/internal/operators/single/SingleEquals$1InnerObserver;

    const/4 v2, 0x0

    move-object v0, v11

    move-object v1, p0

    move-object v3, v9

    move-object v4, v8

    move-object v5, v7

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lio/reactivex/internal/operators/single/SingleEquals$1InnerObserver;-><init>(Lio/reactivex/internal/operators/single/SingleEquals;ILio/reactivex/disposables/CompositeDisposable;[Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/SingleObserver;)V

    invoke-interface {v10, v11}, Lio/reactivex/SingleSource;->subscribe(Lio/reactivex/SingleObserver;)V

    .line 80
    iget-object v10, p0, Lio/reactivex/internal/operators/single/SingleEquals;->second:Lio/reactivex/SingleSource;

    new-instance v11, Lio/reactivex/internal/operators/single/SingleEquals$1InnerObserver;

    const/4 v2, 0x1

    move-object v0, v11

    invoke-direct/range {v0 .. v6}, Lio/reactivex/internal/operators/single/SingleEquals$1InnerObserver;-><init>(Lio/reactivex/internal/operators/single/SingleEquals;ILio/reactivex/disposables/CompositeDisposable;[Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/SingleObserver;)V

    invoke-interface {v10, v11}, Lio/reactivex/SingleSource;->subscribe(Lio/reactivex/SingleObserver;)V

    return-void
.end method
