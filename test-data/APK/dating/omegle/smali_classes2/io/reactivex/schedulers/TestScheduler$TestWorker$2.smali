.class Lio/reactivex/schedulers/TestScheduler$TestWorker$2;
.super Ljava/lang/Object;
.source "TestScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/reactivex/schedulers/TestScheduler$TestWorker;->schedule(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/reactivex/schedulers/TestScheduler$TestWorker;

.field final synthetic val$timedAction:Lio/reactivex/schedulers/TestScheduler$TimedRunnable;


# direct methods
.method constructor <init>(Lio/reactivex/schedulers/TestScheduler$TestWorker;Lio/reactivex/schedulers/TestScheduler$TimedRunnable;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lio/reactivex/schedulers/TestScheduler$TestWorker$2;->this$1:Lio/reactivex/schedulers/TestScheduler$TestWorker;

    iput-object p2, p0, Lio/reactivex/schedulers/TestScheduler$TestWorker$2;->val$timedAction:Lio/reactivex/schedulers/TestScheduler$TimedRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 170
    iget-object v0, p0, Lio/reactivex/schedulers/TestScheduler$TestWorker$2;->this$1:Lio/reactivex/schedulers/TestScheduler$TestWorker;

    iget-object v0, v0, Lio/reactivex/schedulers/TestScheduler$TestWorker;->this$0:Lio/reactivex/schedulers/TestScheduler;

    iget-object v0, v0, Lio/reactivex/schedulers/TestScheduler;->queue:Ljava/util/Queue;

    iget-object v1, p0, Lio/reactivex/schedulers/TestScheduler$TestWorker$2;->val$timedAction:Lio/reactivex/schedulers/TestScheduler$TimedRunnable;

    invoke-interface {v0, v1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    return-void
.end method
