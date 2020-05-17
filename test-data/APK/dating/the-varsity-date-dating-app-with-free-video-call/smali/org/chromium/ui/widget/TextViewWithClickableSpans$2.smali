.class Lorg/chromium/ui/widget/TextViewWithClickableSpans$2;
.super Ljava/lang/Object;
.source "TextViewWithClickableSpans.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/ui/widget/TextViewWithClickableSpans;->openDisambiguationMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/ui/widget/TextViewWithClickableSpans;

.field final synthetic val$clickableSpan:Landroid/text/style/ClickableSpan;


# direct methods
.method constructor <init>(Lorg/chromium/ui/widget/TextViewWithClickableSpans;Landroid/text/style/ClickableSpan;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lorg/chromium/ui/widget/TextViewWithClickableSpans$2;->this$0:Lorg/chromium/ui/widget/TextViewWithClickableSpans;

    iput-object p2, p0, Lorg/chromium/ui/widget/TextViewWithClickableSpans$2;->val$clickableSpan:Landroid/text/style/ClickableSpan;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 163
    iget-object v0, p0, Lorg/chromium/ui/widget/TextViewWithClickableSpans$2;->val$clickableSpan:Landroid/text/style/ClickableSpan;

    iget-object v1, p0, Lorg/chromium/ui/widget/TextViewWithClickableSpans$2;->this$0:Lorg/chromium/ui/widget/TextViewWithClickableSpans;

    invoke-virtual {v0, v1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    .line 164
    const/4 v0, 0x1

    return v0
.end method
