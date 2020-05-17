.class public Lorg/chromium/ui/resources/system/SystemResourceLoader;
.super Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader;
.source "SystemResourceLoader.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final COS_PI_OVER_6:F = 0.866f

.field private static final SIN_PI_OVER_6:F = 0.5f


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lorg/chromium/ui/resources/system/SystemResourceLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/ui/resources/system/SystemResourceLoader;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(ILorg/chromium/ui/resources/ResourceLoader$ResourceLoaderCallback;I)V
    .locals 1
    .param p1, "resourceType"    # I
    .param p2, "callback"    # Lorg/chromium/ui/resources/ResourceLoader$ResourceLoaderCallback;
    .param p3, "minScreenSideLengthPx"    # I

    .prologue
    .line 35
    new-instance v0, Lorg/chromium/ui/resources/system/SystemResourceLoader$1;

    invoke-direct {v0, p3}, Lorg/chromium/ui/resources/system/SystemResourceLoader$1;-><init>(I)V

    invoke-direct {p0, p1, p2, v0}, Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader;-><init>(ILorg/chromium/ui/resources/ResourceLoader$ResourceLoaderCallback;Lorg/chromium/ui/resources/async/AsyncPreloadResourceLoader$ResourceCreator;)V

    .line 41
    return-void
.end method

.method static synthetic access$000(II)Lorg/chromium/ui/resources/Resource;
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .prologue
    .line 22
    invoke-static {p0, p1}, Lorg/chromium/ui/resources/system/SystemResourceLoader;->createResource(II)Lorg/chromium/ui/resources/Resource;

    move-result-object v0

    return-object v0
.end method

.method private static createOverscrollGlowLBitmap(I)Lorg/chromium/ui/resources/Resource;
    .locals 15
    .param p0, "minScreenSideLengthPx"    # I

    .prologue
    const/4 v4, 0x1

    const/high16 v14, 0x3f000000    # 0.5f

    const/high16 v3, 0x40000000    # 2.0f

    .line 61
    int-to-float v2, p0

    mul-float/2addr v2, v14

    div-float v10, v2, v14

    .line 62
    .local v10, "arcWidth":F
    const v2, 0x3f5db22d    # 0.866f

    mul-float v13, v2, v10

    .line 63
    .local v13, "y":F
    sub-float v12, v10, v13

    .line 65
    .local v12, "height":F
    neg-float v2, v10

    div-float v8, v2, v3

    .line 66
    .local v8, "arcRectX":F
    neg-float v2, v10

    sub-float v9, v2, v13

    .line 67
    .local v9, "arcRectY":F
    mul-float v7, v10, v3

    .line 68
    .local v7, "arcRectWidth":F
    mul-float v6, v10, v3

    .line 69
    .local v6, "arcRectHeight":F
    new-instance v1, Landroid/graphics/RectF;

    add-float v2, v8, v7

    add-float v3, v9, v6

    invoke-direct {v1, v8, v9, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 72
    .local v1, "arcRect":Landroid/graphics/RectF;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 73
    .local v5, "arcPaint":Landroid/graphics/Paint;
    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 74
    const/16 v2, 0xbb

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 75
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 77
    float-to-int v2, v10

    float-to-int v3, v12

    sget-object v14, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 78
    .local v11, "bitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 79
    .local v0, "canvas":Landroid/graphics/Canvas;
    const/high16 v2, 0x42340000    # 45.0f

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 81
    new-instance v2, Lorg/chromium/ui/resources/statics/StaticResource;

    invoke-direct {v2, v11}, Lorg/chromium/ui/resources/statics/StaticResource;-><init>(Landroid/graphics/Bitmap;)V

    return-object v2
.end method

.method private static createResource(II)Lorg/chromium/ui/resources/Resource;
    .locals 4
    .param p0, "minScreenSideLengthPx"    # I
    .param p1, "resId"    # I

    .prologue
    const/16 v3, 0x80

    .line 44
    packed-switch p1, :pswitch_data_0

    .line 55
    sget-boolean v0, Lorg/chromium/ui/resources/system/SystemResourceLoader;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 46
    :pswitch_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "android:drawable/overscroll_edge"

    invoke-static {v1}, Lorg/chromium/ui/resources/system/SystemResourceLoader;->getResourceId(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xc

    invoke-static {v0, v1, v3, v2}, Lorg/chromium/ui/resources/statics/StaticResource;->create(Landroid/content/res/Resources;III)Lorg/chromium/ui/resources/statics/StaticResource;

    move-result-object v0

    .line 57
    :goto_0
    return-object v0

    .line 49
    :pswitch_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "android:drawable/overscroll_glow"

    invoke-static {v1}, Lorg/chromium/ui/resources/system/SystemResourceLoader;->getResourceId(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x40

    invoke-static {v0, v1, v3, v2}, Lorg/chromium/ui/resources/statics/StaticResource;->create(Landroid/content/res/Resources;III)Lorg/chromium/ui/resources/statics/StaticResource;

    move-result-object v0

    goto :goto_0

    .line 52
    :pswitch_2
    invoke-static {p0}, Lorg/chromium/ui/resources/system/SystemResourceLoader;->createOverscrollGlowLBitmap(I)Lorg/chromium/ui/resources/Resource;

    move-result-object v0

    goto :goto_0

    .line 57
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 44
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static getResourceId(Ljava/lang/String;)I
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 86
    .local v0, "systemResources":Landroid/content/res/Resources;
    invoke-virtual {v0, p0, v1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method
