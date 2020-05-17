.class Lorg/chromium/content/browser/input/FloatingPastePopupMenu$1;
.super Ljava/lang/Object;
.source "FloatingPastePopupMenu.java"

# interfaces
.implements Lorg/chromium/content/browser/WebActionModeCallback$ActionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/input/FloatingPastePopupMenu;->getActionHandler()Lorg/chromium/content/browser/WebActionModeCallback$ActionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/input/FloatingPastePopupMenu;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/input/FloatingPastePopupMenu;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lorg/chromium/content/browser/input/FloatingPastePopupMenu$1;->this$0:Lorg/chromium/content/browser/input/FloatingPastePopupMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copy()V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method public cut()V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method public isIncognito()Z
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public isInsertion()Z
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x1

    return v0
.end method

.method public isSelectActionModeAllowed(I)Z
    .locals 1
    .param p1, "actionModeItem"    # I

    .prologue
    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public isSelectionEditable()Z
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x1

    return v0
.end method

.method public isSelectionPassword()Z
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public onDestroyActionMode()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lorg/chromium/content/browser/input/FloatingPastePopupMenu$1;->this$0:Lorg/chromium/content/browser/input/FloatingPastePopupMenu;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/chromium/content/browser/input/FloatingPastePopupMenu;->access$102(Lorg/chromium/content/browser/input/FloatingPastePopupMenu;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 165
    iget-object v0, p0, Lorg/chromium/content/browser/input/FloatingPastePopupMenu$1;->this$0:Lorg/chromium/content/browser/input/FloatingPastePopupMenu;

    invoke-static {v0}, Lorg/chromium/content/browser/input/FloatingPastePopupMenu;->access$000(Lorg/chromium/content/browser/input/FloatingPastePopupMenu;)Lorg/chromium/content/browser/input/PastePopupMenu$PastePopupMenuDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content/browser/input/PastePopupMenu$PastePopupMenuDelegate;->onDismiss()V

    .line 166
    return-void
.end method

.method public onGetContentRect(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 172
    iget-object v0, p0, Lorg/chromium/content/browser/input/FloatingPastePopupMenu$1;->this$0:Lorg/chromium/content/browser/input/FloatingPastePopupMenu;

    invoke-static {v0}, Lorg/chromium/content/browser/input/FloatingPastePopupMenu;->access$200(Lorg/chromium/content/browser/input/FloatingPastePopupMenu;)I

    move-result v0

    iget-object v1, p0, Lorg/chromium/content/browser/input/FloatingPastePopupMenu$1;->this$0:Lorg/chromium/content/browser/input/FloatingPastePopupMenu;

    invoke-static {v1}, Lorg/chromium/content/browser/input/FloatingPastePopupMenu;->access$300(Lorg/chromium/content/browser/input/FloatingPastePopupMenu;)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/chromium/content/browser/input/FloatingPastePopupMenu$1;->this$0:Lorg/chromium/content/browser/input/FloatingPastePopupMenu;

    invoke-static {v1}, Lorg/chromium/content/browser/input/FloatingPastePopupMenu;->access$400(Lorg/chromium/content/browser/input/FloatingPastePopupMenu;)I

    move-result v1

    iget-object v2, p0, Lorg/chromium/content/browser/input/FloatingPastePopupMenu$1;->this$0:Lorg/chromium/content/browser/input/FloatingPastePopupMenu;

    invoke-static {v2}, Lorg/chromium/content/browser/input/FloatingPastePopupMenu;->access$300(Lorg/chromium/content/browser/input/FloatingPastePopupMenu;)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lorg/chromium/content/browser/input/FloatingPastePopupMenu$1;->this$0:Lorg/chromium/content/browser/input/FloatingPastePopupMenu;

    invoke-static {v2}, Lorg/chromium/content/browser/input/FloatingPastePopupMenu;->access$200(Lorg/chromium/content/browser/input/FloatingPastePopupMenu;)I

    move-result v2

    iget-object v3, p0, Lorg/chromium/content/browser/input/FloatingPastePopupMenu$1;->this$0:Lorg/chromium/content/browser/input/FloatingPastePopupMenu;

    invoke-static {v3}, Lorg/chromium/content/browser/input/FloatingPastePopupMenu;->access$300(Lorg/chromium/content/browser/input/FloatingPastePopupMenu;)I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lorg/chromium/content/browser/input/FloatingPastePopupMenu$1;->this$0:Lorg/chromium/content/browser/input/FloatingPastePopupMenu;

    invoke-static {v3}, Lorg/chromium/content/browser/input/FloatingPastePopupMenu;->access$400(Lorg/chromium/content/browser/input/FloatingPastePopupMenu;)I

    move-result v3

    iget-object v4, p0, Lorg/chromium/content/browser/input/FloatingPastePopupMenu$1;->this$0:Lorg/chromium/content/browser/input/FloatingPastePopupMenu;

    invoke-static {v4}, Lorg/chromium/content/browser/input/FloatingPastePopupMenu;->access$300(Lorg/chromium/content/browser/input/FloatingPastePopupMenu;)I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 174
    return-void
.end method

.method public paste()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lorg/chromium/content/browser/input/FloatingPastePopupMenu$1;->this$0:Lorg/chromium/content/browser/input/FloatingPastePopupMenu;

    invoke-static {v0}, Lorg/chromium/content/browser/input/FloatingPastePopupMenu;->access$000(Lorg/chromium/content/browser/input/FloatingPastePopupMenu;)Lorg/chromium/content/browser/input/PastePopupMenu$PastePopupMenuDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content/browser/input/PastePopupMenu$PastePopupMenuDelegate;->paste()V

    .line 136
    return-void
.end method

.method public processText(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 145
    return-void
.end method

.method public search()V
    .locals 0

    .prologue
    .line 142
    return-void
.end method

.method public selectAll()V
    .locals 0

    .prologue
    .line 125
    return-void
.end method

.method public share()V
    .locals 0

    .prologue
    .line 139
    return-void
.end method
