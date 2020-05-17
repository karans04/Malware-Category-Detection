.class public Lorg/chromium/content/browser/ContentViewClient;
.super Ljava/lang/Object;
.source "ContentViewClient.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "cr.ContentViewClient"

.field private static final UNSPECIFIED_MEASURE_SPEC:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    sput v0, Lorg/chromium/content/browser/ContentViewClient;->UNSPECIFIED_MEASURE_SPEC:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static shouldPropagateKey(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    .prologue
    .line 178
    const/16 v0, 0x52

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/16 v0, 0x1a

    if-eq p0, v0, :cond_0

    const/16 v0, 0x4f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x1b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x50

    if-eq p0, v0, :cond_0

    const/16 v0, 0x19

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa4

    if-eq p0, v0, :cond_0

    const/16 v0, 0x18

    if-ne p0, v0, :cond_1

    .line 190
    :cond_0
    const/4 v0, 0x0

    .line 192
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public doesPerformProcessText()Z
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public doesPerformWebSearch()Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public getContentVideoViewEmbedder()Lorg/chromium/content/browser/ContentVideoViewEmbedder;
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDesiredHeightMeasureSpec()I
    .locals 1

    .prologue
    .line 214
    sget v0, Lorg/chromium/content/browser/ContentViewClient;->UNSPECIFIED_MEASURE_SPEC:I

    return v0
.end method

.method public getDesiredWidthMeasureSpec()I
    .locals 1

    .prologue
    .line 203
    sget v0, Lorg/chromium/content/browser/ContentViewClient;->UNSPECIFIED_MEASURE_SPEC:I

    return v0
.end method

.method public getProductVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    const-string v0, ""

    return-object v0
.end method

.method public getSystemWindowInsetBottom()I
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x0

    return v0
.end method

.method public getSystemWindowInsetLeft()I
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x0

    return v0
.end method

.method public getSystemWindowInsetRight()I
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x0

    return v0
.end method

.method public getSystemWindowInsetTop()I
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x0

    return v0
.end method

.method public isSelectActionModeAllowed(I)Z
    .locals 1
    .param p1, "actionModeItem"    # I

    .prologue
    .line 130
    const/4 v0, 0x1

    return v0
.end method

.method public onBackgroundColorChanged(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 43
    return-void
.end method

.method public onContextualActionBarHidden()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public onContextualActionBarShown()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public onFocusedNodeEditabilityChanged(Z)V
    .locals 0
    .param p1, "editable"    # Z

    .prologue
    .line 74
    return-void
.end method

.method public onImeEvent()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method public onOffsetsForFullscreenChanged(FF)V
    .locals 0
    .param p1, "topControlsOffsetYPix"    # F
    .param p2, "contentOffsetYPix"    # F

    .prologue
    .line 51
    return-void
.end method

.method public onOverScrolled(IIZZ)V
    .locals 0
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    .line 221
    return-void
.end method

.method public onStartContentIntent(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intentUrl"    # Ljava/lang/String;
    .param p3, "isMainFrame"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 140
    const/4 v2, 0x1

    :try_start_0
    invoke-static {p2, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 141
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :try_start_1
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 152
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "cr.ContentViewClient"

    const-string v3, "Bad URI %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v6

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 149
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v0

    .line 150
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    const-string v2, "cr.ContentViewClient"

    const-string v3, "No application can handle %s"

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p2, v4, v6

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onUpdateTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 36
    return-void
.end method

.method public performWebSearch(Ljava/lang/String;)V
    .locals 0
    .param p1, "searchQuery"    # Ljava/lang/String;

    .prologue
    .line 94
    return-void
.end method

.method public shouldBlockMediaRequest(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public shouldOverrideKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 54
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 56
    .local v0, "keyCode":I
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewClient;->shouldPropagateKey(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 58
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startProcessTextIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 120
    return-void
.end method
