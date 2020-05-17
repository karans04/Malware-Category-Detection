.class public final Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;
.super Ljava/lang/Object;
.source "TextTrackSettings.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# static fields
.field private static final DEFAULT_VALUE:Ljava/lang/String; = ""


# instance fields
.field private mTextTrackBackgroundColor:Ljava/lang/String;

.field private mTextTrackFontFamily:Ljava/lang/String;

.field private mTextTrackFontStyle:Ljava/lang/String;

.field private mTextTrackFontVariant:Ljava/lang/String;

.field private mTextTrackTextColor:Ljava/lang/String;

.field private mTextTrackTextShadow:Ljava/lang/String;

.field private mTextTrackTextSize:Ljava/lang/String;

.field private mTextTracksEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "textTracksEnabled"    # Z
    .param p2, "textTrackBackgroundColor"    # Ljava/lang/String;
    .param p3, "textTrackFontFamily"    # Ljava/lang/String;
    .param p4, "textTrackFontStyle"    # Ljava/lang/String;
    .param p5, "textTrackFontVariant"    # Ljava/lang/String;
    .param p6, "textTrackTextColor"    # Ljava/lang/String;
    .param p7, "textTrackTextShadow"    # Ljava/lang/String;
    .param p8, "textTrackTextSize"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-boolean p1, p0, Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;->mTextTracksEnabled:Z

    .line 50
    iput-object p2, p0, Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;->mTextTrackBackgroundColor:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;->mTextTrackFontFamily:Ljava/lang/String;

    .line 52
    iput-object p4, p0, Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;->mTextTrackFontStyle:Ljava/lang/String;

    .line 53
    iput-object p5, p0, Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;->mTextTrackFontVariant:Ljava/lang/String;

    .line 54
    iput-object p6, p0, Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;->mTextTrackTextColor:Ljava/lang/String;

    .line 55
    iput-object p7, p0, Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;->mTextTrackTextShadow:Ljava/lang/String;

    .line 56
    iput-object p8, p0, Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;->mTextTrackTextSize:Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method public getTextTrackBackgroundColor()Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;->mTextTrackBackgroundColor:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextTrackFontFamily()Ljava/lang/String;
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;->mTextTrackFontFamily:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextTrackFontStyle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;->mTextTrackFontStyle:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextTrackFontVariant()Ljava/lang/String;
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;->mTextTrackFontVariant:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextTrackTextColor()Ljava/lang/String;
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;->mTextTrackTextColor:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextTrackTextShadow()Ljava/lang/String;
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;->mTextTrackTextShadow:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextTrackTextSize()Ljava/lang/String;
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;->mTextTrackTextSize:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextTracksEnabled()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lorg/chromium/content/browser/accessibility/captioning/TextTrackSettings;->mTextTracksEnabled:Z

    return v0
.end method
