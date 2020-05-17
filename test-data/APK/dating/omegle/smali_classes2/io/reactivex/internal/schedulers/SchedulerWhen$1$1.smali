.class Lio/reactivex/internal/schedulers/SchedulerWhen$1$1;
.super Lio/reactivex/Completable;
.source "SchedulerWhen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/reactivex/internal/schedulers/SchedulerWhen$1;->apply(Lio/reactivex/internal/schedulers/SchedulerWhen$ScheduledAction;)Lio/reactivex/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/reactivex/internal/schedulers/SchedulerWhen$1;

.field final synthetic val$action:Lio/reactivex/internal/schedulers/SchedulerWhen$ScheduledAction;


# direct methods
.method constructor <init>(Lio/reactivex/internal/schedulers/SchedulerWhen$1;Lio/reactivex/internal/schedulers/SchedulerWhen$ScheduledAction;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lio/reactivex/internal/schedulers/SchedulerWhen$1$1;->this$1:Lio/reactivex/internal/schedulers/SchedulerWhen$1;

    iput-object p2, p0, Lio/reactivex/internal/schedulers/SchedulerWhen$1$1;->val$action:Lio/reactivex/internal/schedulers/SchedulerWhen$ScheduledAction;

    invoke-direct {p0}, Lio/reactivex/Completable;-><init>()V

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/CompletableObserver;)V
    .locals 2

    .line 147
    iget-object v0, p0, Lio/reactivex/internal/schedulers/SchedulerWhen$1$1;->val$action:Lio/reactivex/internal/schedulers/SchedulerWhen$ScheduledAction;

    invoke-interface {p1, v0}, Lio/reactivex/CompletableObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 148
    iget-object v0, p0, Lio/reactivex/internal/schedulers/SchedulerWhen$1$1;->val$action:Lio/reactivex/internal/schedulers/SchedulerWhen$ScheduledAction;

    iget-object v1, p0, Lio/reactivex/internal/schedulers/SchedulerWhen$1$1;->this$1:Lio/reactivex/internal/schedulers/SchedulerWhen$1;

    iget-object v1, v1, Lio/reactivex/internal/schedulers/SchedulerWhen$1;->val$actualWorker:Lio/reactivex/Scheduler$Worker;

    invoke-virtual {v0, v1, p1}, Lio/reactivex/internal/schedulers/SchedulerWhen$ScheduledAction;->call(Lio/reactivex/Scheduler$Worker;Lio/reactivex/CompletableObserver;)V

    return-void
.end method
