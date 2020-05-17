.class public Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;
.super Ljava/lang/Object;
.source "CropImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/theartofdev/edmodo/cropper/CropImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CropResult"
.end annotation


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;

.field private final mCropPoints:[F

.field private final mCropRect:Landroid/graphics/Rect;

.field private final mError:Ljava/lang/Exception;

.field private final mOriginalBitmap:Landroid/graphics/Bitmap;

.field private final mOriginalUri:Landroid/net/Uri;

.field private final mRotation:I

.field private final mSampleSize:I

.field private final mUri:Landroid/net/Uri;

.field private final mWholeImageRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/graphics/Bitmap;Landroid/net/Uri;Ljava/lang/Exception;[FLandroid/graphics/Rect;Landroid/graphics/Rect;II)V
    .locals 0

    .line 2054
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2055
    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;->mOriginalBitmap:Landroid/graphics/Bitmap;

    .line 2056
    iput-object p2, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;->mOriginalUri:Landroid/net/Uri;

    .line 2057
    iput-object p3, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;->mBitmap:Landroid/graphics/Bitmap;

    .line 2058
    iput-object p4, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;->mUri:Landroid/net/Uri;

    .line 2059
    iput-object p5, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;->mError:Ljava/lang/Exception;

    .line 2060
    iput-object p6, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;->mCropPoints:[F

    .line 2061
    iput-object p7, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;->mCropRect:Landroid/graphics/Rect;

    .line 2062
    iput-object p8, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;->mWholeImageRect:Landroid/graphics/Rect;

    .line 2063
    iput p9, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;->mRotation:I

    .line 2064
    iput p10, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;->mSampleSize:I

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 2093
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getCropPoints()[F
    .locals 1

    .line 2111
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;->mCropPoints:[F

    return-object v0
.end method

.method public getCropRect()Landroid/graphics/Rect;
    .locals 1

    .line 2116
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;->mCropRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getError()Ljava/lang/Exception;
    .locals 1

    .line 2106
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;->mError:Ljava/lang/Exception;

    return-object v0
.end method

.method public getOriginalBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 2072
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;->mOriginalBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getOriginalUri()Landroid/net/Uri;
    .locals 1

    .line 2080
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;->mOriginalUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getRotation()I
    .locals 1

    .line 2126
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;->mRotation:I

    return v0
.end method

.method public getSampleSize()I
    .locals 1

    .line 2131
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;->mSampleSize:I

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 2101
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getWholeImageRect()Landroid/graphics/Rect;
    .locals 1

    .line 2121
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;->mWholeImageRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public isSuccessful()Z
    .locals 1

    .line 2085
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropImageView$CropResult;->mError:Ljava/lang/Exception;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
