.class public Lorg/chromium/ui/resources/sprites/CrushedSpriteResourceLoader;
.super Ljava/lang/Object;
.source "CrushedSpriteResourceLoader.java"


# instance fields
.field private final mCallback:Lorg/chromium/ui/resources/ResourceLoader$ResourceLoaderCallback;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Lorg/chromium/ui/resources/ResourceLoader$ResourceLoaderCallback;Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "callback"    # Lorg/chromium/ui/resources/ResourceLoader$ResourceLoaderCallback;
    .param p2, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/chromium/ui/resources/sprites/CrushedSpriteResourceLoader;->mCallback:Lorg/chromium/ui/resources/ResourceLoader$ResourceLoaderCallback;

    .line 30
    iput-object p2, p0, Lorg/chromium/ui/resources/sprites/CrushedSpriteResourceLoader;->mResources:Landroid/content/res/Resources;

    .line 31
    return-void
.end method


# virtual methods
.method public loadResource(II)V
    .locals 3
    .param p1, "bitmapResId"    # I
    .param p2, "metadataResId"    # I

    .prologue
    .line 41
    new-instance v0, Lorg/chromium/ui/resources/sprites/CrushedSpriteResource;

    iget-object v1, p0, Lorg/chromium/ui/resources/sprites/CrushedSpriteResourceLoader;->mResources:Landroid/content/res/Resources;

    invoke-direct {v0, p1, p2, v1}, Lorg/chromium/ui/resources/sprites/CrushedSpriteResource;-><init>(IILandroid/content/res/Resources;)V

    .line 43
    .local v0, "resource":Lorg/chromium/ui/resources/sprites/CrushedSpriteResource;
    iget-object v1, p0, Lorg/chromium/ui/resources/sprites/CrushedSpriteResourceLoader;->mCallback:Lorg/chromium/ui/resources/ResourceLoader$ResourceLoaderCallback;

    const/4 v2, 0x4

    invoke-interface {v1, v2, p1, v0}, Lorg/chromium/ui/resources/ResourceLoader$ResourceLoaderCallback;->onResourceLoaded(IILorg/chromium/ui/resources/Resource;)V

    .line 44
    return-void
.end method

.method public reloadResource(I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "bitmapResId"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lorg/chromium/ui/resources/sprites/CrushedSpriteResourceLoader;->mResources:Landroid/content/res/Resources;

    invoke-static {p1, v0}, Lorg/chromium/ui/resources/sprites/CrushedSpriteResource;->loadBitmap(ILandroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
