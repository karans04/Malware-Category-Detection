.class final Lcom/twitter/sdk/android/tweetui/ColorUtils;
.super Ljava/lang/Object;
.source "ColorUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static calculateOpacityTransform(DII)I
    .locals 14
    .param p0, "opacity"    # D
    .param p2, "overlayColor"    # I
    .param p3, "primaryColor"    # I

    .prologue
    .line 38
    invoke-static/range {p3 .. p3}, Landroid/graphics/Color;->red(I)I

    move-result v8

    .line 39
    .local v8, "redPrimary":I
    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->red(I)I

    move-result v7

    .line 40
    .local v7, "redOverlay":I
    invoke-static/range {p3 .. p3}, Landroid/graphics/Color;->green(I)I

    move-result v5

    .line 41
    .local v5, "greenPrimary":I
    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->green(I)I

    move-result v4

    .line 42
    .local v4, "greenOverlay":I
    invoke-static/range {p3 .. p3}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .line 43
    .local v2, "bluePrimary":I
    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .line 45
    .local v1, "blueOverlay":I
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v10, p0

    int-to-double v12, v8

    mul-double/2addr v10, v12

    int-to-double v12, v7

    mul-double/2addr v12, p0

    add-double/2addr v10, v12

    double-to-int v6, v10

    .line 46
    .local v6, "redCalculated":I
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v10, p0

    int-to-double v12, v5

    mul-double/2addr v10, v12

    int-to-double v12, v4

    mul-double/2addr v12, p0

    add-double/2addr v10, v12

    double-to-int v3, v10

    .line 47
    .local v3, "greenCalculated":I
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v10, p0

    int-to-double v12, v2

    mul-double/2addr v10, v12

    int-to-double v12, v1

    mul-double/2addr v12, p0

    add-double/2addr v10, v12

    double-to-int v0, v10

    .line 49
    .local v0, "blueCalculated":I
    invoke-static {v6, v3, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    return v9
.end method

.method static isLightColor(I)Z
    .locals 12
    .param p0, "color"    # I

    .prologue
    .line 61
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    .line 62
    .local v2, "r":I
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 63
    .local v1, "g":I
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    .line 65
    .local v0, "b":I
    const-wide v6, 0x3fcae147ae147ae1L    # 0.21

    int-to-double v8, v2

    mul-double/2addr v6, v8

    const-wide v8, 0x3fe70a3d70a3d70aL    # 0.72

    int-to-double v10, v1

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    const-wide v8, 0x3fb1eb851eb851ecL    # 0.07

    int-to-double v10, v0

    mul-double/2addr v8, v10

    add-double v4, v6, v8

    .line 66
    .local v4, "threshold":D
    const-wide/high16 v6, 0x4060000000000000L    # 128.0

    cmpl-double v3, v4, v6

    if-lez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
