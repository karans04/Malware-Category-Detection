.class public Lorg/chromium/ui/widget/ButtonCompat;
.super Landroid/widget/Button;
.source "ButtonCompat.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final DISABLED_COLOR:I = 0x424f4f4f

.field private static final PRE_L_PRESSED_BRIGHTNESS:F = 0.85f


# instance fields
.field private mColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "buttonColor"    # I
    .param p3, "buttonRaised"    # Z

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/chromium/ui/widget/ButtonCompat;-><init>(Landroid/content/Context;IZLandroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;IZLandroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "buttonColor"    # I
    .param p3, "buttonRaised"    # Z
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 77
    new-instance v0, Landroid/view/ContextThemeWrapper;

    sget v1, Lorg/chromium/ui/R$style;->ButtonCompatOverlay:I

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0, p4}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    invoke-virtual {p0}, Lorg/chromium/ui/widget/ButtonCompat;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 80
    invoke-virtual {p0, p2}, Lorg/chromium/ui/widget/ButtonCompat;->setButtonColor(I)V

    .line 81
    invoke-direct {p0, p3}, Lorg/chromium/ui/widget/ButtonCompat;->setRaised(Z)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 69
    invoke-static {p1, p2}, Lorg/chromium/ui/widget/ButtonCompat;->getColorFromAttributeSet(Landroid/content/Context;Landroid/util/AttributeSet;)I

    move-result v0

    invoke-static {p1, p2}, Lorg/chromium/ui/widget/ButtonCompat;->getRaisedStatusFromAttributeSet(Landroid/content/Context;Landroid/util/AttributeSet;)Z

    move-result v1

    invoke-direct {p0, p1, v0, v1, p2}, Lorg/chromium/ui/widget/ButtonCompat;-><init>(Landroid/content/Context;IZLandroid/util/AttributeSet;)V

    .line 71
    return-void
.end method

.method public static createBorderlessButton(Landroid/content/Context;)Landroid/widget/Button;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    new-instance v0, Landroid/widget/Button;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    sget v2, Lorg/chromium/ui/R$style;->ButtonCompatBorderlessOverlay:I

    invoke-direct {v1, p0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getBackgroundColorPreL()I
    .locals 8

    .prologue
    const v7, 0x3f59999a    # 0.85f

    .line 156
    invoke-virtual {p0}, Lorg/chromium/ui/widget/ButtonCompat;->getDrawableState()[I

    move-result-object v0

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget v3, v0, v1

    .line 157
    .local v3, "state":I
    const v4, 0x10100a7

    if-eq v3, v4, :cond_0

    const v4, 0x101009c

    if-eq v3, v4, :cond_0

    const v4, 0x10100a1

    if-ne v3, v4, :cond_1

    .line 160
    :cond_0
    iget v4, p0, Lorg/chromium/ui/widget/ButtonCompat;->mColor:I

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v7

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v5, p0, Lorg/chromium/ui/widget/ButtonCompat;->mColor:I

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget v6, p0, Lorg/chromium/ui/widget/ButtonCompat;->mColor:I

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    .line 171
    .end local v3    # "state":I
    :goto_1
    return v4

    .line 156
    .restart local v3    # "state":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    .end local v3    # "state":I
    :cond_2
    invoke-virtual {p0}, Lorg/chromium/ui/widget/ButtonCompat;->getDrawableState()[I

    move-result-object v0

    array-length v2, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_4

    aget v3, v0, v1

    .line 167
    .restart local v3    # "state":I
    const v4, 0x101009e

    if-ne v3, v4, :cond_3

    .line 168
    iget v4, p0, Lorg/chromium/ui/widget/ButtonCompat;->mColor:I

    goto :goto_1

    .line 166
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 171
    .end local v3    # "state":I
    :cond_4
    const v4, 0x424f4f4f

    goto :goto_1
.end method

.method private static getColorFromAttributeSet(Landroid/content/Context;Landroid/util/AttributeSet;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 175
    sget-object v2, Lorg/chromium/ui/R$styleable;->ButtonCompat:[I

    invoke-virtual {p0, p1, v2, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 176
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Lorg/chromium/ui/R$styleable;->ButtonCompat_buttonColor:I

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 177
    .local v1, "color":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 178
    return v1
.end method

.method private static getRaisedStatusFromAttributeSet(Landroid/content/Context;Landroid/util/AttributeSet;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 182
    sget-object v2, Lorg/chromium/ui/R$styleable;->ButtonCompat:[I

    invoke-virtual {p0, p1, v2, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 183
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Lorg/chromium/ui/R$styleable;->ButtonCompat_buttonRaised:I

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 184
    .local v1, "raised":Z
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 185
    return v1
.end method

.method private setRaised(Z)V
    .locals 8
    .param p1, "raised"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 105
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v3, v4, :cond_0

    .line 129
    :goto_0
    return-void

    .line 107
    :cond_0
    if-eqz p1, :cond_2

    .line 110
    invoke-virtual {p0}, Lorg/chromium/ui/widget/ButtonCompat;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [I

    const v5, 0x1010448

    aput v5, v4, v6

    const v5, 0x1030258

    invoke-virtual {v3, v7, v4, v6, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 113
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 114
    .local v2, "stateListAnimatorId":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 119
    const/4 v1, 0x0

    .line 120
    .local v1, "stateListAnimator":Landroid/animation/StateListAnimator;
    if-eqz v2, :cond_1

    .line 121
    invoke-virtual {p0}, Lorg/chromium/ui/widget/ButtonCompat;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/animation/AnimatorInflater;->loadStateListAnimator(Landroid/content/Context;I)Landroid/animation/StateListAnimator;

    move-result-object v1

    .line 124
    :cond_1
    invoke-virtual {p0, v1}, Lorg/chromium/ui/widget/ButtonCompat;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    goto :goto_0

    .line 126
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "stateListAnimator":Landroid/animation/StateListAnimator;
    .end local v2    # "stateListAnimatorId":I
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lorg/chromium/ui/widget/ButtonCompat;->setElevation(F)V

    .line 127
    invoke-virtual {p0, v7}, Lorg/chromium/ui/widget/ButtonCompat;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    goto :goto_0
.end method

.method private updateButtonBackgroundL()V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 141
    new-instance v0, Landroid/content/res/ColorStateList;

    new-array v2, v7, [[I

    new-array v3, v6, [I

    const v4, -0x101009e

    aput v4, v3, v5

    aput-object v3, v2, v5

    new-array v3, v5, [I

    aput-object v3, v2, v6

    new-array v3, v7, [I

    const v4, 0x424f4f4f

    aput v4, v3, v5

    iget v4, p0, Lorg/chromium/ui/widget/ButtonCompat;->mColor:I

    aput v4, v3, v6

    invoke-direct {v0, v2, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 144
    .local v0, "csl":Landroid/content/res/ColorStateList;
    invoke-virtual {p0}, Lorg/chromium/ui/widget/ButtonCompat;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/RippleDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    .line 146
    .local v1, "shape":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 147
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 148
    return-void
.end method

.method private updateButtonBackgroundPreL()V
    .locals 2

    .prologue
    .line 151
    invoke-virtual {p0}, Lorg/chromium/ui/widget/ButtonCompat;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 152
    .local v0, "background":Landroid/graphics/drawable/GradientDrawable;
    invoke-direct {p0}, Lorg/chromium/ui/widget/ButtonCompat;->getBackgroundColorPreL()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 153
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 133
    invoke-super {p0}, Landroid/widget/Button;->drawableStateChanged()V

    .line 134
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 135
    invoke-direct {p0}, Lorg/chromium/ui/widget/ButtonCompat;->updateButtonBackgroundPreL()V

    .line 137
    :cond_0
    return-void
.end method

.method public setButtonColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 88
    iget v0, p0, Lorg/chromium/ui/widget/ButtonCompat;->mColor:I

    if-ne p1, v0, :cond_0

    .line 96
    :goto_0
    return-void

    .line 89
    :cond_0
    iput p1, p0, Lorg/chromium/ui/widget/ButtonCompat;->mColor:I

    .line 91
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 92
    invoke-direct {p0}, Lorg/chromium/ui/widget/ButtonCompat;->updateButtonBackgroundL()V

    goto :goto_0

    .line 94
    :cond_1
    invoke-direct {p0}, Lorg/chromium/ui/widget/ButtonCompat;->updateButtonBackgroundPreL()V

    goto :goto_0
.end method
