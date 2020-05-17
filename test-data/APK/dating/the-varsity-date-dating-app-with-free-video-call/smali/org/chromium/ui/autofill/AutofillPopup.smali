.class public Lorg/chromium/ui/autofill/AutofillPopup;
.super Lorg/chromium/ui/DropdownPopupWindow;
.source "AutofillPopup.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ITEM_ID_SEPARATOR_ENTRY:I = -0x3


# instance fields
.field private final mAutofillDelegate:Lorg/chromium/ui/autofill/AutofillDelegate;

.field private final mContext:Landroid/content/Context;

.field private mSuggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/chromium/ui/autofill/AutofillSuggestion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lorg/chromium/ui/autofill/AutofillPopup;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/ui/autofill/AutofillPopup;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/chromium/ui/base/ViewAndroidDelegate;Lorg/chromium/ui/autofill/AutofillDelegate;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewAndroidDelegate"    # Lorg/chromium/ui/base/ViewAndroidDelegate;
    .param p3, "autofillDelegate"    # Lorg/chromium/ui/autofill/AutofillDelegate;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lorg/chromium/ui/DropdownPopupWindow;-><init>(Landroid/content/Context;Lorg/chromium/ui/base/ViewAndroidDelegate;)V

    .line 49
    iput-object p1, p0, Lorg/chromium/ui/autofill/AutofillPopup;->mContext:Landroid/content/Context;

    .line 50
    iput-object p3, p0, Lorg/chromium/ui/autofill/AutofillPopup;->mAutofillDelegate:Lorg/chromium/ui/autofill/AutofillDelegate;

    .line 52
    invoke-virtual {p0, p0}, Lorg/chromium/ui/autofill/AutofillPopup;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 53
    invoke-virtual {p0, p0}, Lorg/chromium/ui/autofill/AutofillPopup;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 54
    invoke-virtual {p0}, Lorg/chromium/ui/autofill/AutofillPopup;->disableHideOnOutsideTap()V

    .line 55
    iget-object v0, p0, Lorg/chromium/ui/autofill/AutofillPopup;->mContext:Landroid/content/Context;

    sget v1, Lorg/chromium/ui/R$string;->autofill_popup_content_description:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/ui/autofill/AutofillPopup;->setContentDescriptionForAccessibility(Ljava/lang/CharSequence;)V

    .line 57
    return-void
.end method


# virtual methods
.method public filterAndShow([Lorg/chromium/ui/autofill/AutofillSuggestion;Z)V
    .locals 6
    .param p1, "suggestions"    # [Lorg/chromium/ui/autofill/AutofillSuggestion;
    .param p2, "isRtl"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 65
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v4, p0, Lorg/chromium/ui/autofill/AutofillPopup;->mSuggestions:Ljava/util/List;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v0, "cleanedData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/chromium/ui/DropdownItem;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 69
    .local v3, "separators":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_1

    .line 70
    aget-object v4, p1, v1

    invoke-virtual {v4}, Lorg/chromium/ui/autofill/AutofillSuggestion;->getSuggestionId()I

    move-result v2

    .line 71
    .local v2, "itemId":I
    const/4 v4, -0x3

    if-ne v2, v4, :cond_0

    .line 72
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 69
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    :cond_0
    aget-object v4, p1, v1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 78
    .end local v2    # "itemId":I
    :cond_1
    new-instance v4, Lorg/chromium/ui/DropdownAdapter;

    iget-object v5, p0, Lorg/chromium/ui/autofill/AutofillPopup;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v0, v3}, Lorg/chromium/ui/DropdownAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/Set;)V

    invoke-virtual {p0, v4}, Lorg/chromium/ui/autofill/AutofillPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 79
    invoke-virtual {p0, p2}, Lorg/chromium/ui/autofill/AutofillPopup;->setRtl(Z)V

    .line 80
    invoke-virtual {p0}, Lorg/chromium/ui/autofill/AutofillPopup;->show()V

    .line 81
    invoke-virtual {p0}, Lorg/chromium/ui/autofill/AutofillPopup;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 82
    return-void
.end method

.method public onDismiss()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/chromium/ui/autofill/AutofillPopup;->mAutofillDelegate:Lorg/chromium/ui/autofill/AutofillDelegate;

    invoke-interface {v0}, Lorg/chromium/ui/autofill/AutofillDelegate;->dismissed()V

    .line 107
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/DropdownAdapter;

    .line 87
    .local v0, "adapter":Lorg/chromium/ui/DropdownAdapter;
    iget-object v2, p0, Lorg/chromium/ui/autofill/AutofillPopup;->mSuggestions:Ljava/util/List;

    invoke-virtual {v0, p3}, Lorg/chromium/ui/DropdownAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 88
    .local v1, "listIndex":I
    sget-boolean v2, Lorg/chromium/ui/autofill/AutofillPopup;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    const/4 v2, -0x1

    if-gt v1, v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 89
    :cond_0
    iget-object v2, p0, Lorg/chromium/ui/autofill/AutofillPopup;->mAutofillDelegate:Lorg/chromium/ui/autofill/AutofillDelegate;

    invoke-interface {v2, v1}, Lorg/chromium/ui/autofill/AutofillDelegate;->suggestionSelected(I)V

    .line 90
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/DropdownAdapter;

    .line 95
    .local v0, "adapter":Lorg/chromium/ui/DropdownAdapter;
    invoke-virtual {v0, p3}, Lorg/chromium/ui/DropdownAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/ui/autofill/AutofillSuggestion;

    .line 96
    .local v2, "suggestion":Lorg/chromium/ui/autofill/AutofillSuggestion;
    invoke-virtual {v2}, Lorg/chromium/ui/autofill/AutofillSuggestion;->isDeletable()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    .line 101
    :goto_0
    return v3

    .line 98
    :cond_0
    iget-object v3, p0, Lorg/chromium/ui/autofill/AutofillPopup;->mSuggestions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 99
    .local v1, "listIndex":I
    sget-boolean v3, Lorg/chromium/ui/autofill/AutofillPopup;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    const/4 v3, -0x1

    if-gt v1, v3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 100
    :cond_1
    iget-object v3, p0, Lorg/chromium/ui/autofill/AutofillPopup;->mAutofillDelegate:Lorg/chromium/ui/autofill/AutofillDelegate;

    invoke-interface {v3, v1}, Lorg/chromium/ui/autofill/AutofillDelegate;->deleteSuggestion(I)V

    .line 101
    const/4 v3, 0x1

    goto :goto_0
.end method
