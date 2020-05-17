.class public abstract Lcom/google/android/gms/common/images/ImageRequest;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/images/ImageRequest$zza;,
        Lcom/google/android/gms/common/images/ImageRequest$TextViewImageRequest;,
        Lcom/google/android/gms/common/images/ImageRequest$ListenerImageRequest;,
        Lcom/google/android/gms/common/images/ImageRequest$ImageViewImageRequest;,
        Lcom/google/android/gms/common/images/ImageRequest$PostProcessingFlags;
    }
.end annotation


# instance fields
.field protected mLoadingPlaceholderResId:I

.field protected mNoDataPlaceholderResId:I

.field protected mOnImageLoadedListener:Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;

.field protected mPostProcessingFlags:I

.field protected mUseNewDrawable:Z

.field final zzpk:Lcom/google/android/gms/common/images/ImageRequest$zza;

.field private zzpl:Z

.field private zzpm:Z

.field private zzpn:Z


# direct methods
.method public constructor <init>(Landroid/net/Uri;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/common/images/ImageRequest;->mLoadingPlaceholderResId:I

    iput v0, p0, Lcom/google/android/gms/common/images/ImageRequest;->mNoDataPlaceholderResId:I

    iput-boolean v0, p0, Lcom/google/android/gms/common/images/ImageRequest;->mUseNewDrawable:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/common/images/ImageRequest;->zzpl:Z

    iput-boolean v0, p0, Lcom/google/android/gms/common/images/ImageRequest;->zzpm:Z

    iput-boolean v1, p0, Lcom/google/android/gms/common/images/ImageRequest;->zzpn:Z

    new-instance v0, Lcom/google/android/gms/common/images/ImageRequest$zza;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/images/ImageRequest$zza;-><init>(Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/google/android/gms/common/images/ImageRequest;->zzpk:Lcom/google/android/gms/common/images/ImageRequest$zza;

    iput p2, p0, Lcom/google/android/gms/common/images/ImageRequest;->mNoDataPlaceholderResId:I

    return-void
.end method

.method private final zza(Landroid/content/Context;Lcom/google/android/gms/common/images/internal/PostProcessedResourceCache;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Lcom/google/android/gms/common/images/ImageRequest;->mPostProcessingFlags:I

    if-lez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/common/images/internal/PostProcessedResourceCache$PostProcessedResource;

    iget v1, p0, Lcom/google/android/gms/common/images/ImageRequest;->mPostProcessingFlags:I

    invoke-direct {v0, p3, v1}, Lcom/google/android/gms/common/images/internal/PostProcessedResourceCache$PostProcessedResource;-><init>(II)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/common/images/internal/PostProcessedResourceCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iget v1, p0, Lcom/google/android/gms/common/images/ImageRequest;->mPostProcessingFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, p3}, Lcom/google/android/gms/common/images/ImageRequest;->frameDrawableInCircle(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    move-object v1, p1

    goto :goto_0

    :cond_0
    move-object v1, p3

    :goto_0
    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/common/images/internal/PostProcessedResourceCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1

    :cond_2
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected createTransitionDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;

    invoke-virtual {p1}, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;->getEndDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    new-instance v0, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/common/images/internal/CrossFadingDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method protected frameDrawableInCircle(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-static {p1, p2}, Lcom/google/android/gms/common/images/internal/ImageUtils;->frameDrawableInCircle(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method protected abstract loadImage(Landroid/graphics/drawable/Drawable;ZZZ)V
.end method

.method public setCrossFadeAlwaysEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/common/images/ImageRequest;->zzpm:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/images/ImageRequest;->setCrossFadeEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setCrossFadeEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/common/images/ImageRequest;->zzpl:Z

    return-void
.end method

.method public setLoadingPlaceholder(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/common/images/ImageRequest;->mLoadingPlaceholderResId:I

    return-void
.end method

.method public setLoadingPlaceholderEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/common/images/ImageRequest;->zzpn:Z

    return-void
.end method

.method public setNoDataPlaceholder(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/common/images/ImageRequest;->mNoDataPlaceholderResId:I

    return-void
.end method

.method public setOnImageLoadedListener(Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/images/ImageRequest;->mOnImageLoadedListener:Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;

    return-void
.end method

.method public setPostProcessingFlags(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/common/images/ImageRequest;->mPostProcessingFlags:I

    return-void
.end method

.method public setUseNewDrawable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/common/images/ImageRequest;->mUseNewDrawable:Z

    return-void
.end method

.method protected shouldCrossFade(ZZ)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/common/images/ImageRequest;->zzpl:Z

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/google/android/gms/common/images/ImageRequest;->zzpm:Z

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method final zza(Landroid/content/Context;Landroid/graphics/Bitmap;Z)V
    .locals 2

    invoke-static {p2}, Lcom/google/android/gms/common/internal/Asserts;->checkNotNull(Ljava/lang/Object;)V

    iget v0, p0, Lcom/google/android/gms/common/images/ImageRequest;->mPostProcessingFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/google/android/gms/common/images/internal/ImageUtils;->frameBitmapInCircle(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/google/android/gms/common/images/ImageRequest;->mOnImageLoadedListener:Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/common/images/ImageRequest;->mOnImageLoadedListener:Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;

    iget-object p2, p0, Lcom/google/android/gms/common/images/ImageRequest;->zzpk:Lcom/google/android/gms/common/images/ImageRequest$zza;

    iget-object p2, p2, Lcom/google/android/gms/common/images/ImageRequest$zza;->uri:Landroid/net/Uri;

    invoke-interface {p1, p2, v0, v1}, Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;->onImageLoaded(Landroid/net/Uri;Landroid/graphics/drawable/Drawable;Z)V

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, v0, p3, p1, v1}, Lcom/google/android/gms/common/images/ImageRequest;->loadImage(Landroid/graphics/drawable/Drawable;ZZZ)V

    return-void
.end method

.method final zza(Landroid/content/Context;Lcom/google/android/gms/common/images/internal/PostProcessedResourceCache;)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/common/images/ImageRequest;->zzpn:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/gms/common/images/ImageRequest;->mLoadingPlaceholderResId:I

    if-eqz v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/common/images/ImageRequest;->mLoadingPlaceholderResId:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/common/images/ImageRequest;->zza(Landroid/content/Context;Lcom/google/android/gms/common/images/internal/PostProcessedResourceCache;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-virtual {p0, v0, p2, p1, p2}, Lcom/google/android/gms/common/images/ImageRequest;->loadImage(Landroid/graphics/drawable/Drawable;ZZZ)V

    :cond_1
    return-void
.end method

.method final zza(Landroid/content/Context;Lcom/google/android/gms/common/images/internal/PostProcessedResourceCache;Z)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/common/images/ImageRequest;->mNoDataPlaceholderResId:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/common/images/ImageRequest;->mNoDataPlaceholderResId:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/common/images/ImageRequest;->zza(Landroid/content/Context;Lcom/google/android/gms/common/images/internal/PostProcessedResourceCache;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/common/images/ImageRequest;->mOnImageLoadedListener:Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/common/images/ImageRequest;->mOnImageLoadedListener:Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;

    iget-object v1, p0, Lcom/google/android/gms/common/images/ImageRequest;->zzpk:Lcom/google/android/gms/common/images/ImageRequest$zza;

    iget-object v1, v1, Lcom/google/android/gms/common/images/ImageRequest$zza;->uri:Landroid/net/Uri;

    invoke-interface {p2, v1, p1, v0}, Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;->onImageLoaded(Landroid/net/Uri;Landroid/graphics/drawable/Drawable;Z)V

    :cond_1
    invoke-virtual {p0, p1, p3, v0, v0}, Lcom/google/android/gms/common/images/ImageRequest;->loadImage(Landroid/graphics/drawable/Drawable;ZZZ)V

    return-void
.end method
