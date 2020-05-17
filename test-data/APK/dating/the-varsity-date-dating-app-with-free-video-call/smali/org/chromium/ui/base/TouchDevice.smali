.class public Lorg/chromium/ui/base/TouchDevice;
.super Ljava/lang/Object;
.source "TouchDevice.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "ui"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static availableHoverTypes(Landroid/content/Context;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 87
    const/4 v2, 0x0

    .line 89
    .local v2, "hoverTypesVal":I
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v0

    .local v0, "arr$":[I
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_5

    aget v1, v0, v3

    .line 90
    .local v1, "deviceId":I
    invoke-static {v1}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v4

    .line 91
    .local v4, "inputDevice":Landroid/view/InputDevice;
    if-nez v4, :cond_1

    .line 89
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 93
    :cond_1
    invoke-virtual {v4}, Landroid/view/InputDevice;->getSources()I

    move-result v6

    .line 95
    .local v6, "sources":I
    const/16 v7, 0x2002

    invoke-static {v6, v7}, Lorg/chromium/ui/base/TouchDevice;->hasSource(II)Z

    move-result v7

    if-nez v7, :cond_2

    const v7, 0x100008

    invoke-static {v6, v7}, Lorg/chromium/ui/base/TouchDevice;->hasSource(II)Z

    move-result v7

    if-nez v7, :cond_2

    const v7, 0x10004

    invoke-static {v6, v7}, Lorg/chromium/ui/base/TouchDevice;->hasSource(II)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 98
    :cond_2
    or-int/lit8 v2, v2, 0x4

    goto :goto_1

    .line 99
    :cond_3
    const/16 v7, 0x4002

    invoke-static {v6, v7}, Lorg/chromium/ui/base/TouchDevice;->hasSource(II)Z

    move-result v7

    if-nez v7, :cond_4

    const/16 v7, 0x1002

    invoke-static {v6, v7}, Lorg/chromium/ui/base/TouchDevice;->hasSource(II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 101
    :cond_4
    or-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 107
    .end local v1    # "deviceId":I
    .end local v4    # "inputDevice":Landroid/view/InputDevice;
    .end local v6    # "sources":I
    :cond_5
    if-nez v2, :cond_6

    const/4 v2, 0x1

    .line 109
    :cond_6
    return v2
.end method

.method private static availablePointerTypes(Landroid/content/Context;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 57
    const/4 v5, 0x0

    .line 59
    .local v5, "pointerTypesVal":I
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v0

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_4

    aget v1, v0, v2

    .line 60
    .local v1, "deviceId":I
    invoke-static {v1}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v3

    .line 61
    .local v3, "inputDevice":Landroid/view/InputDevice;
    if-nez v3, :cond_1

    .line 59
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {v3}, Landroid/view/InputDevice;->getSources()I

    move-result v6

    .line 65
    .local v6, "sources":I
    const/16 v7, 0x2002

    invoke-static {v6, v7}, Lorg/chromium/ui/base/TouchDevice;->hasSource(II)Z

    move-result v7

    if-nez v7, :cond_2

    const/16 v7, 0x4002

    invoke-static {v6, v7}, Lorg/chromium/ui/base/TouchDevice;->hasSource(II)Z

    move-result v7

    if-nez v7, :cond_2

    const v7, 0x100008

    invoke-static {v6, v7}, Lorg/chromium/ui/base/TouchDevice;->hasSource(II)Z

    move-result v7

    if-nez v7, :cond_2

    const v7, 0x10004

    invoke-static {v6, v7}, Lorg/chromium/ui/base/TouchDevice;->hasSource(II)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 69
    :cond_2
    or-int/lit8 v5, v5, 0x4

    goto :goto_1

    .line 70
    :cond_3
    const/16 v7, 0x1002

    invoke-static {v6, v7}, Lorg/chromium/ui/base/TouchDevice;->hasSource(II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 71
    or-int/lit8 v5, v5, 0x2

    goto :goto_1

    .line 77
    .end local v1    # "deviceId":I
    .end local v3    # "inputDevice":Landroid/view/InputDevice;
    .end local v6    # "sources":I
    :cond_4
    if-nez v5, :cond_5

    const/4 v5, 0x1

    .line 79
    :cond_5
    return v5
.end method

.method private static hasSource(II)Z
    .locals 1
    .param p0, "sources"    # I
    .param p1, "inputDeviceSource"    # I

    .prologue
    .line 113
    and-int v0, p0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static maxTouchPoints(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    const/4 v0, 0x2

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.touchscreen.multitouch.jazzhand"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 36
    const/4 v0, 0x5

    .line 47
    :cond_0
    :goto_0
    return v0

    .line 37
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.touchscreen.multitouch.distinct"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.touchscreen.multitouch"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.touchscreen"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 45
    const/4 v0, 0x1

    goto :goto_0

    .line 47
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
