.class public Lorg/chromium/ui/base/DeviceFormFactor;
.super Ljava/lang/Object;
.source "DeviceFormFactor.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final MINIMUM_LARGE_TABLET_WIDTH_DP:I = 0x2d0

.field public static final MINIMUM_TABLET_WIDTH_DP:I = 0x258

.field private static sDensity:Ljava/lang/Float;

.field private static sIsLargeTablet:Ljava/lang/Boolean;

.field private static sIsTablet:Ljava/lang/Boolean;

.field private static sMinimumTabletWidthPx:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    const-class v0, Lorg/chromium/ui/base/DeviceFormFactor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/ui/base/DeviceFormFactor;->$assertionsDisabled:Z

    .line 25
    sput-object v1, Lorg/chromium/ui/base/DeviceFormFactor;->sIsTablet:Ljava/lang/Boolean;

    .line 26
    sput-object v1, Lorg/chromium/ui/base/DeviceFormFactor;->sIsLargeTablet:Ljava/lang/Boolean;

    .line 27
    sput-object v1, Lorg/chromium/ui/base/DeviceFormFactor;->sMinimumTabletWidthPx:Ljava/lang/Integer;

    .line 28
    sput-object v1, Lorg/chromium/ui/base/DeviceFormFactor;->sDensity:Ljava/lang/Float;

    return-void

    .line 17
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMinimumTabletWidthPx(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    sget-object v0, Lorg/chromium/ui/base/DeviceFormFactor;->sMinimumTabletWidthPx:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 90
    const/high16 v0, 0x44160000    # 600.0f

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/chromium/ui/base/DeviceFormFactor;->sMinimumTabletWidthPx:Ljava/lang/Integer;

    .line 93
    :cond_0
    sget-object v0, Lorg/chromium/ui/base/DeviceFormFactor;->sMinimumTabletWidthPx:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getSmallestDeviceWidthDp(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    sget-boolean v1, Lorg/chromium/ui/base/DeviceFormFactor;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 65
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1

    .line 66
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 70
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 72
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 79
    .end local v0    # "metrics":Landroid/util/DisplayMetrics;
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    goto :goto_0
.end method

.method public static isLargeTablet(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    sget-object v0, Lorg/chromium/ui/base/DeviceFormFactor;->sIsLargeTablet:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 50
    invoke-static {p0}, Lorg/chromium/ui/base/DeviceFormFactor;->getSmallestDeviceWidthDp(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x2d0

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lorg/chromium/ui/base/DeviceFormFactor;->sIsLargeTablet:Ljava/lang/Boolean;

    .line 52
    :cond_0
    sget-object v0, Lorg/chromium/ui/base/DeviceFormFactor;->sIsLargeTablet:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 50
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 37
    sget-object v0, Lorg/chromium/ui/base/DeviceFormFactor;->sIsTablet:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 38
    invoke-static {p0}, Lorg/chromium/ui/base/DeviceFormFactor;->getSmallestDeviceWidthDp(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x258

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lorg/chromium/ui/base/DeviceFormFactor;->sIsTablet:Ljava/lang/Boolean;

    .line 40
    :cond_0
    sget-object v0, Lorg/chromium/ui/base/DeviceFormFactor;->sIsTablet:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 38
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static resetValuesIfNeeded(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 100
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 101
    .local v0, "currentDensity":F
    sget-object v1, Lorg/chromium/ui/base/DeviceFormFactor;->sDensity:Ljava/lang/Float;

    if-eqz v1, :cond_0

    sget-object v1, Lorg/chromium/ui/base/DeviceFormFactor;->sDensity:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_0

    .line 102
    sput-object v2, Lorg/chromium/ui/base/DeviceFormFactor;->sIsTablet:Ljava/lang/Boolean;

    .line 103
    sput-object v2, Lorg/chromium/ui/base/DeviceFormFactor;->sIsLargeTablet:Ljava/lang/Boolean;

    .line 104
    sput-object v2, Lorg/chromium/ui/base/DeviceFormFactor;->sMinimumTabletWidthPx:Ljava/lang/Integer;

    .line 106
    :cond_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    sput-object v1, Lorg/chromium/ui/base/DeviceFormFactor;->sDensity:Ljava/lang/Float;

    .line 107
    return-void
.end method
