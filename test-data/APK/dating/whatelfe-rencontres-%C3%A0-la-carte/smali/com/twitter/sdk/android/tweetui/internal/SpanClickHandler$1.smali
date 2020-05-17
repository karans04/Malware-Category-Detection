.class final Lcom/twitter/sdk/android/tweetui/internal/SpanClickHandler$1;
.super Ljava/lang/Object;
.source "SpanClickHandler.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twitter/sdk/android/tweetui/internal/SpanClickHandler;->enableClicksOnSpans(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$helper:Lcom/twitter/sdk/android/tweetui/internal/SpanClickHandler;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/tweetui/internal/SpanClickHandler;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/SpanClickHandler$1;->val$helper:Lcom/twitter/sdk/android/tweetui/internal/SpanClickHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 46
    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    .line 47
    .local v1, "textView":Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 48
    .local v0, "layout":Landroid/text/Layout;
    if-eqz v0, :cond_0

    .line 49
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/internal/SpanClickHandler$1;->val$helper:Lcom/twitter/sdk/android/tweetui/internal/SpanClickHandler;

    invoke-static {v2, v0}, Lcom/twitter/sdk/android/tweetui/internal/SpanClickHandler;->access$002(Lcom/twitter/sdk/android/tweetui/internal/SpanClickHandler;Landroid/text/Layout;)Landroid/text/Layout;

    .line 50
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/internal/SpanClickHandler$1;->val$helper:Lcom/twitter/sdk/android/tweetui/internal/SpanClickHandler;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v3

    invoke-virtual {v1}, Landroid/widget/TextView;->getScrollX()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/twitter/sdk/android/tweetui/internal/SpanClickHandler;->access$102(Lcom/twitter/sdk/android/tweetui/internal/SpanClickHandler;F)F

    .line 51
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/internal/SpanClickHandler$1;->val$helper:Lcom/twitter/sdk/android/tweetui/internal/SpanClickHandler;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v3

    invoke-virtual {v1}, Landroid/widget/TextView;->getScrollY()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/twitter/sdk/android/tweetui/internal/SpanClickHandler;->access$202(Lcom/twitter/sdk/android/tweetui/internal/SpanClickHandler;F)F

    .line 52
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/internal/SpanClickHandler$1;->val$helper:Lcom/twitter/sdk/android/tweetui/internal/SpanClickHandler;

    invoke-virtual {v2, p2}, Lcom/twitter/sdk/android/tweetui/internal/SpanClickHandler;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 54
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
