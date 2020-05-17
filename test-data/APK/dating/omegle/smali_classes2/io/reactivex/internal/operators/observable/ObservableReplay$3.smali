.class final Lio/reactivex/internal/operators/observable/ObservableReplay$3;
.super Lio/reactivex/observables/ConnectableObservable;
.source "ObservableReplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/reactivex/internal/operators/observable/ObservableReplay;->observeOn(Lio/reactivex/observables/ConnectableObservable;Lio/reactivex/Scheduler;)Lio/reactivex/observables/ConnectableObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/observables/ConnectableObservable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$co:Lio/reactivex/observables/ConnectableObservable;

.field final synthetic val$observable:Lio/reactivex/Observable;


# direct methods
.method constructor <init>(Lio/reactivex/observables/ConnectableObservable;Lio/reactivex/Observable;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$3;->val$co:Lio/reactivex/observables/ConnectableObservable;

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$3;->val$observable:Lio/reactivex/Observable;

    invoke-direct {p0}, Lio/reactivex/observables/ConnectableObservable;-><init>()V

    return-void
.end method


# virtual methods
.method public connect(Lio/reactivex/functions/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Lio/reactivex/disposables/Disposable;",
            ">;)V"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$3;->val$co:Lio/reactivex/observables/ConnectableObservable;

    invoke-virtual {v0, p1}, Lio/reactivex/observables/ConnectableObservable;->connect(Lio/reactivex/functions/Consumer;)V

    return-void
.end method

.method protected subscribeActual(Lio/reactivex/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$3;->val$observable:Lio/reactivex/Observable;

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
