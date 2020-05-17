.class Lorg/chromium/ui/DropdownPopupWindow$2;
.super Ljava/lang/Object;
.source "DropdownPopupWindow.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/ui/DropdownPopupWindow;-><init>(Landroid/content/Context;Lorg/chromium/ui/base/ViewAndroidDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/ui/DropdownPopupWindow;


# direct methods
.method constructor <init>(Lorg/chromium/ui/DropdownPopupWindow;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lorg/chromium/ui/DropdownPopupWindow$2;->this$0:Lorg/chromium/ui/DropdownPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lorg/chromium/ui/DropdownPopupWindow$2;->this$0:Lorg/chromium/ui/DropdownPopupWindow;

    invoke-static {v0}, Lorg/chromium/ui/DropdownPopupWindow;->access$100(Lorg/chromium/ui/DropdownPopupWindow;)Landroid/widget/PopupWindow$OnDismissListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lorg/chromium/ui/DropdownPopupWindow$2;->this$0:Lorg/chromium/ui/DropdownPopupWindow;

    invoke-static {v0}, Lorg/chromium/ui/DropdownPopupWindow;->access$100(Lorg/chromium/ui/DropdownPopupWindow;)Landroid/widget/PopupWindow$OnDismissListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 73
    :cond_0
    iget-object v0, p0, Lorg/chromium/ui/DropdownPopupWindow$2;->this$0:Lorg/chromium/ui/DropdownPopupWindow;

    invoke-static {v0}, Lorg/chromium/ui/DropdownPopupWindow;->access$000(Lorg/chromium/ui/DropdownPopupWindow;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/ui/DropdownPopupWindow$2;->this$0:Lorg/chromium/ui/DropdownPopupWindow;

    invoke-static {v1}, Lorg/chromium/ui/DropdownPopupWindow;->access$200(Lorg/chromium/ui/DropdownPopupWindow;)Landroid/view/View$OnLayoutChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 74
    iget-object v0, p0, Lorg/chromium/ui/DropdownPopupWindow$2;->this$0:Lorg/chromium/ui/DropdownPopupWindow;

    invoke-static {v0}, Lorg/chromium/ui/DropdownPopupWindow;->access$000(Lorg/chromium/ui/DropdownPopupWindow;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 75
    iget-object v0, p0, Lorg/chromium/ui/DropdownPopupWindow$2;->this$0:Lorg/chromium/ui/DropdownPopupWindow;

    invoke-static {v0}, Lorg/chromium/ui/DropdownPopupWindow;->access$300(Lorg/chromium/ui/DropdownPopupWindow;)Lorg/chromium/ui/base/ViewAndroidDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/ui/DropdownPopupWindow$2;->this$0:Lorg/chromium/ui/DropdownPopupWindow;

    invoke-static {v1}, Lorg/chromium/ui/DropdownPopupWindow;->access$000(Lorg/chromium/ui/DropdownPopupWindow;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/chromium/ui/base/ViewAndroidDelegate;->releaseAnchorView(Landroid/view/View;)V

    .line 76
    return-void
.end method
