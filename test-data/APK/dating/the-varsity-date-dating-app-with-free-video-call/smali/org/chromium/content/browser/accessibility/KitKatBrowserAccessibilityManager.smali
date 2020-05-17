.class public Lorg/chromium/content/browser/accessibility/KitKatBrowserAccessibilityManager;
.super Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;
.source "KitKatBrowserAccessibilityManager.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "content"
.end annotation


# instance fields
.field private mSupportedHtmlElementTypes:Ljava/lang/String;


# direct methods
.method constructor <init>(JLorg/chromium/content/browser/ContentViewCore;)V
    .locals 1
    .param p1, "nativeBrowserAccessibilityManagerAndroid"    # J
    .param p3, "contentViewCore"    # Lorg/chromium/content/browser/ContentViewCore;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/content/browser/accessibility/BrowserAccessibilityManager;-><init>(JLorg/chromium/content/browser/ContentViewCore;)V

    .line 26
    invoke-virtual {p0, p1, p2}, Lorg/chromium/content/browser/accessibility/KitKatBrowserAccessibilityManager;->nativeGetSupportedHtmlElementTypes(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/accessibility/KitKatBrowserAccessibilityManager;->mSupportedHtmlElementTypes:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method protected setAccessibilityNodeInfoKitKatAttributes(Landroid/view/accessibility/AccessibilityNodeInfo;ZZLjava/lang/String;)V
    .locals 3
    .param p1, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "isRoot"    # Z
    .param p3, "isEditableText"    # Z
    .param p4, "roleDescription"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 34
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "AccessibilityNodeInfo.roleDescription"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 35
    if-eqz p2, :cond_0

    .line 36
    const-string v1, "ACTION_ARGUMENT_HTML_ELEMENT_STRING_VALUES"

    iget-object v2, p0, Lorg/chromium/content/browser/accessibility/KitKatBrowserAccessibilityManager;->mSupportedHtmlElementTypes:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 39
    :cond_0
    if-eqz p3, :cond_1

    .line 40
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEditable(Z)V

    .line 42
    :cond_1
    return-void
.end method
