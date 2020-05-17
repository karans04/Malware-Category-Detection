.class public Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;
.super Ljava/lang/Object;
.source "KitKatCaptioningBridge.java"

# interfaces
.implements Lorg/chromium/content/browser/accessibility/captioning/SystemCaptioningBridge;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge$1;,
        Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge$KitKatCaptioningChangeListener;
    }
.end annotation


# static fields
.field private static sKitKatCaptioningBridge:Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;


# instance fields
.field private final mCaptioningChangeDelegate:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;

.field private final mCaptioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

.field private final mCaptioningManager:Landroid/view/accessibility/CaptioningManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge$KitKatCaptioningChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge$KitKatCaptioningChangeListener;-><init>(Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge$1;)V

    iput-object v0, p0, Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;->mCaptioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    .line 74
    new-instance v0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;

    invoke-direct {v0}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;->mCaptioningChangeDelegate:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "captioning"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    iput-object v0, p0, Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    .line 78
    return-void
.end method

.method static synthetic access$100(Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;)Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;

    .prologue
    .line 19
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;->mCaptioningChangeDelegate:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Lorg/chromium/content/browser/accessibility/captioning/CaptioningStyle;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;
    .param p1, "x1"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;->getCaptioningStyleFrom(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Lorg/chromium/content/browser/accessibility/captioning/CaptioningStyle;

    move-result-object v0

    return-object v0
.end method

.method private getCaptioningStyleFrom(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Lorg/chromium/content/browser/accessibility/captioning/CaptioningStyle;
    .locals 1
    .param p1, "userStyle"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .prologue
    .line 124
    invoke-static {p1}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningStyle;->createFrom(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Lorg/chromium/content/browser/accessibility/captioning/CaptioningStyle;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    sget-object v0, Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;->sKitKatCaptioningBridge:Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;->sKitKatCaptioningBridge:Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;

    .line 65
    :cond_0
    sget-object v0, Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;->sKitKatCaptioningBridge:Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;

    return-object v0
.end method

.method private syncToDelegate()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;->mCaptioningChangeDelegate:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;

    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v1}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->onEnabledChanged(Z)V

    .line 85
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;->mCaptioningChangeDelegate:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;

    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v1}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->onFontScaleChanged(F)V

    .line 86
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;->mCaptioningChangeDelegate:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;

    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v1}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->onLocaleChanged(Ljava/util/Locale;)V

    .line 87
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;->mCaptioningChangeDelegate:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;

    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v1}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;->getCaptioningStyleFrom(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Lorg/chromium/content/browser/accessibility/captioning/CaptioningStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->onUserStyleChanged(Lorg/chromium/content/browser/accessibility/captioning/CaptioningStyle;)V

    .line 89
    return-void
.end method


# virtual methods
.method public addListener(Lorg/chromium/content/browser/accessibility/captioning/SystemCaptioningBridge$SystemCaptioningBridgeListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/chromium/content/browser/accessibility/captioning/SystemCaptioningBridge$SystemCaptioningBridgeListener;

    .prologue
    .line 101
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;->mCaptioningChangeDelegate:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;

    invoke-virtual {v0}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->hasActiveListener()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;->mCaptioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/CaptioningManager;->addCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    .line 103
    invoke-direct {p0}, Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;->syncToDelegate()V

    .line 105
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;->mCaptioningChangeDelegate:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->addListener(Lorg/chromium/content/browser/accessibility/captioning/SystemCaptioningBridge$SystemCaptioningBridgeListener;)V

    .line 106
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;->mCaptioningChangeDelegate:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->notifyListener(Lorg/chromium/content/browser/accessibility/captioning/SystemCaptioningBridge$SystemCaptioningBridgeListener;)V

    .line 107
    return-void
.end method

.method public removeListener(Lorg/chromium/content/browser/accessibility/captioning/SystemCaptioningBridge$SystemCaptioningBridgeListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/chromium/content/browser/accessibility/captioning/SystemCaptioningBridge$SystemCaptioningBridgeListener;

    .prologue
    .line 111
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;->mCaptioningChangeDelegate:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->removeListener(Lorg/chromium/content/browser/accessibility/captioning/SystemCaptioningBridge$SystemCaptioningBridgeListener;)V

    .line 112
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;->mCaptioningChangeDelegate:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;

    invoke-virtual {v0}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->hasActiveListener()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    iget-object v1, p0, Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;->mCaptioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/CaptioningManager;->removeCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    .line 115
    :cond_0
    return-void
.end method

.method public syncToListener(Lorg/chromium/content/browser/accessibility/captioning/SystemCaptioningBridge$SystemCaptioningBridgeListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/chromium/content/browser/accessibility/captioning/SystemCaptioningBridge$SystemCaptioningBridgeListener;

    .prologue
    .line 93
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;->mCaptioningChangeDelegate:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;

    invoke-virtual {v0}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->hasActiveListener()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    invoke-direct {p0}, Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;->syncToDelegate()V

    .line 96
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/captioning/KitKatCaptioningBridge;->mCaptioningChangeDelegate:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;->notifyListener(Lorg/chromium/content/browser/accessibility/captioning/SystemCaptioningBridge$SystemCaptioningBridgeListener;)V

    .line 97
    return-void
.end method
