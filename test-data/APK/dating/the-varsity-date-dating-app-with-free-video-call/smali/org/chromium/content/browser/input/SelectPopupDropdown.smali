.class public Lorg/chromium/content/browser/input/SelectPopupDropdown;
.super Ljava/lang/Object;
.source "SelectPopupDropdown.java"

# interfaces
.implements Lorg/chromium/content/browser/input/SelectPopup;


# instance fields
.field private final mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

.field private final mContext:Landroid/content/Context;

.field private final mDropdownPopupWindow:Lorg/chromium/ui/DropdownPopupWindow;

.field private mSelectionNotified:Z


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/ContentViewCore;Ljava/util/List;Landroid/graphics/Rect;[IZ)V
    .locals 10
    .param p1, "contentViewCore"    # Lorg/chromium/content/browser/ContentViewCore;
    .param p3, "bounds"    # Landroid/graphics/Rect;
    .param p4, "selected"    # [I
    .param p5, "rightAligned"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/content/browser/ContentViewCore;",
            "Ljava/util/List",
            "<",
            "Lorg/chromium/content/browser/input/SelectPopupItem;",
            ">;",
            "Landroid/graphics/Rect;",
            "[IZ)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lorg/chromium/content/browser/input/SelectPopupItem;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/chromium/content/browser/input/SelectPopupDropdown;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    .line 34
    iget-object v6, p0, Lorg/chromium/content/browser/input/SelectPopupDropdown;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v6}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v6

    iput-object v6, p0, Lorg/chromium/content/browser/input/SelectPopupDropdown;->mContext:Landroid/content/Context;

    .line 35
    new-instance v6, Lorg/chromium/ui/DropdownPopupWindow;

    iget-object v7, p0, Lorg/chromium/content/browser/input/SelectPopupDropdown;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lorg/chromium/content/browser/input/SelectPopupDropdown;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v8}, Lorg/chromium/content/browser/ContentViewCore;->getViewAndroidDelegate()Lorg/chromium/ui/base/ViewAndroidDelegate;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/chromium/ui/DropdownPopupWindow;-><init>(Landroid/content/Context;Lorg/chromium/ui/base/ViewAndroidDelegate;)V

    iput-object v6, p0, Lorg/chromium/content/browser/input/SelectPopupDropdown;->mDropdownPopupWindow:Lorg/chromium/ui/DropdownPopupWindow;

    .line 37
    iget-object v6, p0, Lorg/chromium/content/browser/input/SelectPopupDropdown;->mDropdownPopupWindow:Lorg/chromium/ui/DropdownPopupWindow;

    new-instance v7, Lorg/chromium/content/browser/input/SelectPopupDropdown$1;

    invoke-direct {v7, p0}, Lorg/chromium/content/browser/input/SelectPopupDropdown$1;-><init>(Lorg/chromium/content/browser/input/SelectPopupDropdown;)V

    invoke-virtual {v6, v7}, Lorg/chromium/ui/DropdownPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 45
    const/4 v4, -0x1

    .line 46
    .local v4, "initialSelection":I
    array-length v6, p4

    if-lez v6, :cond_0

    .line 47
    const/4 v6, 0x0

    aget v4, p4, v6

    .line 49
    :cond_0
    iget-object v6, p0, Lorg/chromium/content/browser/input/SelectPopupDropdown;->mDropdownPopupWindow:Lorg/chromium/ui/DropdownPopupWindow;

    invoke-virtual {v6, v4}, Lorg/chromium/ui/DropdownPopupWindow;->setInitialSelection(I)V

    .line 50
    iget-object v6, p0, Lorg/chromium/content/browser/input/SelectPopupDropdown;->mDropdownPopupWindow:Lorg/chromium/ui/DropdownPopupWindow;

    new-instance v7, Lorg/chromium/ui/DropdownAdapter;

    iget-object v8, p0, Lorg/chromium/content/browser/input/SelectPopupDropdown;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-direct {v7, v8, p2, v9}, Lorg/chromium/ui/DropdownAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/Set;)V

    invoke-virtual {v6, v7}, Lorg/chromium/ui/DropdownPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 51
    iget-object v6, p0, Lorg/chromium/content/browser/input/SelectPopupDropdown;->mDropdownPopupWindow:Lorg/chromium/ui/DropdownPopupWindow;

    invoke-virtual {v6, p5}, Lorg/chromium/ui/DropdownPopupWindow;->setRtl(Z)V

    .line 52
    iget-object v6, p0, Lorg/chromium/content/browser/input/SelectPopupDropdown;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v6}, Lorg/chromium/content/browser/ContentViewCore;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinates;

    move-result-object v5

    .line 53
    .local v5, "renderCoordinates":Lorg/chromium/content/browser/RenderCoordinates;
    iget v6, p3, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Lorg/chromium/content/browser/RenderCoordinates;->fromLocalCssToPix(F)F

    move-result v6

    invoke-virtual {v5, v6}, Lorg/chromium/content/browser/RenderCoordinates;->fromPixToDip(F)F

    move-result v2

    .line 55
    .local v2, "anchorX":F
    iget v6, p3, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Lorg/chromium/content/browser/RenderCoordinates;->fromLocalCssToPix(F)F

    move-result v6

    invoke-virtual {v5, v6}, Lorg/chromium/content/browser/RenderCoordinates;->fromPixToDip(F)F

    move-result v3

    .line 57
    .local v3, "anchorY":F
    iget v6, p3, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Lorg/chromium/content/browser/RenderCoordinates;->fromLocalCssToPix(F)F

    move-result v6

    invoke-virtual {v5, v6}, Lorg/chromium/content/browser/RenderCoordinates;->fromPixToDip(F)F

    move-result v6

    sub-float v1, v6, v2

    .line 59
    .local v1, "anchorWidth":F
    iget v6, p3, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Lorg/chromium/content/browser/RenderCoordinates;->fromLocalCssToPix(F)F

    move-result v6

    invoke-virtual {v5, v6}, Lorg/chromium/content/browser/RenderCoordinates;->fromPixToDip(F)F

    move-result v6

    sub-float v0, v6, v3

    .line 61
    .local v0, "anchorHeight":F
    iget-object v6, p0, Lorg/chromium/content/browser/input/SelectPopupDropdown;->mDropdownPopupWindow:Lorg/chromium/ui/DropdownPopupWindow;

    invoke-virtual {v6, v2, v3, v1, v0}, Lorg/chromium/ui/DropdownPopupWindow;->setAnchorRect(FFFF)V

    .line 62
    iget-object v6, p0, Lorg/chromium/content/browser/input/SelectPopupDropdown;->mDropdownPopupWindow:Lorg/chromium/ui/DropdownPopupWindow;

    new-instance v7, Lorg/chromium/content/browser/input/SelectPopupDropdown$2;

    invoke-direct {v7, p0}, Lorg/chromium/content/browser/input/SelectPopupDropdown$2;-><init>(Lorg/chromium/content/browser/input/SelectPopupDropdown;)V

    invoke-virtual {v6, v7}, Lorg/chromium/ui/DropdownPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 69
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/content/browser/input/SelectPopupDropdown;[I)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/input/SelectPopupDropdown;
    .param p1, "x1"    # [I

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/input/SelectPopupDropdown;->notifySelection([I)V

    return-void
.end method

.method private notifySelection([I)V
    .locals 1
    .param p1, "indicies"    # [I

    .prologue
    .line 72
    iget-boolean v0, p0, Lorg/chromium/content/browser/input/SelectPopupDropdown;->mSelectionNotified:Z

    if-eqz v0, :cond_0

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/SelectPopupDropdown;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewCore;->selectPopupMenuItems([I)V

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/input/SelectPopupDropdown;->mSelectionNotified:Z

    goto :goto_0
.end method


# virtual methods
.method public hide(Z)V
    .locals 1
    .param p1, "sendsCancelMessage"    # Z

    .prologue
    .line 86
    if-eqz p1, :cond_0

    .line 87
    iget-object v0, p0, Lorg/chromium/content/browser/input/SelectPopupDropdown;->mDropdownPopupWindow:Lorg/chromium/ui/DropdownPopupWindow;

    invoke-virtual {v0}, Lorg/chromium/ui/DropdownPopupWindow;->dismiss()V

    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/input/SelectPopupDropdown;->notifySelection([I)V

    .line 93
    :goto_0
    return-void

    .line 90
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/input/SelectPopupDropdown;->mSelectionNotified:Z

    .line 91
    iget-object v0, p0, Lorg/chromium/content/browser/input/SelectPopupDropdown;->mDropdownPopupWindow:Lorg/chromium/ui/DropdownPopupWindow;

    invoke-virtual {v0}, Lorg/chromium/ui/DropdownPopupWindow;->dismiss()V

    goto :goto_0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/chromium/content/browser/input/SelectPopupDropdown;->mDropdownPopupWindow:Lorg/chromium/ui/DropdownPopupWindow;

    invoke-virtual {v0}, Lorg/chromium/ui/DropdownPopupWindow;->postShow()V

    .line 82
    return-void
.end method
