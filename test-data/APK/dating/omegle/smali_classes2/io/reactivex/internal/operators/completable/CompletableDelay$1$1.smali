.class Lio/reactivex/internal/operators/completable/CompletableDelay$1$1;
.super Ljava/lang/Object;
.source "CompletableDelay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/reactivex/internal/operators/completable/CompletableDelay$1;->onComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/reactivex/internal/operators/completable/CompletableDelay$1;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/completable/CompletableDelay$1;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableDelay$1$1;->this$1:Lio/reactivex/internal/operators/completable/CompletableDelay$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 53
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableDelay$1$1;->this$1:Lio/reactivex/internal/operators/completable/CompletableDelay$1;

    iget-object v0, v0, Lio/reactivex/internal/operators/completable/CompletableDelay$1;->val$s:Lio/reactivex/CompletableObserver;

    invoke-interface {v0}, Lio/reactivex/CompletableObserver;->onComplete()V

    return-void
.end method
