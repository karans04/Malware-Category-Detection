.class Lorg/xwalk/core/XWalkDialogManager$1;
.super Ljava/lang/Object;
.source "XWalkDialogManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xwalk/core/XWalkDialogManager;->showDialog(Landroid/app/AlertDialog;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/xwalk/core/XWalkDialogManager;

.field final synthetic val$actions:Ljava/util/ArrayList;

.field final synthetic val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lorg/xwalk/core/XWalkDialogManager;Ljava/util/ArrayList;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 565
    iput-object p1, p0, Lorg/xwalk/core/XWalkDialogManager$1;->this$0:Lorg/xwalk/core/XWalkDialogManager;

    iput-object p2, p0, Lorg/xwalk/core/XWalkDialogManager$1;->val$actions:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/xwalk/core/XWalkDialogManager$1;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 7
    .param p1, "d"    # Landroid/content/DialogInterface;

    .prologue
    .line 568
    iget-object v4, p0, Lorg/xwalk/core/XWalkDialogManager$1;->val$actions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xwalk/core/XWalkDialogManager$ButtonAction;

    .line 569
    .local v0, "action":Lorg/xwalk/core/XWalkDialogManager$ButtonAction;
    iget-object v4, p0, Lorg/xwalk/core/XWalkDialogManager$1;->val$dialog:Landroid/app/AlertDialog;

    iget v5, v0, Lorg/xwalk/core/XWalkDialogManager$ButtonAction;->mWhich:I

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 570
    .local v1, "button":Landroid/widget/Button;
    if-nez v1, :cond_1

    .line 571
    iget-boolean v4, v0, Lorg/xwalk/core/XWalkDialogManager$ButtonAction;->mMandatory:Z

    if-eqz v4, :cond_0

    .line 572
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Button "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lorg/xwalk/core/XWalkDialogManager$ButtonAction;->mWhich:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is mandatory"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 578
    :cond_1
    iget-object v4, v0, Lorg/xwalk/core/XWalkDialogManager$ButtonAction;->mClickAction:Ljava/lang/Runnable;

    if-eqz v4, :cond_0

    .line 579
    iget-object v2, v0, Lorg/xwalk/core/XWalkDialogManager$ButtonAction;->mClickAction:Ljava/lang/Runnable;

    .line 580
    .local v2, "command":Ljava/lang/Runnable;
    new-instance v4, Lorg/xwalk/core/XWalkDialogManager$1$1;

    invoke-direct {v4, p0, v2}, Lorg/xwalk/core/XWalkDialogManager$1$1;-><init>(Lorg/xwalk/core/XWalkDialogManager$1;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 589
    .end local v0    # "action":Lorg/xwalk/core/XWalkDialogManager$ButtonAction;
    .end local v1    # "button":Landroid/widget/Button;
    .end local v2    # "command":Ljava/lang/Runnable;
    :cond_2
    return-void
.end method
