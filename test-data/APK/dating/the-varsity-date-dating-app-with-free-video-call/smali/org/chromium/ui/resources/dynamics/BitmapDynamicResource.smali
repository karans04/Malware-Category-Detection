.class public Lorg/chromium/ui/resources/dynamics/BitmapDynamicResource;
.super Ljava/lang/Object;
.source "BitmapDynamicResource.java"

# interfaces
.implements Lorg/chromium/ui/resources/dynamics/DynamicResource;


# static fields
.field private static final EMPTY_RECT:Landroid/graphics/Rect;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mIsDirty:Z

.field private final mResId:I

.field private final mSize:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lorg/chromium/ui/resources/dynamics/BitmapDynamicResource;->EMPTY_RECT:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "resourceId"    # I

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/chromium/ui/resources/dynamics/BitmapDynamicResource;->mSize:Landroid/graphics/Rect;

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/ui/resources/dynamics/BitmapDynamicResource;->mIsDirty:Z

    .line 22
    iput p1, p0, Lorg/chromium/ui/resources/dynamics/BitmapDynamicResource;->mResId:I

    .line 23
    return-void
.end method


# virtual methods
.method public getAperture()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lorg/chromium/ui/resources/dynamics/BitmapDynamicResource;->EMPTY_RECT:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/ui/resources/dynamics/BitmapDynamicResource;->mIsDirty:Z

    .line 48
    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/BitmapDynamicResource;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getBitmapSize()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/BitmapDynamicResource;->mSize:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getPadding()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lorg/chromium/ui/resources/dynamics/BitmapDynamicResource;->EMPTY_RECT:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getResId()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lorg/chromium/ui/resources/dynamics/BitmapDynamicResource;->mResId:I

    return v0
.end method

.method public isDirty()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lorg/chromium/ui/resources/dynamics/BitmapDynamicResource;->mIsDirty:Z

    return v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x0

    .line 38
    if-nez p1, :cond_0

    .line 43
    :goto_0
    return-void

    .line 39
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/ui/resources/dynamics/BitmapDynamicResource;->mIsDirty:Z

    .line 40
    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/BitmapDynamicResource;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/BitmapDynamicResource;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 41
    :cond_1
    iput-object p1, p0, Lorg/chromium/ui/resources/dynamics/BitmapDynamicResource;->mBitmap:Landroid/graphics/Bitmap;

    .line 42
    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/BitmapDynamicResource;->mSize:Landroid/graphics/Rect;

    iget-object v1, p0, Lorg/chromium/ui/resources/dynamics/BitmapDynamicResource;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lorg/chromium/ui/resources/dynamics/BitmapDynamicResource;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method
