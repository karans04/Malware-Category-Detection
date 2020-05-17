.class Lio/reactivex/internal/operators/observable/ObservableDelaySubscriptionOther$1;
.super Ljava/lang/Object;
.source "ObservableDelaySubscriptionOther.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/reactivex/internal/operators/observable/ObservableDelaySubscriptionOther;->subscribeActual(Lio/reactivex/Observer;)V
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
.field done:Z

.field final synthetic this$0:Lio/reactivex/internal/operators/observable/ObservableDelaySubscriptionOther;

.field final synthetic val$child:Lio/reactivex/Observer;

.field final synthetic val$serial:Lio/reactivex/internal/disposables/SequentialDisposable;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/observable/ObservableDelaySubscriptionOther;Lio/reactivex/internal/disposables/SequentialDisposable;Lio/reactivex/Observer;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableDelaySubscriptionOther$1;->this$0:Lio/reactivex/internal/operators/observable/ObservableDelaySubscriptionOther;

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableDelaySubscriptionOther$1;->val$serial:Lio/reactivex/internal/disposables/SequentialDisposable;

    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableDelaySubscriptionOther$1;->val$child:Lio/reactivex/Observer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .line 65
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableDelaySubscriptionOther$1;->done:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableDelaySubscriptionOther$1;->done:Z

    .line 70
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDelaySubscriptionOther$1;->this$0:Lio/reactivex/internal/operators/observable/ObservableDelaySubscriptionOther;

    iget-object v0, v0, Lio/reactivex/internal/operators/observable/ObservableDelaySubscriptionOther;->main:Lio/reactivex/ObservableSource;

    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableDelaySubscriptionOther$1$1;

    invoke-direct {v1, p0}, Lio/reactivex/internal/operators/observable/ObservableDelaySubscriptionOther$1$1;-><init>(Lio/reactivex/internal/operators/observable/ObservableDelaySubscriptionOther$1;)V

    invoke-interface {v0, v1}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 55
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableDelaySubscriptionOther$1;->done:Z

    if-eqz v0, :cond_0

    .line 56
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableDelaySubscriptionOther$1;->done:Z

    .line 60
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDelaySubscriptionOther$1;->val$child:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .line 50
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableDelaySubscriptionOther$1;->onComplete()V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDelaySubscriptionOther$1;->val$serial:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/disposables/SequentialDisposable;->update(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method
