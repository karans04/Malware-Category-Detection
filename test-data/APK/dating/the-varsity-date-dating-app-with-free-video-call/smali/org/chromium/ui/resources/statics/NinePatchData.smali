.class Lorg/chromium/ui/resources/statics/NinePatchData;
.super Ljava/lang/Object;
.source "NinePatchData.java"


# instance fields
.field private mAperture:Landroid/graphics/Rect;

.field private final mDivX:[I

.field private final mDivY:[I

.field private final mHeight:I

.field private final mPadding:Landroid/graphics/Rect;

.field private final mWidth:I


# direct methods
.method private constructor <init>(IILandroid/graphics/Rect;[I[I)V
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "padding"    # Landroid/graphics/Rect;
    .param p4, "divX"    # [I
    .param p5, "divY"    # [I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lorg/chromium/ui/resources/statics/NinePatchData;->mWidth:I

    .line 41
    iput p2, p0, Lorg/chromium/ui/resources/statics/NinePatchData;->mHeight:I

    .line 42
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p3, Landroid/graphics/Rect;->left:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lorg/chromium/ui/resources/statics/NinePatchData;->mWidth:I

    iget v4, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    iget v4, p0, Lorg/chromium/ui/resources/statics/NinePatchData;->mHeight:I

    iget v5, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lorg/chromium/ui/resources/statics/NinePatchData;->mPadding:Landroid/graphics/Rect;

    .line 45
    array-length v0, p4

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/chromium/ui/resources/statics/NinePatchData;->mDivX:[I

    .line 46
    array-length v0, p5

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/chromium/ui/resources/statics/NinePatchData;->mDivY:[I

    .line 48
    iget-object v0, p0, Lorg/chromium/ui/resources/statics/NinePatchData;->mDivX:[I

    array-length v1, p4

    invoke-static {p4, v6, v0, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    iget-object v0, p0, Lorg/chromium/ui/resources/statics/NinePatchData;->mDivY:[I

    array-length v1, p5

    invoke-static {p5, v6, v0, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lorg/chromium/ui/resources/statics/NinePatchData;->mDivX:[I

    aget v1, v1, v6

    iget-object v2, p0, Lorg/chromium/ui/resources/statics/NinePatchData;->mDivY:[I

    aget v2, v2, v6

    iget-object v3, p0, Lorg/chromium/ui/resources/statics/NinePatchData;->mDivX:[I

    aget v3, v3, v7

    iget-object v4, p0, Lorg/chromium/ui/resources/statics/NinePatchData;->mDivY:[I

    aget v4, v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lorg/chromium/ui/resources/statics/NinePatchData;->mAperture:Landroid/graphics/Rect;

    .line 52
    return-void
.end method

.method public static create(Landroid/graphics/Bitmap;)Lorg/chromium/ui/resources/statics/NinePatchData;
    .locals 13
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v12, 0x0

    .line 78
    if-nez p0, :cond_0

    move-object v0, v12

    .line 133
    :goto_0
    return-object v0

    .line 81
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v7

    .line 82
    .local v7, "chunk":[B
    if-eqz v7, :cond_1

    invoke-static {v7}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move-object v0, v12

    goto :goto_0

    .line 84
    :cond_2
    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 87
    .local v6, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v12

    goto :goto_0

    .line 90
    :cond_3
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    move-result v10

    .line 91
    .local v10, "numDivX":I
    if-eqz v10, :cond_4

    and-int/lit8 v0, v10, 0x1

    if-eqz v0, :cond_5

    :cond_4
    move-object v0, v12

    goto :goto_0

    .line 94
    :cond_5
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    move-result v11

    .line 95
    .local v11, "numDivY":I
    if-eqz v11, :cond_6

    and-int/lit8 v0, v11, 0x1

    if-eqz v0, :cond_7

    :cond_6
    move-object v0, v12

    goto :goto_0

    .line 98
    :cond_7
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    .line 101
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    .line 104
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    .line 106
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 109
    .local v3, "padding":Landroid/graphics/Rect;
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, v3, Landroid/graphics/Rect;->left:I

    .line 112
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, v3, Landroid/graphics/Rect;->right:I

    .line 115
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, v3, Landroid/graphics/Rect;->top:I

    .line 118
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, v3, Landroid/graphics/Rect;->bottom:I

    .line 121
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    .line 124
    new-array v4, v10, [I

    .line 125
    .local v4, "divX":[I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v10, :cond_8

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    aput v0, v4, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 128
    :cond_8
    new-array v5, v11, [I

    .line 129
    .local v5, "divY":[I
    const/4 v9, 0x0

    :goto_2
    if-ge v9, v11, :cond_9

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    aput v0, v5, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 131
    :cond_9
    new-instance v0, Lorg/chromium/ui/resources/statics/NinePatchData;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct/range {v0 .. v5}, Lorg/chromium/ui/resources/statics/NinePatchData;-><init>(IILandroid/graphics/Rect;[I[I)V
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 132
    .end local v3    # "padding":Landroid/graphics/Rect;
    .end local v4    # "divX":[I
    .end local v5    # "divY":[I
    .end local v6    # "buffer":Ljava/nio/ByteBuffer;
    .end local v7    # "chunk":[B
    .end local v9    # "i":I
    .end local v10    # "numDivX":I
    .end local v11    # "numDivY":I
    :catch_0
    move-exception v8

    .local v8, "ex":Ljava/nio/BufferUnderflowException;
    move-object v0, v12

    .line 133
    goto/16 :goto_0
.end method


# virtual methods
.method public getAperture()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/chromium/ui/resources/statics/NinePatchData;->mAperture:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getPadding()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/chromium/ui/resources/statics/NinePatchData;->mPadding:Landroid/graphics/Rect;

    return-object v0
.end method
