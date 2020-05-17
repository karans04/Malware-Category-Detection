.class public Lorg/chromium/content/browser/ActivityContentVideoViewEmbedder;
.super Ljava/lang/Object;
.source "ActivityContentVideoViewEmbedder.java"

# interfaces
.implements Lorg/chromium/content/browser/ContentVideoViewEmbedder;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/chromium/content/browser/ActivityContentVideoViewEmbedder;->mActivity:Landroid/app/Activity;

    .line 25
    return-void
.end method


# virtual methods
.method public enterFullscreenVideo(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, -0x1

    .line 29
    iget-object v1, p0, Lorg/chromium/content/browser/ActivityContentVideoViewEmbedder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 30
    .local v0, "decor":Landroid/widget/FrameLayout;
    const/4 v1, 0x0

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    invoke-direct {v2, v4, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, p1, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 35
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/chromium/content/browser/ActivityContentVideoViewEmbedder;->setSystemUiVisibility(Z)V

    .line 36
    iput-object p1, p0, Lorg/chromium/content/browser/ActivityContentVideoViewEmbedder;->mView:Landroid/view/View;

    .line 37
    return-void
.end method

.method public exitFullscreenVideo()V
    .locals 2

    .prologue
    .line 41
    iget-object v1, p0, Lorg/chromium/content/browser/ActivityContentVideoViewEmbedder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 42
    .local v0, "decor":Landroid/widget/FrameLayout;
    iget-object v1, p0, Lorg/chromium/content/browser/ActivityContentVideoViewEmbedder;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 43
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/chromium/content/browser/ActivityContentVideoViewEmbedder;->setSystemUiVisibility(Z)V

    .line 44
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/chromium/content/browser/ActivityContentVideoViewEmbedder;->mView:Landroid/view/View;

    .line 45
    return-void
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public setSystemUiVisibility(Z)V
    .locals 5
    .param p1, "enterFullscreen"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    const/16 v4, 0x400

    .line 55
    iget-object v3, p0, Lorg/chromium/content/browser/ActivityContentVideoViewEmbedder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 56
    .local v0, "decor":Landroid/view/View;
    if-eqz p1, :cond_0

    .line 57
    iget-object v3, p0, Lorg/chromium/content/browser/ActivityContentVideoViewEmbedder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 63
    :goto_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-ge v3, v4, :cond_1

    .line 79
    :goto_1
    return-void

    .line 61
    :cond_0
    iget-object v3, p0, Lorg/chromium/content/browser/ActivityContentVideoViewEmbedder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    .line 68
    .local v2, "systemUiVisibility":I
    const/16 v1, 0x1606

    .line 73
    .local v1, "flags":I
    if-eqz p1, :cond_2

    .line 74
    or-int/2addr v2, v1

    .line 78
    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_1

    .line 76
    :cond_2
    and-int/lit16 v2, v2, -0x1607

    goto :goto_2
.end method
