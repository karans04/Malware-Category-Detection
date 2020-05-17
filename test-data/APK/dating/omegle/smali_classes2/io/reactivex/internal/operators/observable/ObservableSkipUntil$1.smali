.class Lio/reactivex/internal/operators/observable/ObservableSkipUntil$1;
.super Ljava/lang/Object;
.source "ObservableSkipUntil.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/reactivex/internal/operators/observable/ObservableSkipUntil;->subscribeActual(Lio/reactivex/Observer;)V
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
.field s:Lio/reactivex/disposables/Disposable;

.field final synthetic this$0:Lio/reactivex/internal/operators/observable/ObservableSkipUntil;

.field final synthetic val$frc:Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

.field final synthetic val$serial:Lio/reactivex/observers/SerializedObserver;

.field final synthetic val$sus:Lio/reactivex/internal/operators/observable/ObservableSkipUntil$SkipUntilObserver;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/observable/ObservableSkipUntil;Lio/reactivex/internal/disposables/ArrayCompositeDisposable;Lio/reactivex/internal/operators/observable/ObservableSkipUntil$SkipUntilObserver;Lio/reactivex/observers/SerializedObserver;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableSkipUntil$1;->this$0:Lio/reactivex/internal/operators/observable/ObservableSkipUntil;

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableSkipUntil$1;->val$frc:Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableSkipUntil$1;->val$sus:Lio/reactivex/internal/operators/observable/ObservableSkipUntil$SkipUntilObserver;

    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableSkipUntil$1;->val$serial:Lio/reactivex/observers/SerializedObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .line 63
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSkipUntil$1;->val$sus:Lio/reactivex/internal/operators/observable/ObservableSkipUntil$SkipUntilObserver;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lio/reactivex/internal/operators/observable/ObservableSkipUntil$SkipUntilObserver;->notSkipping:Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSkipUntil$1;->val$frc:Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/ArrayCompositeDisposable;->dispose()V

    .line 58
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSkipUntil$1;->val$serial:Lio/reactivex/observers/SerializedObserver;

    invoke-virtual {v0, p1}, Lio/reactivex/observers/SerializedObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .line 51
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableSkipUntil$1;->s:Lio/reactivex/disposables/Disposable;

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 52
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableSkipUntil$1;->val$sus:Lio/reactivex/internal/operators/observable/ObservableSkipUntil$SkipUntilObserver;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lio/reactivex/internal/operators/observable/ObservableSkipUntil$SkipUntilObserver;->notSkipping:Z

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 2

    .line 43
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSkipUntil$1;->s:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableSkipUntil$1;->s:Lio/reactivex/disposables/Disposable;

    .line 45
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSkipUntil$1;->val$frc:Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lio/reactivex/internal/disposables/ArrayCompositeDisposable;->setResource(ILio/reactivex/disposables/Disposable;)Z

    :cond_0
    return-void
.end method
