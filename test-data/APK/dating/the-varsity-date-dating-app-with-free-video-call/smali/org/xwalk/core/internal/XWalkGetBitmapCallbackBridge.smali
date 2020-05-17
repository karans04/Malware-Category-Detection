.class public Lorg/xwalk/core/internal/XWalkGetBitmapCallbackBridge;
.super Lorg/xwalk/core/internal/XWalkGetBitmapCallbackInternal;
.source "XWalkGetBitmapCallbackBridge.java"


# instance fields
.field private coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

.field private onFinishGetBitmapBitmapintMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private wrapper:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 4
    .param p1, "wrapper"    # Ljava/lang/Object;

    .prologue
    .line 19
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkGetBitmapCallbackInternal;-><init>()V

    .line 31
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    const-string v2, "onFinishGetBitmap"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-direct {v0, v1, v2, v3}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkGetBitmapCallbackBridge;->onFinishGetBitmapBitmapintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 21
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkGetBitmapCallbackBridge;->wrapper:Ljava/lang/Object;

    .line 22
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkGetBitmapCallbackBridge;->reflectionInit()V

    .line 23
    return-void
.end method


# virtual methods
.method public getWrapper()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkGetBitmapCallbackBridge;->wrapper:Ljava/lang/Object;

    return-object v0
.end method

.method public onFinishGetBitmap(Landroid/graphics/Bitmap;I)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "response"    # I

    .prologue
    .line 27
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkGetBitmapCallbackBridge;->onFinishGetBitmapBitmapintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    return-void
.end method

.method reflectionInit()V
    .locals 7

    .prologue
    .line 35
    invoke-static {}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getInstance()Lorg/xwalk/core/internal/XWalkCoreBridge;

    move-result-object v0

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkGetBitmapCallbackBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    .line 36
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkGetBitmapCallbackBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    if-nez v0, :cond_0

    .line 40
    :goto_0
    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkGetBitmapCallbackBridge;->onFinishGetBitmapBitmapintMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkGetBitmapCallbackBridge;->wrapper:Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "onFinishGetBitmap"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/graphics/Bitmap;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    goto :goto_0
.end method
