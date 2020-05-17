.class abstract Lorg/xwalk/core/internal/XWalkWebContentsDelegate;
.super Lorg/chromium/components/web_contents_delegate_android/WebContentsDelegateAndroid;
.source "XWalkWebContentsDelegate.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "xwalk"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lorg/chromium/components/web_contents_delegate_android/WebContentsDelegateAndroid;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract activateContents()V
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation
.end method

.method public abstract addMessageToConsole(ILjava/lang/String;ILjava/lang/String;)Z
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation
.end method

.method public abstract addNewContents(ZZ)Z
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation
.end method

.method public abstract closeContents()V
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation
.end method

.method public abstract handleKeyboardEvent(Landroid/view/KeyEvent;)V
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation
.end method

.method public isFullscreen()Z
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public abstract rendererResponsive()V
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation
.end method

.method public abstract rendererUnresponsive()V
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation
.end method

.method public shouldCreateWebContents(Ljava/lang/String;)Z
    .locals 1
    .param p1, "targetUrl"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public abstract shouldOverrideRunFileChooser(IIILjava/lang/String;Z)Z
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation
.end method

.method public toggleFullscreen(Z)V
    .locals 0
    .param p1, "enterFullscreen"    # Z
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 53
    return-void
.end method

.method public updatePreferredSize(II)V
    .locals 0
    .param p1, "widthCss"    # I
    .param p2, "heightCss"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 49
    return-void
.end method
