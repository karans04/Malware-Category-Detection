.class Lorg/chromium/ui/widget/TextViewWithClickableSpans$1;
.super Ljava/lang/Object;
.source "TextViewWithClickableSpans.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/ui/widget/TextViewWithClickableSpans;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/ui/widget/TextViewWithClickableSpans;


# direct methods
.method constructor <init>(Lorg/chromium/ui/widget/TextViewWithClickableSpans;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lorg/chromium/ui/widget/TextViewWithClickableSpans$1;->this$0:Lorg/chromium/ui/widget/TextViewWithClickableSpans;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/chromium/ui/widget/TextViewWithClickableSpans$1;->this$0:Lorg/chromium/ui/widget/TextViewWithClickableSpans;

    invoke-static {v0}, Lorg/chromium/ui/widget/TextViewWithClickableSpans;->access$000(Lorg/chromium/ui/widget/TextViewWithClickableSpans;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    const/4 v0, 0x0

    .line 65
    :goto_0
    return v0

    .line 64
    :cond_0
    iget-object v0, p0, Lorg/chromium/ui/widget/TextViewWithClickableSpans$1;->this$0:Lorg/chromium/ui/widget/TextViewWithClickableSpans;

    invoke-static {v0}, Lorg/chromium/ui/widget/TextViewWithClickableSpans;->access$100(Lorg/chromium/ui/widget/TextViewWithClickableSpans;)V

    .line 65
    const/4 v0, 0x1

    goto :goto_0
.end method
