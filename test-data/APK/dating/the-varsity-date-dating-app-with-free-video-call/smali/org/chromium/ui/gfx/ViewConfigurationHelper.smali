.class public Lorg/chromium/ui/gfx/ViewConfigurationHelper;
.super Ljava/lang/Object;
.source "ViewConfigurationHelper.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "gfx"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final MIN_SCALING_SPAN_MM:F = 12.0f


# instance fields
.field private final mAppContext:Landroid/content/Context;

.field private mDensity:F

.field private mViewConfiguration:Landroid/view/ViewConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lorg/chromium/ui/gfx/ViewConfigurationHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->mAppContext:Landroid/content/Context;

    .line 36
    iget-object v0, p0, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->mViewConfiguration:Landroid/view/ViewConfiguration;

    .line 37
    iget-object v0, p0, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->mDensity:F

    .line 38
    sget-boolean v0, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->mDensity:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 39
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/ui/gfx/ViewConfigurationHelper;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/ui/gfx/ViewConfigurationHelper;

    .prologue
    .line 24
    invoke-direct {p0}, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->updateNativeViewConfigurationIfNecessary()V

    return-void
.end method

.method private static createWithListener(Landroid/content/Context;)Lorg/chromium/ui/gfx/ViewConfigurationHelper;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 139
    new-instance v0, Lorg/chromium/ui/gfx/ViewConfigurationHelper;

    invoke-direct {v0, p0}, Lorg/chromium/ui/gfx/ViewConfigurationHelper;-><init>(Landroid/content/Context;)V

    .line 140
    .local v0, "viewConfigurationHelper":Lorg/chromium/ui/gfx/ViewConfigurationHelper;
    invoke-direct {v0}, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->registerListener()V

    .line 141
    return-object v0
.end method

.method private getDoubleTapSlop()F
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->mViewConfiguration:Landroid/view/ViewConfiguration;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->toDips(I)F

    move-result v0

    return v0
.end method

.method private static getDoubleTapTimeout()I
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 72
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    return v0
.end method

.method private static getLongPressTimeout()I
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 77
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    return v0
.end method

.method private getMaximumFlingVelocity()F
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->mViewConfiguration:Landroid/view/ViewConfiguration;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->toDips(I)F

    move-result v0

    return v0
.end method

.method private getMinScalingSpan()F
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 112
    invoke-direct {p0}, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->getScaledMinScalingSpan()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->toDips(I)F

    move-result v0

    return v0
.end method

.method private getMinimumFlingVelocity()F
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->mViewConfiguration:Landroid/view/ViewConfiguration;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->toDips(I)F

    move-result v0

    return v0
.end method

.method private getScaledMinScalingSpan()I
    .locals 6

    .prologue
    .line 116
    iget-object v3, p0, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->mAppContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 120
    .local v2, "res":Landroid/content/res/Resources;
    sget v1, Lorg/chromium/ui/R$dimen;->config_min_scaling_span:I

    .line 122
    .local v1, "id":I
    :try_start_0
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 125
    :goto_0
    return v3

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    sget-boolean v3, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "MinScalingSpan resource lookup failed."

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 125
    :cond_0
    const/4 v3, 0x5

    const/high16 v4, 0x41400000    # 12.0f

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    goto :goto_0
.end method

.method private static getScrollFriction()F
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 87
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    return v0
.end method

.method private static getTapTimeout()I
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 82
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    return v0
.end method

.method private getTouchSlop()F
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->mViewConfiguration:Landroid/view/ViewConfiguration;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->toDips(I)F

    move-result v0

    return v0
.end method

.method private native nativeUpdateSharedViewConfiguration(FFFFF)V
.end method

.method private registerListener()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->mAppContext:Landroid/content/Context;

    new-instance v1, Lorg/chromium/ui/gfx/ViewConfigurationHelper$1;

    invoke-direct {v1, p0}, Lorg/chromium/ui/gfx/ViewConfigurationHelper$1;-><init>(Lorg/chromium/ui/gfx/ViewConfigurationHelper;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 53
    return-void
.end method

.method private toDips(I)F
    .locals 2
    .param p1, "pixels"    # I

    .prologue
    .line 134
    int-to-float v0, p1

    iget v1, p0, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->mDensity:F

    div-float/2addr v0, v1

    return v0
.end method

.method private updateNativeViewConfigurationIfNecessary()V
    .locals 7

    .prologue
    .line 56
    iget-object v0, p0, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    .line 57
    .local v6, "configuration":Landroid/view/ViewConfiguration;
    iget-object v0, p0, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->mViewConfiguration:Landroid/view/ViewConfiguration;

    if-ne v0, v6, :cond_0

    .line 59
    sget-boolean v0, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget v0, p0, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->mDensity:F

    iget-object v1, p0, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 63
    :cond_0
    iput-object v6, p0, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->mViewConfiguration:Landroid/view/ViewConfiguration;

    .line 64
    iget-object v0, p0, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->mDensity:F

    .line 65
    sget-boolean v0, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget v0, p0, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->mDensity:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 66
    :cond_1
    invoke-direct {p0}, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->getMaximumFlingVelocity()F

    move-result v1

    invoke-direct {p0}, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->getMinimumFlingVelocity()F

    move-result v2

    invoke-direct {p0}, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->getTouchSlop()F

    move-result v3

    invoke-direct {p0}, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->getDoubleTapSlop()F

    move-result v4

    invoke-direct {p0}, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->getMinScalingSpan()F

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->nativeUpdateSharedViewConfiguration(FFFFF)V

    .line 68
    :cond_2
    return-void
.end method
