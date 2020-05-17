.class public Lorg/chromium/ui/widget/TextViewWithLeading;
.super Landroid/widget/TextView;
.source "TextViewWithLeading.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    sget-object v3, Lorg/chromium/ui/R$styleable;->TextViewWithLeading:[I

    invoke-virtual {p1, p2, v3, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 26
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v3, Lorg/chromium/ui/R$styleable;->TextViewWithLeading_leading:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 27
    sget v3, Lorg/chromium/ui/R$styleable;->TextViewWithLeading_leading:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 28
    .local v1, "leading":F
    invoke-virtual {p0}, Lorg/chromium/ui/widget/TextViewWithLeading;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    move-result v2

    .line 29
    .local v2, "oldLeading":F
    sub-float v3, v1, v2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p0, v3, v4}, Lorg/chromium/ui/widget/TextViewWithLeading;->setLineSpacing(FF)V

    .line 32
    .end local v1    # "leading":F
    .end local v2    # "oldLeading":F
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 33
    return-void
.end method
