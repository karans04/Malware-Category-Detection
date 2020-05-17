.class Lorg/xwalk/core/internal/XWalkAutofillClientAndroid$1;
.super Ljava/lang/Object;
.source "XWalkAutofillClientAndroid.java"

# interfaces
.implements Lorg/chromium/ui/autofill/AutofillDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xwalk/core/internal/XWalkAutofillClientAndroid;->showAutofillPopup(FFFFZ[Lorg/chromium/ui/autofill/AutofillSuggestion;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/xwalk/core/internal/XWalkAutofillClientAndroid;


# direct methods
.method constructor <init>(Lorg/xwalk/core/internal/XWalkAutofillClientAndroid;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkAutofillClientAndroid$1;->this$0:Lorg/xwalk/core/internal/XWalkAutofillClientAndroid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deleteSuggestion(I)V
    .locals 0
    .param p1, "listIndex"    # I

    .prologue
    .line 60
    return-void
.end method

.method public dismissed()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public suggestionSelected(I)V
    .locals 4
    .param p1, "listIndex"    # I

    .prologue
    .line 57
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkAutofillClientAndroid$1;->this$0:Lorg/xwalk/core/internal/XWalkAutofillClientAndroid;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkAutofillClientAndroid$1;->this$0:Lorg/xwalk/core/internal/XWalkAutofillClientAndroid;

    invoke-static {v1}, Lorg/xwalk/core/internal/XWalkAutofillClientAndroid;->access$000(Lorg/xwalk/core/internal/XWalkAutofillClientAndroid;)J

    move-result-wide v2

    invoke-static {v0, v2, v3, p1}, Lorg/xwalk/core/internal/XWalkAutofillClientAndroid;->access$100(Lorg/xwalk/core/internal/XWalkAutofillClientAndroid;JI)V

    .line 58
    return-void
.end method
