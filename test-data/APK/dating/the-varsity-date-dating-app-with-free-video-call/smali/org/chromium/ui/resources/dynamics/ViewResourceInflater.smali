.class public Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;
.super Ljava/lang/Object;
.source "ViewResourceInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ui/resources/dynamics/ViewResourceInflater$1;,
        Lorg/chromium/ui/resources/dynamics/ViewResourceInflater$ViewInflaterOnDrawListener;,
        Lorg/chromium/ui/resources/dynamics/ViewResourceInflater$ViewInflaterAdapter;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final INVALID_ID:I = -0x1


# instance fields
.field private mContainer:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private mIsAttached:Z

.field private mIsInvalidated:Z

.field private mLayoutId:I

.field private mNeedsLayoutUpdate:Z

.field private mOnDrawListener:Lorg/chromium/ui/resources/dynamics/ViewResourceInflater$ViewInflaterOnDrawListener;

.field private mResourceAdapter:Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;

.field private mResourceLoader:Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;

.field private mView:Landroid/view/View;

.field private mViewId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(IILandroid/content/Context;Landroid/view/ViewGroup;Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;)V
    .locals 0
    .param p1, "layoutId"    # I
    .param p2, "viewId"    # I
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "container"    # Landroid/view/ViewGroup;
    .param p5, "resourceLoader"    # Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput p1, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mLayoutId:I

    .line 110
    iput p2, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mViewId:I

    .line 111
    iput-object p3, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mContext:Landroid/content/Context;

    .line 112
    iput-object p4, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mContainer:Landroid/view/ViewGroup;

    .line 113
    iput-object p5, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mResourceLoader:Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;

    .line 114
    return-void
.end method

.method static synthetic access$100(Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->invalidateResource()V

    return-void
.end method

.method private attachView()V
    .locals 2

    .prologue
    .line 294
    iget-boolean v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mIsAttached:Z

    if-nez v0, :cond_1

    .line 295
    sget-boolean v0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 296
    :cond_0
    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 297
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mIsAttached:Z

    .line 299
    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mOnDrawListener:Lorg/chromium/ui/resources/dynamics/ViewResourceInflater$ViewInflaterOnDrawListener;

    if-nez v0, :cond_1

    .line 302
    new-instance v0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater$ViewInflaterOnDrawListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater$ViewInflaterOnDrawListener;-><init>(Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;Lorg/chromium/ui/resources/dynamics/ViewResourceInflater$1;)V

    iput-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mOnDrawListener:Lorg/chromium/ui/resources/dynamics/ViewResourceInflater$ViewInflaterOnDrawListener;

    .line 303
    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mOnDrawListener:Lorg/chromium/ui/resources/dynamics/ViewResourceInflater$ViewInflaterOnDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 306
    :cond_1
    return-void
.end method

.method private detachView()V
    .locals 2

    .prologue
    .line 312
    iget-boolean v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mIsAttached:Z

    if-eqz v0, :cond_2

    .line 313
    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mOnDrawListener:Lorg/chromium/ui/resources/dynamics/ViewResourceInflater$ViewInflaterOnDrawListener;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mOnDrawListener:Lorg/chromium/ui/resources/dynamics/ViewResourceInflater$ViewInflaterOnDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 315
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mOnDrawListener:Lorg/chromium/ui/resources/dynamics/ViewResourceInflater$ViewInflaterOnDrawListener;

    .line 318
    :cond_0
    sget-boolean v0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 319
    :cond_1
    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 320
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mIsAttached:Z

    .line 322
    :cond_2
    return-void
.end method

.method private getUnspecifiedMeasureSpec()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 354
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method private invalidateResource()V
    .locals 2

    .prologue
    .line 385
    iget-boolean v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mIsInvalidated:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mResourceAdapter:Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;

    if-eqz v0, :cond_0

    .line 386
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mIsInvalidated:Z

    .line 387
    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mResourceAdapter:Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->invalidate(Landroid/graphics/Rect;)V

    .line 389
    :cond_0
    return-void
.end method

.method private registerResource()V
    .locals 3

    .prologue
    .line 361
    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mResourceAdapter:Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;

    if-nez v0, :cond_0

    .line 362
    new-instance v0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater$ViewInflaterAdapter;

    iget-object v1, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mView:Landroid/view/View;

    iget v2, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mViewId:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater$ViewInflaterAdapter;-><init>(Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;Landroid/view/View;)V

    iput-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mResourceAdapter:Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;

    .line 365
    :cond_0
    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mResourceLoader:Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;

    if-eqz v0, :cond_1

    .line 366
    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mResourceLoader:Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;

    iget v1, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mViewId:I

    iget-object v2, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mResourceAdapter:Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;

    invoke-virtual {v0, v1, v2}, Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;->registerResource(ILorg/chromium/ui/resources/dynamics/DynamicResource;)V

    .line 368
    :cond_1
    return-void
.end method

.method private unregisterResource()V
    .locals 2

    .prologue
    .line 374
    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mResourceLoader:Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mResourceLoader:Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;

    iget v1, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mViewId:I

    invoke-virtual {v0, v1}, Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;->unregisterResource(I)V

    .line 378
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mResourceAdapter:Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;

    .line 379
    return-void
.end method

.method private updateLayoutParams()V
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 329
    sget-boolean v5, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mView:Landroid/view/View;

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 332
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->getWidthMeasureSpec()I

    move-result v4

    .line 333
    .local v4, "widthMeasureSpec":I
    const/4 v3, -0x2

    .line 334
    .local v3, "width":I
    invoke-static {v4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    if-ne v5, v6, :cond_1

    .line 335
    invoke-static {v4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 338
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->getHeightMeasureSpec()I

    move-result v1

    .line 339
    .local v1, "heightMeasureSpec":I
    const/4 v0, -0x2

    .line 340
    .local v0, "height":I
    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    if-ne v5, v6, :cond_2

    .line 341
    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 344
    :cond_2
    iget-object v5, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 345
    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 346
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 347
    iget-object v5, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mView:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 348
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 185
    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 198
    :goto_0
    return-void

    .line 187
    :cond_0
    invoke-direct {p0}, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->unregisterResource()V

    .line 189
    invoke-direct {p0}, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->detachView()V

    .line 190
    iput-object v1, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mView:Landroid/view/View;

    .line 192
    iput v2, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mLayoutId:I

    .line 193
    iput v2, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mViewId:I

    .line 195
    iput-object v1, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mContext:Landroid/content/Context;

    .line 196
    iput-object v1, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mContainer:Landroid/view/ViewGroup;

    .line 197
    iput-object v1, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mResourceLoader:Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;

    goto :goto_0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getHeightMeasureSpec()I
    .locals 1

    .prologue
    .line 265
    invoke-direct {p0}, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->getUnspecifiedMeasureSpec()I

    move-result v0

    return v0
.end method

.method public getMeasuredHeight()I
    .locals 1

    .prologue
    .line 215
    sget-boolean v0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 217
    :cond_0
    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public getMeasuredWidth()I
    .locals 1

    .prologue
    .line 205
    sget-boolean v0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 207
    :cond_0
    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method protected getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mView:Landroid/view/View;

    return-object v0
.end method

.method public getViewId()I
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mViewId:I

    return v0
.end method

.method protected getWidthMeasureSpec()I
    .locals 1

    .prologue
    .line 256
    invoke-direct {p0}, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->getUnspecifiedMeasureSpec()I

    move-result v0

    return v0
.end method

.method public inflate()V
    .locals 4

    .prologue
    .line 120
    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 135
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mLayoutId:I

    iget-object v2, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mContainer:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mView:Landroid/view/View;

    .line 126
    sget-boolean v0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    iget v1, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mViewId:I

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 130
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->onFinishInflate()V

    .line 132
    invoke-direct {p0}, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->registerResource()V

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mNeedsLayoutUpdate:Z

    goto :goto_0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->invalidate(Z)V

    .line 142
    return-void
.end method

.method public invalidate(Z)V
    .locals 1
    .param p1, "didViewSizeChange"    # Z

    .prologue
    .line 151
    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->inflate()V

    .line 155
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mIsInvalidated:Z

    .line 157
    iget-boolean v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mIsAttached:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->shouldAttachView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    invoke-direct {p0}, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->attachView()V

    .line 166
    :cond_1
    iget-boolean v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mIsAttached:Z

    if-eqz v0, :cond_4

    .line 168
    if-nez p1, :cond_2

    iget-boolean v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mNeedsLayoutUpdate:Z

    if-eqz v0, :cond_3

    .line 169
    :cond_2
    invoke-direct {p0}, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->updateLayoutParams()V

    .line 178
    :cond_3
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mNeedsLayoutUpdate:Z

    .line 179
    return-void

    .line 174
    :cond_4
    invoke-virtual {p0}, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->layout()V

    .line 175
    invoke-direct {p0}, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->invalidateResource()V

    goto :goto_0
.end method

.method protected layout()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 272
    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mView:Landroid/view/View;

    invoke-virtual {p0}, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->getWidthMeasureSpec()I

    move-result v1

    invoke-virtual {p0}, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->getHeightMeasureSpec()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 273
    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mView:Landroid/view/View;

    invoke-virtual {p0}, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 274
    return-void
.end method

.method protected onCaptureEnd()V
    .locals 1

    .prologue
    .line 409
    invoke-virtual {p0}, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->shouldDetachViewAfterCapturing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    invoke-direct {p0}, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->detachView()V

    .line 412
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 231
    return-void
.end method

.method protected shouldAttachView()Z
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x1

    return v0
.end method

.method protected shouldDetachViewAfterCapturing()Z
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x1

    return v0
.end method
