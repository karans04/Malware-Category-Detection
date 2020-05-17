.class Lio/reactivex/internal/operators/single/SingleDelay$1$2;
.super Ljava/lang/Object;
.source "SingleDelay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/reactivex/internal/operators/single/SingleDelay$1;->onError(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/reactivex/internal/operators/single/SingleDelay$1;

.field final synthetic val$e:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/single/SingleDelay$1;Ljava/lang/Throwable;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleDelay$1$2;->this$1:Lio/reactivex/internal/operators/single/SingleDelay$1;

    iput-object p2, p0, Lio/reactivex/internal/operators/single/SingleDelay$1$2;->val$e:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 63
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleDelay$1$2;->this$1:Lio/reactivex/internal/operators/single/SingleDelay$1;

    iget-object v0, v0, Lio/reactivex/internal/operators/single/SingleDelay$1;->val$s:Lio/reactivex/SingleObserver;

    iget-object v1, p0, Lio/reactivex/internal/operators/single/SingleDelay$1$2;->val$e:Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
