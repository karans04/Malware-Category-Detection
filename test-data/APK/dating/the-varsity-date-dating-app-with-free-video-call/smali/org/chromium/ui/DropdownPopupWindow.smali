.class public Lorg/chromium/ui/DropdownPopupWindow;
.super Landroid/widget/ListPopupWindow;
.source "DropdownPopupWindow.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field mAdapter:Landroid/widget/ListAdapter;

.field private mAnchorHeight:F

.field private final mAnchorView:Landroid/view/View;

.field private mAnchorWidth:F

.field private mAnchorX:F

.field private mAnchorY:F

.field private final mContext:Landroid/content/Context;

.field private mDescription:Ljava/lang/CharSequence;

.field private mInitialSelection:I

.field private mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private mRtl:Z

.field private final mViewAndroidDelegate:Lorg/chromium/ui/base/ViewAndroidDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lorg/chromium/ui/DropdownPopupWindow;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/ui/DropdownPopupWindow;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/chromium/ui/base/ViewAndroidDelegate;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewAndroidDelegate"    # Lorg/chromium/ui/base/ViewAndroidDelegate;

    .prologue
    .line 50
    const/4 v1, 0x0

    const/4 v2, 0x0

    sget v3, Lorg/chromium/ui/R$style;->DropdownPopupWindow:I

    invoke-direct {p0, p1, v1, v2, v3}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 38
    const/4 v1, -0x1

    iput v1, p0, Lorg/chromium/ui/DropdownPopupWindow;->mInitialSelection:I

    .line 51
    iput-object p1, p0, Lorg/chromium/ui/DropdownPopupWindow;->mContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lorg/chromium/ui/DropdownPopupWindow;->mViewAndroidDelegate:Lorg/chromium/ui/base/ViewAndroidDelegate;

    .line 54
    iget-object v1, p0, Lorg/chromium/ui/DropdownPopupWindow;->mViewAndroidDelegate:Lorg/chromium/ui/base/ViewAndroidDelegate;

    invoke-interface {v1}, Lorg/chromium/ui/base/ViewAndroidDelegate;->acquireAnchorView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/ui/DropdownPopupWindow;->mAnchorView:Landroid/view/View;

    .line 55
    iget-object v1, p0, Lorg/chromium/ui/DropdownPopupWindow;->mAnchorView:Landroid/view/View;

    sget v2, Lorg/chromium/ui/R$id;->dropdown_popup_window:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    .line 56
    iget-object v1, p0, Lorg/chromium/ui/DropdownPopupWindow;->mAnchorView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 58
    new-instance v1, Lorg/chromium/ui/DropdownPopupWindow$1;

    invoke-direct {v1, p0}, Lorg/chromium/ui/DropdownPopupWindow$1;-><init>(Lorg/chromium/ui/DropdownPopupWindow;)V

    iput-object v1, p0, Lorg/chromium/ui/DropdownPopupWindow;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 65
    iget-object v1, p0, Lorg/chromium/ui/DropdownPopupWindow;->mAnchorView:Landroid/view/View;

    iget-object v2, p0, Lorg/chromium/ui/DropdownPopupWindow;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 67
    new-instance v1, Lorg/chromium/ui/DropdownPopupWindow$2;

    invoke-direct {v1, p0}, Lorg/chromium/ui/DropdownPopupWindow$2;-><init>(Lorg/chromium/ui/DropdownPopupWindow;)V

    invoke-super {p0, v1}, Landroid/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 79
    iget-object v1, p0, Lorg/chromium/ui/DropdownPopupWindow;->mAnchorView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lorg/chromium/ui/DropdownPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 80
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 81
    .local v0, "originalPadding":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lorg/chromium/ui/DropdownPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 82
    iget v1, v0, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    invoke-virtual {p0, v1}, Lorg/chromium/ui/DropdownPopupWindow;->setVerticalOffset(I)V

    .line 83
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/ui/DropdownPopupWindow;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/ui/DropdownPopupWindow;

    .prologue
    .line 28
    iget-object v0, p0, Lorg/chromium/ui/DropdownPopupWindow;->mAnchorView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/ui/DropdownPopupWindow;)Landroid/widget/PopupWindow$OnDismissListener;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/ui/DropdownPopupWindow;

    .prologue
    .line 28
    iget-object v0, p0, Lorg/chromium/ui/DropdownPopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/ui/DropdownPopupWindow;)Landroid/view/View$OnLayoutChangeListener;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/ui/DropdownPopupWindow;

    .prologue
    .line 28
    iget-object v0, p0, Lorg/chromium/ui/DropdownPopupWindow;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    return-object v0
.end method

.method static synthetic access$300(Lorg/chromium/ui/DropdownPopupWindow;)Lorg/chromium/ui/base/ViewAndroidDelegate;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/ui/DropdownPopupWindow;

    .prologue
    .line 28
    iget-object v0, p0, Lorg/chromium/ui/DropdownPopupWindow;->mViewAndroidDelegate:Lorg/chromium/ui/base/ViewAndroidDelegate;

    return-object v0
.end method

.method private measureContentWidth()I
    .locals 12

    .prologue
    const/4 v11, -0x2

    const/4 v9, 0x0

    .line 203
    sget-boolean v8, Lorg/chromium/ui/DropdownPopupWindow;->$assertionsDisabled:Z

    if-nez v8, :cond_0

    iget-object v8, p0, Lorg/chromium/ui/DropdownPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v8, :cond_0

    new-instance v8, Ljava/lang/AssertionError;

    const-string v9, "Set the adapter before showing the popup."

    invoke-direct {v8, v9}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v8

    .line 204
    :cond_0
    const/4 v4, 0x0

    .line 205
    .local v4, "maxWidth":I
    iget-object v8, p0, Lorg/chromium/ui/DropdownPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v8}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v8

    new-array v3, v8, [Landroid/view/View;

    .line 206
    .local v3, "itemViews":[Landroid/view/View;
    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 207
    .local v7, "widthMeasureSpec":I
    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 208
    .local v0, "heightMeasureSpec":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v8, p0, Lorg/chromium/ui/DropdownPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v8}, Landroid/widget/ListAdapter;->getCount()I

    move-result v8

    if-ge v1, v8, :cond_1

    .line 209
    iget-object v8, p0, Lorg/chromium/ui/DropdownPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v8, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v6

    .line 210
    .local v6, "type":I
    iget-object v8, p0, Lorg/chromium/ui/DropdownPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    aget-object v9, v3, v6

    const/4 v10, 0x0

    invoke-interface {v8, v1, v9, v10}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    aput-object v8, v3, v6

    .line 211
    aget-object v2, v3, v6

    .line 212
    .local v2, "itemView":Landroid/view/View;
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 215
    .local v5, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    invoke-virtual {v2, v7, v0}, Landroid/view/View;->measure(II)V

    .line 217
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 208
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 219
    .end local v2    # "itemView":Landroid/view/View;
    .end local v5    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v6    # "type":I
    :cond_1
    return v4
.end method


# virtual methods
.method public disableHideOnOutsideTap()V
    .locals 7

    .prologue
    .line 179
    :try_start_0
    const-class v2, Landroid/widget/ListPopupWindow;

    const-string v3, "setForceIgnoreOutsideTouch"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 181
    .local v1, "setForceIgnoreOutsideTouch":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    .end local v1    # "setForceIgnoreOutsideTouch":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "AutofillPopup"

    const-string v3, "ListPopupWindow.setForceIgnoreOutsideTouch not found"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 107
    iput-object p1, p0, Lorg/chromium/ui/DropdownPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    .line 108
    invoke-super {p0, p1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 109
    return-void
.end method

.method public setAnchorRect(FFFF)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F

    .prologue
    .line 95
    iput p3, p0, Lorg/chromium/ui/DropdownPopupWindow;->mAnchorWidth:F

    .line 96
    iput p4, p0, Lorg/chromium/ui/DropdownPopupWindow;->mAnchorHeight:F

    .line 97
    iput p1, p0, Lorg/chromium/ui/DropdownPopupWindow;->mAnchorX:F

    .line 98
    iput p2, p0, Lorg/chromium/ui/DropdownPopupWindow;->mAnchorY:F

    .line 99
    iget-object v0, p0, Lorg/chromium/ui/DropdownPopupWindow;->mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lorg/chromium/ui/DropdownPopupWindow;->mViewAndroidDelegate:Lorg/chromium/ui/base/ViewAndroidDelegate;

    iget-object v1, p0, Lorg/chromium/ui/DropdownPopupWindow;->mAnchorView:Landroid/view/View;

    iget v2, p0, Lorg/chromium/ui/DropdownPopupWindow;->mAnchorX:F

    iget v3, p0, Lorg/chromium/ui/DropdownPopupWindow;->mAnchorY:F

    iget v4, p0, Lorg/chromium/ui/DropdownPopupWindow;->mAnchorWidth:F

    iget v5, p0, Lorg/chromium/ui/DropdownPopupWindow;->mAnchorHeight:F

    invoke-interface/range {v0 .. v5}, Lorg/chromium/ui/base/ViewAndroidDelegate;->setAnchorViewPosition(Landroid/view/View;FFFF)V

    .line 103
    :cond_0
    return-void
.end method

.method public setContentDescriptionForAccessibility(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 195
    iput-object p1, p0, Lorg/chromium/ui/DropdownPopupWindow;->mDescription:Ljava/lang/CharSequence;

    .line 196
    return-void
.end method

.method public setInitialSelection(I)V
    .locals 0
    .param p1, "initialSelection"    # I

    .prologue
    .line 113
    iput p1, p0, Lorg/chromium/ui/DropdownPopupWindow;->mInitialSelection:I

    .line 114
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/PopupWindow$OnDismissListener;

    .prologue
    .line 158
    iput-object p1, p0, Lorg/chromium/ui/DropdownPopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 159
    return-void
.end method

.method public setRtl(Z)V
    .locals 0
    .param p1, "isRtl"    # Z

    .prologue
    .line 166
    iput-boolean p1, p0, Lorg/chromium/ui/DropdownPopupWindow;->mRtl:Z

    .line 167
    return-void
.end method

.method public show()V
    .locals 13

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 122
    invoke-virtual {p0, v11}, Lorg/chromium/ui/DropdownPopupWindow;->setInputMethodMode(I)V

    .line 124
    invoke-direct {p0}, Lorg/chromium/ui/DropdownPopupWindow;->measureContentWidth()I

    move-result v6

    .line 125
    .local v6, "contentWidth":I
    int-to-float v0, v6

    iget-object v1, p0, Lorg/chromium/ui/DropdownPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float v7, v0, v1

    .line 127
    .local v7, "contentWidthInDip":F
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 128
    .local v9, "padding":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lorg/chromium/ui/DropdownPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 129
    iget v0, v9, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    add-float/2addr v0, v7

    iget v1, v9, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lorg/chromium/ui/DropdownPopupWindow;->mAnchorWidth:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 130
    invoke-virtual {p0, v6}, Lorg/chromium/ui/DropdownPopupWindow;->setContentWidth(I)V

    .line 131
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 132
    .local v8, "displayFrame":Landroid/graphics/Rect;
    iget-object v0, p0, Lorg/chromium/ui/DropdownPopupWindow;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 133
    invoke-virtual {p0}, Lorg/chromium/ui/DropdownPopupWindow;->getWidth()I

    move-result v0

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 134
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/chromium/ui/DropdownPopupWindow;->setWidth(I)V

    .line 139
    .end local v8    # "displayFrame":Landroid/graphics/Rect;
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/chromium/ui/DropdownPopupWindow;->mViewAndroidDelegate:Lorg/chromium/ui/base/ViewAndroidDelegate;

    iget-object v1, p0, Lorg/chromium/ui/DropdownPopupWindow;->mAnchorView:Landroid/view/View;

    iget v2, p0, Lorg/chromium/ui/DropdownPopupWindow;->mAnchorX:F

    iget v3, p0, Lorg/chromium/ui/DropdownPopupWindow;->mAnchorY:F

    iget v4, p0, Lorg/chromium/ui/DropdownPopupWindow;->mAnchorWidth:F

    iget v5, p0, Lorg/chromium/ui/DropdownPopupWindow;->mAnchorHeight:F

    invoke-interface/range {v0 .. v5}, Lorg/chromium/ui/base/ViewAndroidDelegate;->setAnchorViewPosition(Landroid/view/View;FFFF)V

    .line 141
    invoke-virtual {p0}, Lorg/chromium/ui/DropdownPopupWindow;->isShowing()Z

    move-result v10

    .line 142
    .local v10, "wasShowing":Z
    invoke-super {p0}, Landroid/widget/ListPopupWindow;->show()V

    .line 143
    invoke-virtual {p0}, Lorg/chromium/ui/DropdownPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 144
    invoke-virtual {p0}, Lorg/chromium/ui/DropdownPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-boolean v0, p0, Lorg/chromium/ui/DropdownPopupWindow;->mRtl:Z

    if-eqz v0, :cond_4

    move v0, v11

    :goto_1
    invoke-static {v1, v0}, Lorg/chromium/base/ApiCompatibilityUtils;->setLayoutDirection(Landroid/view/View;I)V

    .line 146
    if-nez v10, :cond_1

    .line 147
    invoke-virtual {p0}, Lorg/chromium/ui/DropdownPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/ui/DropdownPopupWindow;->mDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 148
    invoke-virtual {p0}, Lorg/chromium/ui/DropdownPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->sendAccessibilityEvent(I)V

    .line 150
    :cond_1
    iget v0, p0, Lorg/chromium/ui/DropdownPopupWindow;->mInitialSelection:I

    if-ltz v0, :cond_2

    .line 151
    invoke-virtual {p0}, Lorg/chromium/ui/DropdownPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget v1, p0, Lorg/chromium/ui/DropdownPopupWindow;->mInitialSelection:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 152
    const/4 v0, -0x1

    iput v0, p0, Lorg/chromium/ui/DropdownPopupWindow;->mInitialSelection:I

    .line 154
    :cond_2
    return-void

    .line 137
    .end local v10    # "wasShowing":Z
    :cond_3
    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lorg/chromium/ui/DropdownPopupWindow;->setWidth(I)V

    goto :goto_0

    .restart local v10    # "wasShowing":Z
    :cond_4
    move v0, v12

    .line 144
    goto :goto_1
.end method
