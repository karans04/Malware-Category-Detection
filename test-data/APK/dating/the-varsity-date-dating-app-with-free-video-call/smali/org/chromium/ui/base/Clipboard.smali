.class public Lorg/chromium/ui/base/Clipboard;
.super Ljava/lang/Object;
.source "Clipboard.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "ui"
.end annotation


# instance fields
.field private final mClipboardManager:Landroid/content/ClipboardManager;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/chromium/ui/base/Clipboard;->mContext:Landroid/content/Context;

    .line 36
    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    iput-object v0, p0, Lorg/chromium/ui/base/Clipboard;->mClipboardManager:Landroid/content/ClipboardManager;

    .line 38
    return-void
.end method

.method private clear()V
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .annotation build Lorg/chromium/base/annotations/SuppressFBWarnings;
        value = {
            "UPM_UNCALLED_PRIVATE_METHOD"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 128
    invoke-static {v0, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/ui/base/Clipboard;->setPrimaryClipNoException(Landroid/content/ClipData;)V

    .line 129
    return-void
.end method

.method private static create(Landroid/content/Context;)Lorg/chromium/ui/base/Clipboard;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 48
    new-instance v0, Lorg/chromium/ui/base/Clipboard;

    invoke-direct {v0, p0}, Lorg/chromium/ui/base/Clipboard;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getCoercedText()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 70
    iget-object v2, p0, Lorg/chromium/ui/base/Clipboard;->mClipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v2}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    .line 71
    .local v0, "clip":Landroid/content/ClipData;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 72
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    iget-object v3, p0, Lorg/chromium/ui/base/Clipboard;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 73
    .local v1, "sequence":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    .line 74
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 77
    .end local v1    # "sequence":Ljava/lang/CharSequence;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getHTMLText()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 88
    iget-object v1, p0, Lorg/chromium/ui/base/Clipboard;->mClipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    .line 89
    .local v0, "clip":Landroid/content/ClipData;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 90
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v1

    .line 92
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setHTMLText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "html"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .annotation build Lorg/chromium/base/annotations/SuppressFBWarnings;
        value = {
            "UPM_UNCALLED_PRIVATE_METHOD"
        }
    .end annotation

    .prologue
    .line 118
    const-string v0, "html"

    invoke-static {v0, p2, p1}, Landroid/content/ClipData;->newHtmlText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/content/ClipData;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/ui/base/Clipboard;->setPrimaryClipNoException(Landroid/content/ClipData;)V

    .line 119
    return-void
.end method

.method private setPrimaryClipNoException(Landroid/content/ClipData;)V
    .locals 4
    .param p1, "clip"    # Landroid/content/ClipData;

    .prologue
    .line 133
    :try_start_0
    iget-object v2, p0, Lorg/chromium/ui/base/Clipboard;->mClipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v2, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 136
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v2, p0, Lorg/chromium/ui/base/Clipboard;->mContext:Landroid/content/Context;

    sget v3, Lorg/chromium/ui/R$string;->copy_to_clipboard_failure_message:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "text":Ljava/lang/String;
    iget-object v2, p0, Lorg/chromium/ui/base/Clipboard;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lorg/chromium/ui/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lorg/chromium/ui/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/ui/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .annotation build Lorg/chromium/base/annotations/SuppressFBWarnings;
        value = {
            "UPM_UNCALLED_PRIVATE_METHOD"
        }
    .end annotation

    .prologue
    .line 105
    const-string v0, "text"

    invoke-static {v0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/ui/base/Clipboard;->setPrimaryClipNoException(Landroid/content/ClipData;)V

    .line 106
    return-void
.end method
