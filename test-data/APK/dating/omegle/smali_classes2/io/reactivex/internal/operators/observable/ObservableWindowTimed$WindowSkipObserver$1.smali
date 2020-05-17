.class Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver$1;
.super Ljava/lang/Object;
.source "ObservableWindowTimed.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;

.field final synthetic val$w:Lio/reactivex/subjects/UnicastSubject;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;Lio/reactivex/subjects/UnicastSubject;)V
    .locals 0

    .line 555
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver$1;->this$0:Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver$1;->val$w:Lio/reactivex/subjects/UnicastSubject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 558
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver$1;->this$0:Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver$1;->val$w:Lio/reactivex/subjects/UnicastSubject;

    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/observable/ObservableWindowTimed$WindowSkipObserver;->complete(Lio/reactivex/subjects/UnicastSubject;)V

    return-void
.end method
