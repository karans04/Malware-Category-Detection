.class public Lcom/twitter/sdk/android/tweetui/TimelineResult;
.super Ljava/lang/Object;
.source "TimelineResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field public final timelineCursor:Lcom/twitter/sdk/android/tweetui/TimelineCursor;


# direct methods
.method public constructor <init>(Lcom/twitter/sdk/android/tweetui/TimelineCursor;Ljava/util/List;)V
    .locals 0
    .param p1, "timelineCursor"    # Lcom/twitter/sdk/android/tweetui/TimelineCursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/tweetui/TimelineCursor;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lcom/twitter/sdk/android/tweetui/TimelineResult;, "Lcom/twitter/sdk/android/tweetui/TimelineResult<TT;>;"
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/TimelineResult;->timelineCursor:Lcom/twitter/sdk/android/tweetui/TimelineCursor;

    .line 38
    iput-object p2, p0, Lcom/twitter/sdk/android/tweetui/TimelineResult;->items:Ljava/util/List;

    .line 39
    return-void
.end method
