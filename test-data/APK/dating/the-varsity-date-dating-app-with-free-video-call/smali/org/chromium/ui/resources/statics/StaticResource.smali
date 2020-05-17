.class public Lorg/chromium/ui/resources/statics/StaticResource;
.super Ljava/lang/Object;
.source "StaticResource.java"

# interfaces
.implements Lorg/chromium/ui/resources/Resource;


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;

.field private final mBitmapSize:Landroid/graphics/Rect;

.field private final mNinePatchData:Lorg/chromium/ui/resources/statics/NinePatchData;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/chromium/ui/resources/statics/StaticResource;->mBitmap:Landroid/graphics/Bitmap;

    .line 33
    iget-object v0, p0, Lorg/chromium/ui/resources/statics/StaticResource;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lorg/chromium/ui/resources/statics/NinePatchData;->create(Landroid/graphics/Bitmap;)Lorg/chromium/ui/resources/statics/NinePatchData;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/ui/resources/statics/StaticResource;->mNinePatchData:Lorg/chromium/ui/resources/statics/NinePatchData;

    .line 34
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lorg/chromium/ui/resources/statics/StaticResource;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lorg/chromium/ui/resources/statics/StaticResource;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lorg/chromium/ui/resources/statics/StaticResource;->mBitmapSize:Landroid/graphics/Rect;

    .line 35
    return-void
.end method

.method public static create(Landroid/content/res/Resources;III)Lorg/chromium/ui/resources/statics/StaticResource;
    .locals 2
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I
    .param p2, "fitWidth"    # I
    .param p3, "fitHeight"    # I

    .prologue
    const/4 v1, 0x0

    .line 74
    if-gtz p1, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-object v1

    .line 75
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lorg/chromium/ui/resources/statics/StaticResource;->decodeBitmap(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 76
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    invoke-static {p0, p1, p2, p3}, Lorg/chromium/ui/resources/statics/StaticResource;->decodeDrawable(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 77
    :cond_2
    if-eqz v0, :cond_0

    .line 79
    new-instance v1, Lorg/chromium/ui/resources/statics/StaticResource;

    invoke-direct {v1, v0}, Lorg/chromium/ui/resources/statics/StaticResource;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private static createOptions(Landroid/content/res/Resources;III)Landroid/graphics/BitmapFactory$Options;
    .locals 5
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I
    .param p2, "fitWidth"    # I
    .param p3, "fitHeight"    # I

    .prologue
    .line 117
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 118
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 119
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-object v1

    .line 121
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 122
    invoke-static {p0, p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 123
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 125
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gt v3, p3, :cond_2

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le v3, p2, :cond_0

    .line 127
    :cond_2
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v3, v3

    int-to-float v4, p3

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 128
    .local v0, "heightRatio":I
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v3, v3

    int-to-float v4, p2

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 129
    .local v2, "widthRatio":I
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_0
.end method

.method private static decodeBitmap(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I
    .param p2, "fitWidth"    # I
    .param p3, "fitHeight"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 84
    invoke-static {p0, p1, p2, p3}, Lorg/chromium/ui/resources/statics/StaticResource;->createOptions(Landroid/content/res/Resources;III)Landroid/graphics/BitmapFactory$Options;

    move-result-object v3

    .line 85
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v5, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 86
    invoke-static {p0, p1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 88
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    move-object v0, v4

    .line 96
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object v0

    .line 89
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    iget-object v6, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    if-eq v5, v6, :cond_0

    .line 91
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iget-object v7, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 93
    .local v2, "convertedBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 94
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1, v0, v8, v8, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 95
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    move-object v0, v2

    .line 96
    goto :goto_0
.end method

.method private static decodeDrawable(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I
    .param p2, "fitWidth"    # I
    .param p3, "fitHeight"    # I

    .prologue
    .line 102
    :try_start_0
    invoke-static {p0, p1}, Lorg/chromium/base/ApiCompatibilityUtils;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 103
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v6

    const/4 v7, 0x1

    invoke-static {p2, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 104
    .local v5, "width":I
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v6

    const/4 v7, 0x1

    invoke-static {p3, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 105
    .local v4, "height":I
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v4, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 106
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 107
    .local v1, "canvas":Landroid/graphics/Canvas;
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7, v5, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 108
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v4    # "height":I
    .end local v5    # "width":I
    :goto_0
    return-object v0

    .line 110
    :catch_0
    move-exception v3

    .line 111
    .local v3, "ex":Landroid/content/res/Resources$NotFoundException;
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getAperture()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/chromium/ui/resources/statics/StaticResource;->mNinePatchData:Lorg/chromium/ui/resources/statics/NinePatchData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/ui/resources/statics/StaticResource;->mNinePatchData:Lorg/chromium/ui/resources/statics/NinePatchData;

    invoke-virtual {v0}, Lorg/chromium/ui/resources/statics/NinePatchData;->getAperture()Landroid/graphics/Rect;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/ui/resources/statics/StaticResource;->mBitmapSize:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/chromium/ui/resources/statics/StaticResource;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getBitmapSize()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/chromium/ui/resources/statics/StaticResource;->mBitmapSize:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getPadding()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/chromium/ui/resources/statics/StaticResource;->mNinePatchData:Lorg/chromium/ui/resources/statics/NinePatchData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/ui/resources/statics/StaticResource;->mNinePatchData:Lorg/chromium/ui/resources/statics/NinePatchData;

    invoke-virtual {v0}, Lorg/chromium/ui/resources/statics/NinePatchData;->getPadding()Landroid/graphics/Rect;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/ui/resources/statics/StaticResource;->mBitmapSize:Landroid/graphics/Rect;

    goto :goto_0
.end method
