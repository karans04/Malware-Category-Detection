.class Lorg/chromium/media/VideoCaptureAndroid$BuggyDeviceHack;
.super Ljava/lang/Object;
.source "VideoCaptureAndroid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/VideoCaptureAndroid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BuggyDeviceHack"
.end annotation


# static fields
.field private static final COLORSPACE_BUGGY_DEVICE_LIST:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SAMSUNG-SGH-I747"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ODROID-U2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "XT1092"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "XT1095"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "XT1096"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "XT1097"

    aput-object v2, v0, v1

    sput-object v0, Lorg/chromium/media/VideoCaptureAndroid$BuggyDeviceHack;->COLORSPACE_BUGGY_DEVICE_LIST:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getImageFormat()I
    .locals 5

    .prologue
    .line 34
    sget-object v0, Lorg/chromium/media/VideoCaptureAndroid$BuggyDeviceHack;->COLORSPACE_BUGGY_DEVICE_LIST:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 35
    .local v1, "buggyDevice":Ljava/lang/String;
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 36
    const/16 v4, 0x11

    .line 39
    .end local v1    # "buggyDevice":Ljava/lang/String;
    :goto_1
    return v4

    .line 34
    .restart local v1    # "buggyDevice":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 39
    .end local v1    # "buggyDevice":Ljava/lang/String;
    :cond_1
    const v4, 0x32315659

    goto :goto_1
.end method
