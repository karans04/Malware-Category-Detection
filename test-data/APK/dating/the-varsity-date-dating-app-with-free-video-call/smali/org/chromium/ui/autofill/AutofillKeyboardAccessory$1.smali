.class Lorg/chromium/ui/autofill/AutofillKeyboardAccessory$1;
.super Ljava/lang/Object;
.source "AutofillKeyboardAccessory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/ui/autofill/AutofillKeyboardAccessory;->showWithSuggestions([Lorg/chromium/ui/autofill/AutofillSuggestion;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/ui/autofill/AutofillKeyboardAccessory;

.field final synthetic val$container:Landroid/widget/HorizontalScrollView;

.field final synthetic val$isRtl:Z


# direct methods
.method constructor <init>(Lorg/chromium/ui/autofill/AutofillKeyboardAccessory;Landroid/widget/HorizontalScrollView;Z)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lorg/chromium/ui/autofill/AutofillKeyboardAccessory$1;->this$0:Lorg/chromium/ui/autofill/AutofillKeyboardAccessory;

    iput-object p2, p0, Lorg/chromium/ui/autofill/AutofillKeyboardAccessory$1;->val$container:Landroid/widget/HorizontalScrollView;

    iput-boolean p3, p0, Lorg/chromium/ui/autofill/AutofillKeyboardAccessory$1;->val$isRtl:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 145
    iget-object v2, p0, Lorg/chromium/ui/autofill/AutofillKeyboardAccessory$1;->val$container:Landroid/widget/HorizontalScrollView;

    iget-boolean v0, p0, Lorg/chromium/ui/autofill/AutofillKeyboardAccessory$1;->val$isRtl:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/ui/autofill/AutofillKeyboardAccessory$1;->this$0:Lorg/chromium/ui/autofill/AutofillKeyboardAccessory;

    invoke-virtual {v0}, Lorg/chromium/ui/autofill/AutofillKeyboardAccessory;->getRight()I

    move-result v0

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 146
    return-void

    :cond_0
    move v0, v1

    .line 145
    goto :goto_0
.end method
