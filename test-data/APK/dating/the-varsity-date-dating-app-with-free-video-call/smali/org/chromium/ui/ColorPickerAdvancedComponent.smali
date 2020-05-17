.class public Lorg/chromium/ui/ColorPickerAdvancedComponent;
.super Ljava/lang/Object;
.source "ColorPickerAdvancedComponent.java"


# instance fields
.field private mGradientColors:[I

.field private mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private final mGradientView:Landroid/view/View;

.field private final mSeekBar:Landroid/widget/SeekBar;

.field private final mText:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;IILandroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 5
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "textResourceId"    # I
    .param p3, "seekBarMax"    # I
    .param p4, "seekBarListener"    # Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    sget v2, Lorg/chromium/ui/R$id;->gradient:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lorg/chromium/ui/ColorPickerAdvancedComponent;->mGradientView:Landroid/view/View;

    .line 47
    sget v2, Lorg/chromium/ui/R$id;->text:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lorg/chromium/ui/ColorPickerAdvancedComponent;->mText:Landroid/widget/TextView;

    .line 48
    iget-object v2, p0, Lorg/chromium/ui/ColorPickerAdvancedComponent;->mText:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(I)V

    .line 49
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v2, p0, Lorg/chromium/ui/ColorPickerAdvancedComponent;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 50
    sget v2, Lorg/chromium/ui/R$id;->seek_bar:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lorg/chromium/ui/ColorPickerAdvancedComponent;->mSeekBar:Landroid/widget/SeekBar;

    .line 51
    iget-object v2, p0, Lorg/chromium/ui/ColorPickerAdvancedComponent;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, p4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 52
    iget-object v2, p0, Lorg/chromium/ui/ColorPickerAdvancedComponent;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, p3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 56
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lorg/chromium/ui/R$drawable;->color_picker_advanced_select_handle:I

    invoke-static {v2, v3}, Lorg/chromium/base/ApiCompatibilityUtils;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 58
    .local v1, "offset":I
    iget-object v2, p0, Lorg/chromium/ui/ColorPickerAdvancedComponent;->mSeekBar:Landroid/widget/SeekBar;

    div-int/lit8 v3, v1, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    .line 59
    return-void
.end method


# virtual methods
.method public getValue()F
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/chromium/ui/ColorPickerAdvancedComponent;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public setGradientColors([I)V
    .locals 2
    .param p1, "newColors"    # [I

    .prologue
    .line 83
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lorg/chromium/ui/ColorPickerAdvancedComponent;->mGradientColors:[I

    .line 84
    iget-object v0, p0, Lorg/chromium/ui/ColorPickerAdvancedComponent;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lorg/chromium/ui/ColorPickerAdvancedComponent;->mGradientColors:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 85
    iget-object v0, p0, Lorg/chromium/ui/ColorPickerAdvancedComponent;->mGradientView:Landroid/view/View;

    iget-object v1, p0, Lorg/chromium/ui/ColorPickerAdvancedComponent;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 86
    return-void
.end method

.method public setValue(F)V
    .locals 2
    .param p1, "newValue"    # F

    .prologue
    .line 74
    iget-object v0, p0, Lorg/chromium/ui/ColorPickerAdvancedComponent;->mSeekBar:Landroid/widget/SeekBar;

    float-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 75
    return-void
.end method
