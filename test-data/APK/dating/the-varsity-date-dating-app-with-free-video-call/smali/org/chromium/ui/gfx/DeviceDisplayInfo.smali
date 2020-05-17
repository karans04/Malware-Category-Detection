.class public Lorg/chromium/ui/gfx/DeviceDisplayInfo;
.super Ljava/lang/Object;
.source "DeviceDisplayInfo.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "gfx"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mAppContext:Landroid/content/Context;

.field private mTempMetrics:Landroid/util/DisplayMetrics;

.field private mTempPoint:Landroid/graphics/Point;

.field private final mWinManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lorg/chromium/ui/gfx/DeviceDisplayInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->mTempPoint:Landroid/graphics/Point;

    .line 33
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->mTempMetrics:Landroid/util/DisplayMetrics;

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->mAppContext:Landroid/content/Context;

    .line 37
    iget-object v0, p0, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->mAppContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->mWinManager:Landroid/view/WindowManager;

    .line 38
    return-void
.end method

.method public static create(Landroid/content/Context;)Lorg/chromium/ui/gfx/DeviceDisplayInfo;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 208
    new-instance v0, Lorg/chromium/ui/gfx/DeviceDisplayInfo;

    invoke-direct {v0, p0}, Lorg/chromium/ui/gfx/DeviceDisplayInfo;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getDisplay()Landroid/view/Display;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->mWinManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method private getPixelFormat()I
    .locals 2

    .prologue
    .line 86
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    .line 87
    invoke-direct {p0}, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getPixelFormat()I

    move-result v0

    .line 90
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getSmallestDIPWidth()I
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    return v0
.end method

.method private native nativeUpdateSharedDeviceDisplayInfo(IIIIIIDII)V
.end method


# virtual methods
.method public getBitsPerComponent()I
    .locals 3
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x5

    .line 110
    invoke-direct {p0}, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->getPixelFormat()I

    move-result v0

    .line 111
    .local v0, "format":I
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v1, v2

    .line 137
    :goto_0
    :pswitch_1
    return v1

    .line 113
    :pswitch_2
    const/4 v1, 0x4

    goto :goto_0

    :pswitch_3
    move v1, v2

    .line 121
    goto :goto_0

    .line 124
    :pswitch_4
    const/4 v1, 0x2

    goto :goto_0

    .line 133
    :pswitch_5
    const/4 v1, 0x0

    goto :goto_0

    .line 111
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public getBitsPerPixel()I
    .locals 3
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 98
    invoke-direct {p0}, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->getPixelFormat()I

    move-result v0

    .line 99
    .local v0, "format":I
    new-instance v1, Landroid/graphics/PixelFormat;

    invoke-direct {v1}, Landroid/graphics/PixelFormat;-><init>()V

    .line 100
    .local v1, "info":Landroid/graphics/PixelFormat;
    invoke-static {v0, v1}, Landroid/graphics/PixelFormat;->getPixelFormatInfo(ILandroid/graphics/PixelFormat;)V

    .line 101
    iget v2, v1, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    return v2
.end method

.method public getDIPScale()D
    .locals 2
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 147
    invoke-direct {p0}, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->mTempMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 148
    iget-object v0, p0, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->mTempMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public getDisplayHeight()I
    .locals 2
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->mTempPoint:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 46
    iget-object v0, p0, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->mTempPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    return v0
.end method

.method public getDisplayWidth()I
    .locals 2
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->mTempPoint:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 55
    iget-object v0, p0, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->mTempPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    return v0
.end method

.method public getPhysicalDisplayHeight()I
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 64
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    .line 65
    const/4 v0, 0x0

    .line 68
    :goto_0
    return v0

    .line 67
    :cond_0
    invoke-direct {p0}, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->mTempPoint:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 68
    iget-object v0, p0, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->mTempPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    goto :goto_0
.end method

.method public getPhysicalDisplayWidth()I
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 77
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    .line 78
    const/4 v0, 0x0

    .line 81
    :goto_0
    return v0

    .line 80
    :cond_0
    invoke-direct {p0}, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->mTempPoint:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 81
    iget-object v0, p0, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->mTempPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    goto :goto_0
.end method

.method public getRotationDegrees()I
    .locals 2
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 168
    invoke-direct {p0}, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 180
    sget-boolean v1, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 172
    :pswitch_0
    const/16 v0, 0x5a

    .line 181
    :cond_0
    :goto_0
    :pswitch_1
    return v0

    .line 174
    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_0

    .line 176
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    .line 168
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public updateNativeSharedDisplayInfo()V
    .locals 12

    .prologue
    .line 189
    invoke-virtual {p0}, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->getDisplayHeight()I

    move-result v2

    invoke-virtual {p0}, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->getDisplayWidth()I

    move-result v3

    invoke-virtual {p0}, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->getPhysicalDisplayHeight()I

    move-result v4

    invoke-virtual {p0}, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->getPhysicalDisplayWidth()I

    move-result v5

    invoke-virtual {p0}, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->getBitsPerPixel()I

    move-result v6

    invoke-virtual {p0}, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->getBitsPerComponent()I

    move-result v7

    invoke-virtual {p0}, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->getDIPScale()D

    move-result-wide v8

    invoke-direct {p0}, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->getSmallestDIPWidth()I

    move-result v10

    invoke-virtual {p0}, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->getRotationDegrees()I

    move-result v11

    move-object v1, p0

    invoke-direct/range {v1 .. v11}, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->nativeUpdateSharedDeviceDisplayInfo(IIIIIIDII)V

    .line 194
    return-void
.end method
