.class Lio/reactivex/internal/operators/single/SingleDelay$1$1;
.super Ljava/lang/Object;
.source "SingleDelay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/reactivex/internal/operators/single/SingleDelay$1;->onSuccess(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/reactivex/internal/operators/single/SingleDelay$1;

.field final synthetic val$value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/single/SingleDelay$1;Ljava/lang/Object;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleDelay$1$1;->this$1:Lio/reactivex/internal/operators/single/SingleDelay$1;

    iput-object p2, p0, Lio/reactivex/internal/operators/single/SingleDelay$1$1;->val$value:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 53
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleDelay$1$1;->this$1:Lio/reactivex/internal/operators/single/SingleDelay$1;

    iget-object v0, v0, Lio/reactivex/internal/operators/single/SingleDelay$1;->val$s:Lio/reactivex/SingleObserver;

    iget-object v1, p0, Lio/reactivex/internal/operators/single/SingleDelay$1$1;->val$value:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
