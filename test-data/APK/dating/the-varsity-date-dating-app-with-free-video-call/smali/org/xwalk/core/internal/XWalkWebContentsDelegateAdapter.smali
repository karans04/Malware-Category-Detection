.class Lorg/xwalk/core/internal/XWalkWebContentsDelegateAdapter;
.super Lorg/xwalk/core/internal/XWalkWebContentsDelegate;
.source "XWalkWebContentsDelegateAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mXWalkContentsClient:Lorg/xwalk/core/internal/XWalkContentsClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lorg/xwalk/core/internal/XWalkWebContentsDelegateAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/xwalk/core/internal/XWalkWebContentsDelegateAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/xwalk/core/internal/XWalkContentsClient;)V
    .locals 0
    .param p1, "client"    # Lorg/xwalk/core/internal/XWalkContentsClient;

    .prologue
    .line 19
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkWebContentsDelegate;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkWebContentsDelegateAdapter;->mXWalkContentsClient:Lorg/xwalk/core/internal/XWalkContentsClient;

    .line 21
    return-void
.end method


# virtual methods
.method public activateContents()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebContentsDelegateAdapter;->mXWalkContentsClient:Lorg/xwalk/core/internal/XWalkContentsClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebContentsDelegateAdapter;->mXWalkContentsClient:Lorg/xwalk/core/internal/XWalkContentsClient;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContentsClient;->onRequestFocus()V

    .line 49
    :cond_0
    return-void
.end method

.method public addMessageToConsole(ILjava/lang/String;ILjava/lang/String;)Z
    .locals 3
    .param p1, "level"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "lineNumber"    # I
    .param p4, "sourceId"    # Ljava/lang/String;

    .prologue
    .line 70
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkWebContentsDelegateAdapter;->mXWalkContentsClient:Lorg/xwalk/core/internal/XWalkContentsClient;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 89
    :goto_0
    return v1

    .line 71
    :cond_0
    sget-object v0, Landroid/webkit/ConsoleMessage$MessageLevel;->DEBUG:Landroid/webkit/ConsoleMessage$MessageLevel;

    .line 72
    .local v0, "messageLevel":Landroid/webkit/ConsoleMessage$MessageLevel;
    packed-switch p1, :pswitch_data_0

    .line 86
    sget-object v1, Lorg/xwalk/core/internal/XWalkWebContentsDelegateAdapter;->TAG:Ljava/lang/String;

    const-string v2, "Unknown message level, defaulting to DEBUG"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :goto_1
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkWebContentsDelegateAdapter;->mXWalkContentsClient:Lorg/xwalk/core/internal/XWalkContentsClient;

    new-instance v2, Landroid/webkit/ConsoleMessage;

    invoke-direct {v2, p2, p4, p3, v0}, Landroid/webkit/ConsoleMessage;-><init>(Ljava/lang/String;Ljava/lang/String;ILandroid/webkit/ConsoleMessage$MessageLevel;)V

    invoke-virtual {v1, v2}, Lorg/xwalk/core/internal/XWalkContentsClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v1

    goto :goto_0

    .line 74
    :pswitch_0
    sget-object v0, Landroid/webkit/ConsoleMessage$MessageLevel;->TIP:Landroid/webkit/ConsoleMessage$MessageLevel;

    .line 75
    goto :goto_1

    .line 77
    :pswitch_1
    sget-object v0, Landroid/webkit/ConsoleMessage$MessageLevel;->LOG:Landroid/webkit/ConsoleMessage$MessageLevel;

    .line 78
    goto :goto_1

    .line 80
    :pswitch_2
    sget-object v0, Landroid/webkit/ConsoleMessage$MessageLevel;->WARNING:Landroid/webkit/ConsoleMessage$MessageLevel;

    .line 81
    goto :goto_1

    .line 83
    :pswitch_3
    sget-object v0, Landroid/webkit/ConsoleMessage$MessageLevel;->ERROR:Landroid/webkit/ConsoleMessage$MessageLevel;

    .line 84
    goto :goto_1

    .line 72
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public addNewContents(ZZ)Z
    .locals 1
    .param p1, "isDialog"    # Z
    .param p2, "isUserGesture"    # Z

    .prologue
    .line 38
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebContentsDelegateAdapter;->mXWalkContentsClient:Lorg/xwalk/core/internal/XWalkContentsClient;

    invoke-virtual {v0, p1, p2}, Lorg/xwalk/core/internal/XWalkContentsClient;->onCreateWindow(ZZ)Z

    move-result v0

    return v0
.end method

.method public closeContents()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebContentsDelegateAdapter;->mXWalkContentsClient:Lorg/xwalk/core/internal/XWalkContentsClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebContentsDelegateAdapter;->mXWalkContentsClient:Lorg/xwalk/core/internal/XWalkContentsClient;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContentsClient;->onCloseWindow()V

    .line 44
    :cond_0
    return-void
.end method

.method public handleKeyboardEvent(Landroid/view/KeyEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 64
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebContentsDelegateAdapter;->mXWalkContentsClient:Lorg/xwalk/core/internal/XWalkContentsClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebContentsDelegateAdapter;->mXWalkContentsClient:Lorg/xwalk/core/internal/XWalkContentsClient;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContentsClient;->onUnhandledKeyEvent(Landroid/view/KeyEvent;)V

    .line 65
    :cond_0
    return-void
.end method

.method public isFullscreen()Z
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebContentsDelegateAdapter;->mXWalkContentsClient:Lorg/xwalk/core/internal/XWalkContentsClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebContentsDelegateAdapter;->mXWalkContentsClient:Lorg/xwalk/core/internal/XWalkContentsClient;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContentsClient;->hasEnteredFullscreen()Z

    move-result v0

    .line 106
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLoadProgressChanged(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 33
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebContentsDelegateAdapter;->mXWalkContentsClient:Lorg/xwalk/core/internal/XWalkContentsClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebContentsDelegateAdapter;->mXWalkContentsClient:Lorg/xwalk/core/internal/XWalkContentsClient;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContentsClient;->onProgressChanged(I)V

    .line 34
    :cond_0
    return-void
.end method

.method public rendererResponsive()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebContentsDelegateAdapter;->mXWalkContentsClient:Lorg/xwalk/core/internal/XWalkContentsClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebContentsDelegateAdapter;->mXWalkContentsClient:Lorg/xwalk/core/internal/XWalkContentsClient;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContentsClient;->onRendererResponsive()V

    .line 59
    :cond_0
    return-void
.end method

.method public rendererUnresponsive()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebContentsDelegateAdapter;->mXWalkContentsClient:Lorg/xwalk/core/internal/XWalkContentsClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebContentsDelegateAdapter;->mXWalkContentsClient:Lorg/xwalk/core/internal/XWalkContentsClient;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkContentsClient;->onRendererUnresponsive()V

    .line 54
    :cond_0
    return-void
.end method

.method public shouldCreateWebContents(Ljava/lang/String;)Z
    .locals 1
    .param p1, "contentUrl"    # Ljava/lang/String;

    .prologue
    .line 25
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebContentsDelegateAdapter;->mXWalkContentsClient:Lorg/xwalk/core/internal/XWalkContentsClient;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebContentsDelegateAdapter;->mXWalkContentsClient:Lorg/xwalk/core/internal/XWalkContentsClient;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkContentsClient;->shouldCreateWebContents(Ljava/lang/String;)Z

    move-result v0

    .line 28
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lorg/xwalk/core/internal/XWalkWebContentsDelegate;->shouldCreateWebContents(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public shouldOverrideRunFileChooser(IIILjava/lang/String;Z)Z
    .locals 6
    .param p1, "processId"    # I
    .param p2, "renderId"    # I
    .param p3, "mode"    # I
    .param p4, "acceptTypes"    # Ljava/lang/String;
    .param p5, "capture"    # Z

    .prologue
    .line 112
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebContentsDelegateAdapter;->mXWalkContentsClient:Lorg/xwalk/core/internal/XWalkContentsClient;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebContentsDelegateAdapter;->mXWalkContentsClient:Lorg/xwalk/core/internal/XWalkContentsClient;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/xwalk/core/internal/XWalkContentsClient;->shouldOverrideRunFileChooser(IIILjava/lang/String;Z)Z

    move-result v0

    .line 116
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toggleFullscreen(Z)V
    .locals 2
    .param p1, "enterFullscreen"    # Z

    .prologue
    .line 95
    if-nez p1, :cond_0

    .line 96
    invoke-static {}, Lorg/chromium/content/browser/ContentVideoView;->getContentVideoView()Lorg/chromium/content/browser/ContentVideoView;

    move-result-object v0

    .line 97
    .local v0, "videoView":Lorg/chromium/content/browser/ContentVideoView;
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentVideoView;->exitFullscreen(Z)V

    .line 99
    .end local v0    # "videoView":Lorg/chromium/content/browser/ContentVideoView;
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkWebContentsDelegateAdapter;->mXWalkContentsClient:Lorg/xwalk/core/internal/XWalkContentsClient;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkWebContentsDelegateAdapter;->mXWalkContentsClient:Lorg/xwalk/core/internal/XWalkContentsClient;

    invoke-virtual {v1, p1}, Lorg/xwalk/core/internal/XWalkContentsClient;->onToggleFullscreen(Z)V

    .line 100
    :cond_1
    return-void
.end method
