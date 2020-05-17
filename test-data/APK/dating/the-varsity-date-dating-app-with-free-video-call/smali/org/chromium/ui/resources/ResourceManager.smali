.class public Lorg/chromium/ui/resources/ResourceManager;
.super Ljava/lang/Object;
.source "ResourceManager.java"

# interfaces
.implements Lorg/chromium/ui/resources/ResourceLoader$ResourceLoaderCallback;


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "ui"
.end annotation

.annotation build Lorg/chromium/base/annotations/MainDex;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mCrushedSpriteResourceLoader:Lorg/chromium/ui/resources/sprites/CrushedSpriteResourceLoader;

.field private final mLoadedResources:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Lorg/chromium/ui/resources/LayoutResource;",
            ">;>;"
        }
    .end annotation
.end field

.field private mNativeResourceManagerPtr:J

.field private final mPxToDp:F

.field private final mResourceLoaders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lorg/chromium/ui/resources/ResourceLoader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lorg/chromium/ui/resources/ResourceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/ui/resources/ResourceManager;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/res/Resources;IJ)V
    .locals 3
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "minScreenSideLength"    # I
    .param p3, "staticResourceManagerPtr"    # J

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/chromium/ui/resources/ResourceManager;->mResourceLoaders:Landroid/util/SparseArray;

    .line 34
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/chromium/ui/resources/ResourceManager;->mLoadedResources:Landroid/util/SparseArray;

    .line 44
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/chromium/ui/resources/ResourceManager;->mPxToDp:F

    .line 46
    new-instance v0, Lorg/chromium/ui/resources/statics/StaticResourceLoader;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lorg/chromium/ui/resources/statics/StaticResourceLoader;-><init>(ILorg/chromium/ui/resources/ResourceLoader$ResourceLoaderCallback;Landroid/content/res/Resources;)V

    invoke-direct {p0, v0}, Lorg/chromium/ui/resources/ResourceManager;->registerResourceLoader(Lorg/chromium/ui/resources/ResourceLoader;)V

    .line 48
    new-instance v0, Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;-><init>(ILorg/chromium/ui/resources/ResourceLoader$ResourceLoaderCallback;)V

    invoke-direct {p0, v0}, Lorg/chromium/ui/resources/ResourceManager;->registerResourceLoader(Lorg/chromium/ui/resources/ResourceLoader;)V

    .line 50
    new-instance v0, Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;-><init>(ILorg/chromium/ui/resources/ResourceLoader$ResourceLoaderCallback;)V

    invoke-direct {p0, v0}, Lorg/chromium/ui/resources/ResourceManager;->registerResourceLoader(Lorg/chromium/ui/resources/ResourceLoader;)V

    .line 52
    new-instance v0, Lorg/chromium/ui/resources/system/SystemResourceLoader;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0, p2}, Lorg/chromium/ui/resources/system/SystemResourceLoader;-><init>(ILorg/chromium/ui/resources/ResourceLoader$ResourceLoaderCallback;I)V

    invoke-direct {p0, v0}, Lorg/chromium/ui/resources/ResourceManager;->registerResourceLoader(Lorg/chromium/ui/resources/ResourceLoader;)V

    .line 54
    new-instance v0, Lorg/chromium/ui/resources/sprites/CrushedSpriteResourceLoader;

    invoke-direct {v0, p0, p1}, Lorg/chromium/ui/resources/sprites/CrushedSpriteResourceLoader;-><init>(Lorg/chromium/ui/resources/ResourceLoader$ResourceLoaderCallback;Landroid/content/res/Resources;)V

    iput-object v0, p0, Lorg/chromium/ui/resources/ResourceManager;->mCrushedSpriteResourceLoader:Lorg/chromium/ui/resources/sprites/CrushedSpriteResourceLoader;

    .line 56
    iput-wide p3, p0, Lorg/chromium/ui/resources/ResourceManager;->mNativeResourceManagerPtr:J

    .line 57
    return-void
.end method

.method private static create(Lorg/chromium/ui/base/WindowAndroid;J)Lorg/chromium/ui/resources/ResourceManager;
    .locals 9
    .param p0, "windowAndroid"    # Lorg/chromium/ui/base/WindowAndroid;
    .param p1, "staticResourceManagerPtr"    # J
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 69
    invoke-virtual {p0}, Lorg/chromium/ui/base/WindowAndroid;->getContext()Ljava/lang/ref/WeakReference;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 72
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 73
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Context should not be null during initialization."

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 76
    :cond_0
    invoke-static {v0}, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->create(Landroid/content/Context;)Lorg/chromium/ui/gfx/DeviceDisplayInfo;

    move-result-object v1

    .line 77
    .local v1, "displayInfo":Lorg/chromium/ui/gfx/DeviceDisplayInfo;
    invoke-virtual {v1}, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->getPhysicalDisplayWidth()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v1}, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->getPhysicalDisplayWidth()I

    move-result v5

    .line 80
    .local v5, "screenWidth":I
    :goto_0
    invoke-virtual {v1}, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->getPhysicalDisplayHeight()I

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v1}, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->getPhysicalDisplayHeight()I

    move-result v4

    .line 83
    .local v4, "screenHeight":I
    :goto_1
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 85
    .local v2, "minScreenSideLength":I
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 86
    .local v3, "resources":Landroid/content/res/Resources;
    new-instance v6, Lorg/chromium/ui/resources/ResourceManager;

    invoke-direct {v6, v3, v2, p1, p2}, Lorg/chromium/ui/resources/ResourceManager;-><init>(Landroid/content/res/Resources;IJ)V

    return-object v6

    .line 77
    .end local v2    # "minScreenSideLength":I
    .end local v3    # "resources":Landroid/content/res/Resources;
    .end local v4    # "screenHeight":I
    .end local v5    # "screenWidth":I
    :cond_1
    invoke-virtual {v1}, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->getDisplayWidth()I

    move-result v5

    goto :goto_0

    .line 80
    .restart local v5    # "screenWidth":I
    :cond_2
    invoke-virtual {v1}, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->getDisplayHeight()I

    move-result v4

    goto :goto_1
.end method

.method private crushedSpriteResourceRequested(IIZ)V
    .locals 4
    .param p1, "bitmapResId"    # I
    .param p2, "metatadataResId"    # I
    .param p3, "reloading"    # Z
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 200
    if-eqz p3, :cond_1

    .line 201
    iget-object v1, p0, Lorg/chromium/ui/resources/ResourceManager;->mCrushedSpriteResourceLoader:Lorg/chromium/ui/resources/sprites/CrushedSpriteResourceLoader;

    invoke-virtual {v1, p1}, Lorg/chromium/ui/resources/sprites/CrushedSpriteResourceLoader;->reloadResource(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 202
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 203
    iget-wide v2, p0, Lorg/chromium/ui/resources/ResourceManager;->mNativeResourceManagerPtr:J

    invoke-direct {p0, v2, v3, p1, v0}, Lorg/chromium/ui/resources/ResourceManager;->nativeOnCrushedSpriteResourceReloaded(JILandroid/graphics/Bitmap;)V

    .line 209
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    iget-object v1, p0, Lorg/chromium/ui/resources/ResourceManager;->mCrushedSpriteResourceLoader:Lorg/chromium/ui/resources/sprites/CrushedSpriteResourceLoader;

    invoke-virtual {v1, p1, p2}, Lorg/chromium/ui/resources/sprites/CrushedSpriteResourceLoader;->loadResource(II)V

    goto :goto_0
.end method

.method private destroy()V
    .locals 4
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 181
    sget-boolean v0, Lorg/chromium/ui/resources/ResourceManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/ui/resources/ResourceManager;->mNativeResourceManagerPtr:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 182
    :cond_0
    iput-wide v2, p0, Lorg/chromium/ui/resources/ResourceManager;->mNativeResourceManagerPtr:J

    .line 183
    return-void
.end method

.method private getNativePtr()J
    .locals 2
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 213
    iget-wide v0, p0, Lorg/chromium/ui/resources/ResourceManager;->mNativeResourceManagerPtr:J

    return-wide v0
.end method

.method private native nativeOnCrushedSpriteResourceReady(JILandroid/graphics/Bitmap;[[IIIFF)V
.end method

.method private native nativeOnCrushedSpriteResourceReloaded(JILandroid/graphics/Bitmap;)V
.end method

.method private native nativeOnResourceReady(JIILandroid/graphics/Bitmap;IIIIIIII)V
.end method

.method private preloadResource(II)V
    .locals 2
    .param p1, "resType"    # I
    .param p2, "resId"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 193
    iget-object v1, p0, Lorg/chromium/ui/resources/ResourceManager;->mResourceLoaders:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/resources/ResourceLoader;

    .line 194
    .local v0, "loader":Lorg/chromium/ui/resources/ResourceLoader;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lorg/chromium/ui/resources/ResourceLoader;->preloadResource(I)V

    .line 195
    :cond_0
    return-void
.end method

.method private registerResourceLoader(Lorg/chromium/ui/resources/ResourceLoader;)V
    .locals 2
    .param p1, "loader"    # Lorg/chromium/ui/resources/ResourceLoader;

    .prologue
    .line 217
    iget-object v0, p0, Lorg/chromium/ui/resources/ResourceManager;->mResourceLoaders:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lorg/chromium/ui/resources/ResourceLoader;->getResourceType()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 218
    return-void
.end method

.method private resourceRequested(II)V
    .locals 2
    .param p1, "resType"    # I
    .param p2, "resId"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 187
    iget-object v1, p0, Lorg/chromium/ui/resources/ResourceManager;->mResourceLoaders:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/resources/ResourceLoader;

    .line 188
    .local v0, "loader":Lorg/chromium/ui/resources/ResourceLoader;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lorg/chromium/ui/resources/ResourceLoader;->loadResource(I)V

    .line 189
    :cond_0
    return-void
.end method

.method private saveMetadataForLoadedResource(IILorg/chromium/ui/resources/Resource;)V
    .locals 3
    .param p1, "resType"    # I
    .param p2, "resId"    # I
    .param p3, "resource"    # Lorg/chromium/ui/resources/Resource;

    .prologue
    .line 171
    iget-object v1, p0, Lorg/chromium/ui/resources/ResourceManager;->mLoadedResources:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 172
    .local v0, "bucket":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lorg/chromium/ui/resources/LayoutResource;>;"
    if-nez v0, :cond_0

    .line 173
    new-instance v0, Landroid/util/SparseArray;

    .end local v0    # "bucket":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lorg/chromium/ui/resources/LayoutResource;>;"
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 174
    .restart local v0    # "bucket":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lorg/chromium/ui/resources/LayoutResource;>;"
    iget-object v1, p0, Lorg/chromium/ui/resources/ResourceManager;->mLoadedResources:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 176
    :cond_0
    new-instance v1, Lorg/chromium/ui/resources/LayoutResource;

    iget v2, p0, Lorg/chromium/ui/resources/ResourceManager;->mPxToDp:F

    invoke-direct {v1, v2, p3}, Lorg/chromium/ui/resources/LayoutResource;-><init>(FLorg/chromium/ui/resources/Resource;)V

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 177
    return-void
.end method


# virtual methods
.method public getBitmapDynamicResourceLoader()Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lorg/chromium/ui/resources/ResourceManager;->mResourceLoaders:Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;

    return-object v0
.end method

.method public getDynamicResourceLoader()Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lorg/chromium/ui/resources/ResourceManager;->mResourceLoaders:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;

    return-object v0
.end method

.method public getResource(II)Lorg/chromium/ui/resources/LayoutResource;
    .locals 2
    .param p1, "resType"    # I
    .param p2, "resId"    # I

    .prologue
    .line 135
    iget-object v1, p0, Lorg/chromium/ui/resources/ResourceManager;->mLoadedResources:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 136
    .local v0, "bucket":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lorg/chromium/ui/resources/LayoutResource;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/ui/resources/LayoutResource;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onResourceLoaded(IILorg/chromium/ui/resources/Resource;)V
    .locals 19
    .param p1, "resType"    # I
    .param p2, "resId"    # I
    .param p3, "resource"    # Lorg/chromium/ui/resources/Resource;

    .prologue
    .line 142
    if-nez p3, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    const/4 v3, 0x4

    move/from16 v0, p1

    if-eq v0, v3, :cond_2

    .line 145
    invoke-direct/range {p0 .. p3}, Lorg/chromium/ui/resources/ResourceManager;->saveMetadataForLoadedResource(IILorg/chromium/ui/resources/Resource;)V

    .line 148
    :cond_2
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/chromium/ui/resources/ResourceManager;->mNativeResourceManagerPtr:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 149
    const/4 v3, 0x4

    move/from16 v0, p1

    if-ne v0, v3, :cond_3

    .line 150
    invoke-interface/range {p3 .. p3}, Lorg/chromium/ui/resources/Resource;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object/from16 v17, p3

    .line 151
    check-cast v17, Lorg/chromium/ui/resources/sprites/CrushedSpriteResource;

    .line 152
    .local v17, "crushedResource":Lorg/chromium/ui/resources/sprites/CrushedSpriteResource;
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/chromium/ui/resources/ResourceManager;->mNativeResourceManagerPtr:J

    invoke-virtual/range {v17 .. v17}, Lorg/chromium/ui/resources/sprites/CrushedSpriteResource;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual/range {v17 .. v17}, Lorg/chromium/ui/resources/sprites/CrushedSpriteResource;->getFrameRectangles()[[I

    move-result-object v8

    invoke-virtual/range {v17 .. v17}, Lorg/chromium/ui/resources/sprites/CrushedSpriteResource;->getUnscaledSpriteWidth()I

    move-result v9

    invoke-virtual/range {v17 .. v17}, Lorg/chromium/ui/resources/sprites/CrushedSpriteResource;->getUnscaledSpriteHeight()I

    move-result v10

    invoke-virtual/range {v17 .. v17}, Lorg/chromium/ui/resources/sprites/CrushedSpriteResource;->getScaledSpriteWidth()F

    move-result v11

    invoke-virtual/range {v17 .. v17}, Lorg/chromium/ui/resources/sprites/CrushedSpriteResource;->getScaledSpriteHeight()F

    move-result v12

    move-object/from16 v3, p0

    move/from16 v6, p2

    invoke-direct/range {v3 .. v12}, Lorg/chromium/ui/resources/ResourceManager;->nativeOnCrushedSpriteResourceReady(JILandroid/graphics/Bitmap;[[IIIFF)V

    goto :goto_0

    .line 162
    .end local v17    # "crushedResource":Lorg/chromium/ui/resources/sprites/CrushedSpriteResource;
    :cond_3
    invoke-interface/range {p3 .. p3}, Lorg/chromium/ui/resources/Resource;->getPadding()Landroid/graphics/Rect;

    move-result-object v18

    .line 163
    .local v18, "padding":Landroid/graphics/Rect;
    invoke-interface/range {p3 .. p3}, Lorg/chromium/ui/resources/Resource;->getAperture()Landroid/graphics/Rect;

    move-result-object v2

    .line 165
    .local v2, "aperture":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/chromium/ui/resources/ResourceManager;->mNativeResourceManagerPtr:J

    invoke-interface/range {p3 .. p3}, Lorg/chromium/ui/resources/Resource;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    move-object/from16 v0, v18

    iget v9, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v18

    iget v10, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v18

    iget v11, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v18

    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    iget v13, v2, Landroid/graphics/Rect;->left:I

    iget v14, v2, Landroid/graphics/Rect;->top:I

    iget v15, v2, Landroid/graphics/Rect;->right:I

    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    move-object/from16 v3, p0

    move/from16 v6, p1

    move/from16 v7, p2

    invoke-direct/range {v3 .. v16}, Lorg/chromium/ui/resources/ResourceManager;->nativeOnResourceReady(JIILandroid/graphics/Bitmap;IIIIIIII)V

    goto :goto_0
.end method

.method public preloadResources(I[I[I)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "syncIds"    # [I
    .param p3, "asyncIds"    # [I

    .prologue
    .line 115
    iget-object v5, p0, Lorg/chromium/ui/resources/ResourceManager;->mResourceLoaders:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/chromium/ui/resources/ResourceLoader;

    .line 116
    .local v3, "loader":Lorg/chromium/ui/resources/ResourceLoader;
    if-eqz p3, :cond_0

    .line 117
    move-object v0, p3

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget v5, v0, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 118
    .local v4, "resId":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/chromium/ui/resources/ResourceLoader;->preloadResource(I)V

    .line 117
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 122
    .end local v0    # "arr$":[I
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v4    # "resId":Ljava/lang/Integer;
    :cond_0
    if-eqz p2, :cond_1

    .line 123
    move-object v0, p2

    .restart local v0    # "arr$":[I
    array-length v2, v0

    .restart local v2    # "len$":I
    const/4 v1, 0x0

    .restart local v1    # "i$":I
    :goto_1
    if-ge v1, v2, :cond_1

    aget v5, v0, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 124
    .restart local v4    # "resId":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/chromium/ui/resources/ResourceLoader;->loadResource(I)V

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 127
    .end local v0    # "arr$":[I
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v4    # "resId":Ljava/lang/Integer;
    :cond_1
    return-void
.end method
