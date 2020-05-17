.class public Lorg/chromium/ui/autofill/AutofillKeyboardAccessory;
.super Landroid/widget/LinearLayout;
.source "AutofillKeyboardAccessory.java"

# interfaces
.implements Lorg/chromium/ui/base/WindowAndroid$KeyboardVisibilityListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mAutofillDelegate:Lorg/chromium/ui/autofill/AutofillDelegate;

.field private final mMaximumLabelWidthPx:I

.field private final mMaximumSublabelWidthPx:I

.field private final mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lorg/chromium/ui/autofill/AutofillKeyboardAccessory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/ui/autofill/AutofillKeyboardAccessory;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/chromium/ui/base/WindowAndroid;Lorg/chromium/ui/autofill/AutofillDelegate;)V
    .locals 5
    .param p1, "windowAndroid"    # Lorg/chromium/ui/base/WindowAndroid;
    .param p2, "autofillDelegate"    # Lorg/chromium/ui/autofill/AutofillDelegate;

    .prologue
    const/4 v4, 0x0

    .line 46
    invoke-virtual {p1}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-direct {p0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 47
    sget-boolean v2, Lorg/chromium/ui/autofill/AutofillKeyboardAccessory;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 48
    :cond_0
    sget-boolean v2, Lorg/chromium/ui/autofill/AutofillKeyboardAccessory;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 49
    :cond_1
    iput-object p1, p0, Lorg/chromium/ui/autofill/AutofillKeyboardAccessory;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    .line 50
    iput-object p2, p0, Lorg/chromium/ui/autofill/AutofillKeyboardAccessory;->mAutofillDelegate:Lorg/chromium/ui/autofill/AutofillDelegate;

    .line 52
    invoke-virtual {p0}, Lorg/chromium/ui/autofill/AutofillKeyboardAccessory;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->create(Landroid/content/Context;)Lorg/chromium/ui/gfx/DeviceDisplayInfo;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->getDisplayWidth()I

    move-result v0

    .line 53
    .local v0, "deviceWidthPx":I
    div-int/lit8 v2, v0, 0x2

    iput v2, p0, Lorg/chromium/ui/autofill/AutofillKeyboardAccessory;->mMaximumLabelWidthPx:I

    .line 54
    div-int/lit8 v2, v0, 0x4

    iput v2, p0, Lorg/chromium/ui/autofill/AutofillKeyboardAccessory;->mMaximumSublabelWidthPx:I

    .line 56
    iget-object v2, p0, Lorg/chromium/ui/autofill/AutofillKeyboardAccessory;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    invoke-virtual {v2, p0}, Lorg/chromium/ui/base/WindowAndroid;->addKeyboardVisibilityListener(Lorg/chromium/ui/base/WindowAndroid$KeyboardVisibilityListener;)V

    .line 57
    invoke-virtual {p0}, Lorg/chromium/ui/autofill/AutofillKeyboardAccessory;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lorg/chromium/ui/R$dimen;->keyboard_accessory_half_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 59
    .local v1, "horizontalPaddingPx":I
    invoke-virtual {p0, v1, v4, v1, v4}, Lorg/chromium/ui/autofill/AutofillKeyboardAccessory;->setPadding(IIII)V

    .line 60
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 154
    iget-object v1, p0, Lorg/chromium/ui/autofill/AutofillKeyboardAccessory;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    invoke-virtual {v1}, Lorg/chromium/ui/base/WindowAndroid;->getKeyboardAccessoryView()Landroid/view/ViewGroup;

    move-result-object v0

    .line 155
    .local v0, "container":Landroid/view/ViewGroup;
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 156
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 157
    iget-object v1, p0, Lorg/chromium/ui/autofill/AutofillKeyboardAccessory;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    invoke-virtual {v1, p0}, Lorg/chromium/ui/base/WindowAndroid;->removeKeyboardVisibilityListener(Lorg/chromium/ui/base/WindowAndroid$KeyboardVisibilityListener;)V

    .line 158
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 159
    return-void
.end method

.method public keyboardVisibilityChanged(Z)V
    .locals 1
    .param p1, "isShowing"    # Z

    .prologue
    .line 163
    if-nez p1, :cond_0

    .line 164
    invoke-virtual {p0}, Lorg/chromium/ui/autofill/AutofillKeyboardAccessory;->dismiss()V

    .line 165
    iget-object v0, p0, Lorg/chromium/ui/autofill/AutofillKeyboardAccessory;->mAutofillDelegate:Lorg/chromium/ui/autofill/AutofillDelegate;

    invoke-interface {v0}, Lorg/chromium/ui/autofill/AutofillDelegate;->dismissed()V

    .line 167
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 171
    invoke-static {p0}, Lorg/chromium/ui/UiUtils;->hideKeyboard(Landroid/view/View;)Z

    .line 172
    iget-object v1, p0, Lorg/chromium/ui/autofill/AutofillKeyboardAccessory;->mAutofillDelegate:Lorg/chromium/ui/autofill/AutofillDelegate;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lorg/chromium/ui/autofill/AutofillDelegate;->suggestionSelected(I)V

    .line 173
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 177
    iget-object v1, p0, Lorg/chromium/ui/autofill/AutofillKeyboardAccessory;->mAutofillDelegate:Lorg/chromium/ui/autofill/AutofillDelegate;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lorg/chromium/ui/autofill/AutofillDelegate;->deleteSuggestion(I)V

    .line 178
    const/4 v0, 0x1

    return v0
.end method

.method public showWithSuggestions([Lorg/chromium/ui/autofill/AutofillSuggestion;Z)V
    .locals 13
    .param p1, "suggestions"    # [Lorg/chromium/ui/autofill/AutofillSuggestion;
    .param p2, "isRtl"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    const/4 v12, -0x1

    const/4 v10, 0x0

    .line 69
    invoke-virtual {p0}, Lorg/chromium/ui/autofill/AutofillKeyboardAccessory;->removeAllViews()V

    .line 70
    const/4 v5, -0x1

    .line 71
    .local v5, "separatorPosition":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v9, p1

    if-ge v1, v9, :cond_9

    .line 72
    aget-object v7, p1, v1

    .line 73
    .local v7, "suggestion":Lorg/chromium/ui/autofill/AutofillSuggestion;
    sget-boolean v9, Lorg/chromium/ui/autofill/AutofillKeyboardAccessory;->$assertionsDisabled:Z

    if-nez v9, :cond_0

    invoke-virtual {v7}, Lorg/chromium/ui/autofill/AutofillSuggestion;->getLabel()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 76
    :cond_0
    invoke-virtual {v7}, Lorg/chromium/ui/autofill/AutofillSuggestion;->isFillable()Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v7}, Lorg/chromium/ui/autofill/AutofillSuggestion;->getIconId()I

    move-result v9

    if-eqz v9, :cond_4

    .line 77
    invoke-virtual {p0}, Lorg/chromium/ui/autofill/AutofillKeyboardAccessory;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    sget v11, Lorg/chromium/ui/R$layout;->autofill_keyboard_accessory_icon:I

    invoke-virtual {v9, v11, p0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 80
    .local v8, "touchTarget":Landroid/view/View;
    if-ne v5, v12, :cond_1

    move v5, v1

    :cond_1
    move-object v2, v8

    .line 82
    check-cast v2, Landroid/widget/ImageView;

    .line 83
    .local v2, "icon":Landroid/widget/ImageView;
    invoke-virtual {v7}, Lorg/chromium/ui/autofill/AutofillSuggestion;->getIconId()I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    invoke-virtual {v7}, Lorg/chromium/ui/autofill/AutofillSuggestion;->getLabel()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 116
    .end local v2    # "icon":Landroid/widget/ImageView;
    :cond_2
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 117
    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    invoke-virtual {v7}, Lorg/chromium/ui/autofill/AutofillSuggestion;->isDeletable()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 119
    invoke-virtual {v8, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 122
    :cond_3
    invoke-virtual {p0, v8}, Lorg/chromium/ui/autofill/AutofillKeyboardAccessory;->addView(Landroid/view/View;)V

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    .end local v8    # "touchTarget":Landroid/view/View;
    :cond_4
    invoke-virtual {p0}, Lorg/chromium/ui/autofill/AutofillKeyboardAccessory;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    sget v11, Lorg/chromium/ui/R$layout;->autofill_keyboard_accessory_item:I

    invoke-virtual {v9, v11, p0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 89
    .restart local v8    # "touchTarget":Landroid/view/View;
    sget v9, Lorg/chromium/ui/R$id;->autofill_keyboard_accessory_item_label:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 92
    .local v3, "label":Landroid/widget/TextView;
    invoke-virtual {v7}, Lorg/chromium/ui/autofill/AutofillSuggestion;->isFillable()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 93
    iget v9, p0, Lorg/chromium/ui/autofill/AutofillKeyboardAccessory;->mMaximumLabelWidthPx:I

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 96
    :cond_5
    invoke-virtual {v7}, Lorg/chromium/ui/autofill/AutofillSuggestion;->getLabel()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x15

    if-ge v9, v11, :cond_6

    .line 98
    sget-object v9, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 101
    :cond_6
    invoke-virtual {v7}, Lorg/chromium/ui/autofill/AutofillSuggestion;->getIconId()I

    move-result v9

    if-eqz v9, :cond_7

    .line 102
    invoke-virtual {v7}, Lorg/chromium/ui/autofill/AutofillSuggestion;->getIconId()I

    move-result v9

    invoke-static {v3, v9, v10, v10, v10}, Lorg/chromium/base/ApiCompatibilityUtils;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;IIII)V

    .line 106
    :cond_7
    invoke-virtual {v7}, Lorg/chromium/ui/autofill/AutofillSuggestion;->getSublabel()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 107
    sget-boolean v9, Lorg/chromium/ui/autofill/AutofillKeyboardAccessory;->$assertionsDisabled:Z

    if-nez v9, :cond_8

    invoke-virtual {v7}, Lorg/chromium/ui/autofill/AutofillSuggestion;->isFillable()Z

    move-result v9

    if-nez v9, :cond_8

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 108
    :cond_8
    sget v9, Lorg/chromium/ui/R$id;->autofill_keyboard_accessory_item_sublabel:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 110
    .local v6, "sublabel":Landroid/widget/TextView;
    invoke-virtual {v7}, Lorg/chromium/ui/autofill/AutofillSuggestion;->getSublabel()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    iget v9, p0, Lorg/chromium/ui/autofill/AutofillKeyboardAccessory;->mMaximumSublabelWidthPx:I

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto/16 :goto_1

    .line 125
    .end local v3    # "label":Landroid/widget/TextView;
    .end local v6    # "sublabel":Landroid/widget/TextView;
    .end local v7    # "suggestion":Lorg/chromium/ui/autofill/AutofillSuggestion;
    .end local v8    # "touchTarget":Landroid/view/View;
    :cond_9
    if-eq v5, v12, :cond_a

    .line 126
    new-instance v4, Landroid/view/View;

    invoke-virtual {p0}, Lorg/chromium/ui/autofill/AutofillKeyboardAccessory;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v4, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 127
    .local v4, "separator":Landroid/view/View;
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v9, v10, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    invoke-virtual {p0, v4, v5}, Lorg/chromium/ui/autofill/AutofillKeyboardAccessory;->addView(Landroid/view/View;I)V

    .line 131
    .end local v4    # "separator":Landroid/view/View;
    :cond_a
    if-eqz p2, :cond_c

    const/4 v9, 0x1

    :goto_2
    invoke-static {p0, v9}, Lorg/chromium/base/ApiCompatibilityUtils;->setLayoutDirection(Landroid/view/View;I)V

    .line 134
    iget-object v9, p0, Lorg/chromium/ui/autofill/AutofillKeyboardAccessory;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    invoke-virtual {v9}, Lorg/chromium/ui/base/WindowAndroid;->getKeyboardAccessoryView()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    .line 136
    .local v0, "container":Landroid/widget/HorizontalScrollView;
    invoke-virtual {p0}, Lorg/chromium/ui/autofill/AutofillKeyboardAccessory;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-nez v9, :cond_b

    .line 137
    invoke-virtual {v0, p0}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 138
    invoke-virtual {v0, v10}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 139
    const/16 v9, 0x20

    invoke-virtual {v0, v9}, Landroid/widget/HorizontalScrollView;->sendAccessibilityEvent(I)V

    .line 142
    :cond_b
    new-instance v9, Lorg/chromium/ui/autofill/AutofillKeyboardAccessory$1;

    invoke-direct {v9, p0, v0, p2}, Lorg/chromium/ui/autofill/AutofillKeyboardAccessory$1;-><init>(Lorg/chromium/ui/autofill/AutofillKeyboardAccessory;Landroid/widget/HorizontalScrollView;Z)V

    invoke-virtual {v0, v9}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    .line 148
    return-void

    .end local v0    # "container":Landroid/widget/HorizontalScrollView;
    :cond_c
    move v9, v10

    .line 131
    goto :goto_2
.end method
