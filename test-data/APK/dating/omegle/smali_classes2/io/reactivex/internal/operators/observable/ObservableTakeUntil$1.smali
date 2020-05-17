.class Lio/reactivex/internal/operators/observable/ObservableTakeUntil$1;
.super Ljava/lang/Object;
.source "ObservableTakeUntil.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/reactivex/internal/operators/observable/ObservableTakeUntil;->subscribeActual(Lio/reactivex/Observer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "TU;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/reactivex/internal/operators/observable/ObservableTakeUntil;

.field final synthetic val$frc:Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

.field final synthetic val$serial:Lio/reactivex/observers/SerializedObserver;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/observable/ObservableTakeUntil;Lio/reactivex/internal/disposables/ArrayCompositeDisposable;Lio/reactivex/observers/SerializedObserver;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTakeUntil$1;->this$0:Lio/reactivex/internal/operators/observable/ObservableTakeUntil;

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableTakeUntil$1;->val$frc:Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableTakeUntil$1;->val$serial:Lio/reactivex/observers/SerializedObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 56
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTakeUntil$1;->val$frc:Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/ArrayCompositeDisposable;->dispose()V

    .line 57
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTakeUntil$1;->val$serial:Lio/reactivex/observers/SerializedObserver;

    invoke-virtual {v0}, Lio/reactivex/observers/SerializedObserver;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTakeUntil$1;->val$frc:Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/ArrayCompositeDisposable;->dispose()V

    .line 52
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTakeUntil$1;->val$serial:Lio/reactivex/observers/SerializedObserver;

    invoke-virtual {v0, p1}, Lio/reactivex/observers/SerializedObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .line 46
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTakeUntil$1;->val$frc:Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

    invoke-virtual {p1}, Lio/reactivex/internal/disposables/ArrayCompositeDisposable;->dispose()V

    .line 47
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableTakeUntil$1;->val$serial:Lio/reactivex/observers/SerializedObserver;

    invoke-virtual {p1}, Lio/reactivex/observers/SerializedObserver;->onComplete()V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 2

    .line 42
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTakeUntil$1;->val$frc:Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lio/reactivex/internal/disposables/ArrayCompositeDisposable;->setResource(ILio/reactivex/disposables/Disposable;)Z

    return-void
.end method
