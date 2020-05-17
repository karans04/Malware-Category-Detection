.class Lio/reactivex/internal/operators/single/SingleTimeout$1$1;
.super Ljava/lang/Object;
.source "SingleTimeout.java"

# interfaces
.implements Lio/reactivex/SingleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/reactivex/internal/operators/single/SingleTimeout$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/SingleObserver<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lio/reactivex/internal/operators/single/SingleTimeout$1;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/single/SingleTimeout$1;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleTimeout$1$1;->this$1:Lio/reactivex/internal/operators/single/SingleTimeout$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleTimeout$1$1;->this$1:Lio/reactivex/internal/operators/single/SingleTimeout$1;

    iget-object v0, v0, Lio/reactivex/internal/operators/single/SingleTimeout$1;->val$set:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    .line 62
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleTimeout$1$1;->this$1:Lio/reactivex/internal/operators/single/SingleTimeout$1;

    iget-object v0, v0, Lio/reactivex/internal/operators/single/SingleTimeout$1;->val$s:Lio/reactivex/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleTimeout$1$1;->this$1:Lio/reactivex/internal/operators/single/SingleTimeout$1;

    iget-object v0, v0, Lio/reactivex/internal/operators/single/SingleTimeout$1;->val$set:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleTimeout$1$1;->this$1:Lio/reactivex/internal/operators/single/SingleTimeout$1;

    iget-object v0, v0, Lio/reactivex/internal/operators/single/SingleTimeout$1;->val$set:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    .line 73
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleTimeout$1$1;->this$1:Lio/reactivex/internal/operators/single/SingleTimeout$1;

    iget-object v0, v0, Lio/reactivex/internal/operators/single/SingleTimeout$1;->val$s:Lio/reactivex/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
