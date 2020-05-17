.class public Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;
.super Ljava/lang/Object;
.source "ViewResourceAdapter.java"

# interfaces
.implements Lorg/chromium/ui/resources/dynamics/DynamicResource;
.implements Landroid/view/View$OnLayoutChangeListener;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapSize:Landroid/graphics/Rect;

.field private final mContentAperture:Landroid/graphics/Rect;

.field private final mContentPadding:Landroid/graphics/Rect;

.field private final mDirtyRect:Landroid/graphics/Rect;

.field private final mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->mDirtyRect:Landroid/graphics/Rect;

    .line 25
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->mContentPadding:Landroid/graphics/Rect;

    .line 26
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->mContentAperture:Landroid/graphics/Rect;

    .line 29
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->mBitmapSize:Landroid/graphics/Rect;

    .line 36
    iput-object p1, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->mView:Landroid/view/View;

    .line 37
    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->mView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 38
    return-void
.end method

.method private validateBitmap()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 169
    iget-object v5, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 170
    .local v2, "viewWidth":I
    iget-object v5, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 171
    .local v1, "viewHeight":I
    if-eqz v2, :cond_0

    if-nez v1, :cond_5

    :cond_0
    move v0, v3

    .line 172
    .local v0, "isEmpty":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 173
    const/4 v2, 0x1

    .line 174
    const/4 v1, 0x1

    .line 176
    :cond_1
    iget-object v5, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-ne v5, v2, :cond_2

    iget-object v5, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-eq v5, v1, :cond_3

    .line 178
    :cond_2
    iget-object v5, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 179
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->mBitmap:Landroid/graphics/Bitmap;

    .line 182
    :cond_3
    iget-object v5, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v5, :cond_4

    .line 183
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->mBitmap:Landroid/graphics/Bitmap;

    .line 184
    iget-object v5, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v3}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 185
    iget-object v5, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v4, v4, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 186
    iget-object v5, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->mBitmapSize:Landroid/graphics/Rect;

    iget-object v6, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget-object v7, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v5, v4, v4, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 189
    :cond_4
    if-nez v0, :cond_6

    :goto_1
    return v3

    .end local v0    # "isEmpty":Z
    :cond_5
    move v0, v4

    .line 171
    goto :goto_0

    .restart local v0    # "isEmpty":Z
    :cond_6
    move v3, v4

    .line 189
    goto :goto_1
.end method


# virtual methods
.method protected capture(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 140
    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 141
    return-void
.end method

.method protected computeContentAperture(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "outContentAperture"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    .line 162
    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 163
    return-void
.end method

.method protected computeContentPadding(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "outContentPadding"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    .line 154
    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 155
    return-void
.end method

.method public getAperture()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->mContentAperture:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->computeContentAperture(Landroid/graphics/Rect;)V

    .line 86
    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->mContentAperture:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49
    invoke-virtual {p0}, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->isDirty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->mBitmap:Landroid/graphics/Bitmap;

    .line 67
    :goto_0
    return-object v1

    .line 50
    :cond_0
    const-string v1, "ViewResourceAdapter:getBitmap"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 51
    invoke-direct {p0}, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->validateBitmap()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 52
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 54
    .local v0, "canvas":Landroid/graphics/Canvas;
    iget-object v1, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0, v0, v1}, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->onCaptureStart(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 56
    iget-object v1, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 57
    :cond_1
    invoke-virtual {p0, v0}, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->capture(Landroid/graphics/Canvas;)V

    .line 59
    invoke-virtual {p0}, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->onCaptureEnd()V

    .line 65
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    :goto_2
    iget-object v1, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 66
    const-string v1, "ViewResourceAdapter:getBitmap"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 67
    iget-object v1, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 54
    .restart local v0    # "canvas":Landroid/graphics/Canvas;
    :cond_2
    iget-object v1, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->mDirtyRect:Landroid/graphics/Rect;

    goto :goto_1

    .line 61
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    :cond_3
    sget-boolean v1, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->$assertionsDisabled:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v1, v3, :cond_5

    :cond_4
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 62
    :cond_5
    iget-object v1, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v2, v2}, Landroid/graphics/Bitmap;->setPixel(III)V

    goto :goto_2
.end method

.method public getBitmapSize()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->mBitmapSize:Landroid/graphics/Rect;

    return-object v0
.end method

.method protected getDirtyRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->mDirtyRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getPadding()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->mContentPadding:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->computeContentPadding(Landroid/graphics/Rect;)V

    .line 79
    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->mContentPadding:Landroid/graphics/Rect;

    return-object v0
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "dirtyRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    .line 113
    if-nez p1, :cond_0

    .line 114
    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->mDirtyRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public isDirty()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 91
    iget-object v1, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->mDirtyRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 93
    :cond_0
    iget-object v1, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method protected onCaptureEnd()V
    .locals 0

    .prologue
    .line 147
    return-void
.end method

.method protected onCaptureStart(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "dirtyRect"    # Landroid/graphics/Rect;

    .prologue
    .line 133
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    const/4 v5, 0x0

    .line 99
    sub-int v3, p4, p2

    .line 100
    .local v3, "width":I
    sub-int v0, p5, p3

    .line 101
    .local v0, "height":I
    sub-int v2, p8, p6

    .line 102
    .local v2, "oldWidth":I
    sub-int v1, p9, p7

    .line 104
    .local v1, "oldHeight":I
    if-ne v3, v2, :cond_0

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v4, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5, v5, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 105
    :cond_1
    return-void
.end method
