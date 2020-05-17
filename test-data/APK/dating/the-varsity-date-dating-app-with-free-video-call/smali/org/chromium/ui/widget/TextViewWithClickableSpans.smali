.class public Lorg/chromium/ui/widget/TextViewWithClickableSpans;
.super Landroid/widget/TextView;
.source "TextViewWithClickableSpans.java"


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-direct {p0}, Lorg/chromium/ui/widget/TextViewWithClickableSpans;->init()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    invoke-direct {p0}, Lorg/chromium/ui/widget/TextViewWithClickableSpans;->init()V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    invoke-direct {p0}, Lorg/chromium/ui/widget/TextViewWithClickableSpans;->init()V

    .line 49
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/ui/widget/TextViewWithClickableSpans;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/ui/widget/TextViewWithClickableSpans;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/chromium/ui/widget/TextViewWithClickableSpans;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/ui/widget/TextViewWithClickableSpans;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/ui/widget/TextViewWithClickableSpans;

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/chromium/ui/widget/TextViewWithClickableSpans;->openDisambiguationMenu()V

    return-void
.end method

.method private handleAccessibilityClick()V
    .locals 3

    .prologue
    .line 138
    invoke-virtual {p0}, Lorg/chromium/ui/widget/TextViewWithClickableSpans;->getClickableSpans()[Landroid/text/style/ClickableSpan;

    move-result-object v0

    .line 139
    .local v0, "clickableSpans":[Landroid/text/style/ClickableSpan;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 142
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1, p0}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 144
    :cond_2
    invoke-direct {p0}, Lorg/chromium/ui/widget/TextViewWithClickableSpans;->openDisambiguationMenu()V

    goto :goto_0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/ui/widget/TextViewWithClickableSpans;->setSaveEnabled(Z)V

    .line 56
    invoke-virtual {p0}, Lorg/chromium/ui/widget/TextViewWithClickableSpans;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lorg/chromium/ui/widget/TextViewWithClickableSpans;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 58
    new-instance v0, Lorg/chromium/ui/widget/TextViewWithClickableSpans$1;

    invoke-direct {v0, p0}, Lorg/chromium/ui/widget/TextViewWithClickableSpans$1;-><init>(Lorg/chromium/ui/widget/TextViewWithClickableSpans;)V

    invoke-virtual {p0, v0}, Lorg/chromium/ui/widget/TextViewWithClickableSpans;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 68
    return-void
.end method

.method private openDisambiguationMenu()V
    .locals 12

    .prologue
    .line 149
    invoke-virtual {p0}, Lorg/chromium/ui/widget/TextViewWithClickableSpans;->getClickableSpans()[Landroid/text/style/ClickableSpan;

    move-result-object v2

    .line 150
    .local v2, "clickableSpans":[Landroid/text/style/ClickableSpan;
    if-eqz v2, :cond_0

    array-length v10, v2

    if-nez v10, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/ui/widget/TextViewWithClickableSpans;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    check-cast v9, Landroid/text/SpannableString;

    .line 153
    .local v9, "spannable":Landroid/text/SpannableString;
    new-instance v8, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lorg/chromium/ui/widget/TextViewWithClickableSpans;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v8, v10, p0}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 154
    .local v8, "popup":Landroid/widget/PopupMenu;
    invoke-virtual {v8}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v6

    .line 155
    .local v6, "menu":Landroid/view/Menu;
    move-object v0, v2

    .local v0, "arr$":[Landroid/text/style/ClickableSpan;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v5, :cond_2

    aget-object v1, v0, v3

    .line 156
    .local v1, "clickableSpan":Landroid/text/style/ClickableSpan;
    invoke-virtual {v9, v1}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    invoke-virtual {v9, v1}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/text/SpannableString;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 159
    .local v4, "itemText":Ljava/lang/CharSequence;
    invoke-interface {v6, v4}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v7

    .line 160
    .local v7, "menuItem":Landroid/view/MenuItem;
    new-instance v10, Lorg/chromium/ui/widget/TextViewWithClickableSpans$2;

    invoke-direct {v10, p0, v1}, Lorg/chromium/ui/widget/TextViewWithClickableSpans$2;-><init>(Lorg/chromium/ui/widget/TextViewWithClickableSpans;Landroid/text/style/ClickableSpan;)V

    invoke-interface {v7, v10}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 155
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 169
    .end local v1    # "clickableSpan":Landroid/text/style/ClickableSpan;
    .end local v4    # "itemText":Ljava/lang/CharSequence;
    .end local v7    # "menuItem":Landroid/view/MenuItem;
    :cond_2
    invoke-virtual {v8}, Landroid/widget/PopupMenu;->show()V

    goto :goto_0
.end method

.method private touchIntersectsAnyClickableSpans(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    .line 103
    invoke-virtual {p0}, Lorg/chromium/ui/widget/TextViewWithClickableSpans;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    .line 104
    .local v5, "text":Ljava/lang/CharSequence;
    instance-of v9, v5, Landroid/text/SpannableString;

    if-nez v9, :cond_1

    .line 122
    :cond_0
    :goto_0
    return v8

    :cond_1
    move-object v4, v5

    .line 105
    check-cast v4, Landroid/text/SpannableString;

    .line 107
    .local v4, "spannable":Landroid/text/SpannableString;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v6, v9

    .line 108
    .local v6, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v7, v9

    .line 110
    .local v7, "y":I
    invoke-virtual {p0}, Lorg/chromium/ui/widget/TextViewWithClickableSpans;->getTotalPaddingLeft()I

    move-result v9

    sub-int/2addr v6, v9

    .line 111
    invoke-virtual {p0}, Lorg/chromium/ui/widget/TextViewWithClickableSpans;->getTotalPaddingTop()I

    move-result v9

    sub-int/2addr v7, v9

    .line 113
    invoke-virtual {p0}, Lorg/chromium/ui/widget/TextViewWithClickableSpans;->getScrollX()I

    move-result v9

    add-int/2addr v6, v9

    .line 114
    invoke-virtual {p0}, Lorg/chromium/ui/widget/TextViewWithClickableSpans;->getScrollY()I

    move-result v9

    add-int/2addr v7, v9

    .line 116
    invoke-virtual {p0}, Lorg/chromium/ui/widget/TextViewWithClickableSpans;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 117
    .local v1, "layout":Landroid/text/Layout;
    invoke-virtual {v1, v7}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v2

    .line 118
    .local v2, "line":I
    int-to-float v9, v6

    invoke-virtual {v1, v2, v9}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v3

    .line 120
    .local v3, "off":I
    const-class v9, Landroid/text/style/ClickableSpan;

    invoke-virtual {v4, v3, v3, v9}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ClickableSpan;

    .line 122
    .local v0, "clickableSpans":[Landroid/text/style/ClickableSpan;
    array-length v9, v0

    if-lez v9, :cond_0

    const/4 v8, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getClickableSpans()[Landroid/text/style/ClickableSpan;
    .locals 5
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 130
    invoke-virtual {p0}, Lorg/chromium/ui/widget/TextViewWithClickableSpans;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 131
    .local v1, "text":Ljava/lang/CharSequence;
    instance-of v2, v1, Landroid/text/SpannableString;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 134
    :goto_0
    return-object v2

    :cond_0
    move-object v0, v1

    .line 133
    check-cast v0, Landroid/text/SpannableString;

    .line 134
    .local v0, "spannable":Landroid/text/SpannableString;
    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    const-class v4, Landroid/text/style/ClickableSpan;

    invoke-virtual {v0, v2, v3, v4}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/ClickableSpan;

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 84
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 86
    .local v0, "superResult":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v2, v1, :cond_0

    iget-object v2, p0, Lorg/chromium/ui/widget/TextViewWithClickableSpans;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lorg/chromium/ui/widget/TextViewWithClickableSpans;->touchIntersectsAnyClickableSpans(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 89
    invoke-direct {p0}, Lorg/chromium/ui/widget/TextViewWithClickableSpans;->handleAccessibilityClick()V

    move v0, v1

    .line 93
    .end local v0    # "superResult":Z
    :cond_0
    return v0
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 74
    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    .line 75
    invoke-direct {p0}, Lorg/chromium/ui/widget/TextViewWithClickableSpans;->handleAccessibilityClick()V

    .line 76
    const/4 v0, 0x1

    .line 78
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_0
.end method
