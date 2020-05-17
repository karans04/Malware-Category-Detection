.class final Lio/reactivex/internal/operators/flowable/FlowableReplay$3;
.super Lio/reactivex/flowables/ConnectableFlowable;
.source "FlowableReplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/reactivex/internal/operators/flowable/FlowableReplay;->observeOn(Lio/reactivex/flowables/ConnectableFlowable;Lio/reactivex/Scheduler;)Lio/reactivex/flowables/ConnectableFlowable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/flowables/ConnectableFlowable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$co:Lio/reactivex/flowables/ConnectableFlowable;

.field final synthetic val$observable:Lio/reactivex/Flowable;


# direct methods
.method constructor <init>(Lio/reactivex/flowables/ConnectableFlowable;Lio/reactivex/Flowable;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$3;->val$co:Lio/reactivex/flowables/ConnectableFlowable;

    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$3;->val$observable:Lio/reactivex/Flowable;

    invoke-direct {p0}, Lio/reactivex/flowables/ConnectableFlowable;-><init>()V

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

    .line 113
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$3;->val$co:Lio/reactivex/flowables/ConnectableFlowable;

    invoke-virtual {v0, p1}, Lio/reactivex/flowables/ConnectableFlowable;->connect(Lio/reactivex/functions/Consumer;)V

    return-void
.end method

.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$3;->val$observable:Lio/reactivex/Flowable;

    invoke-virtual {v0, p1}, Lio/reactivex/Flowable;->subscribe(Lorg/reactivestreams/Subscriber;)V

    return-void
.end method
