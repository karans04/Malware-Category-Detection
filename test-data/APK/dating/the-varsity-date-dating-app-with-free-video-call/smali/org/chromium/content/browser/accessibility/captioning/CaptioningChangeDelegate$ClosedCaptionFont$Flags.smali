.class final enum Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont$Flags;
.super Ljava/lang/Enum;
.source "CaptioningChangeDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Flags"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont$Flags;",
        ">;"
    }
.end annotation

.annotation build Lorg/chromium/base/VisibleForTesting;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont$Flags;

.field public static final enum MONOSPACE:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont$Flags;

.field public static final enum SANS_SERIF:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont$Flags;

.field public static final enum SERIF:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont$Flags;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 218
    new-instance v0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont$Flags;

    const-string v1, "SANS_SERIF"

    invoke-direct {v0, v1, v2}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont$Flags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont$Flags;->SANS_SERIF:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont$Flags;

    new-instance v0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont$Flags;

    const-string v1, "SERIF"

    invoke-direct {v0, v1, v3}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont$Flags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont$Flags;->SERIF:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont$Flags;

    new-instance v0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont$Flags;

    const-string v1, "MONOSPACE"

    invoke-direct {v0, v1, v4}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont$Flags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont$Flags;->MONOSPACE:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont$Flags;

    .line 216
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont$Flags;

    sget-object v1, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont$Flags;->SANS_SERIF:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont$Flags;

    aput-object v1, v0, v2

    sget-object v1, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont$Flags;->SERIF:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont$Flags;

    aput-object v1, v0, v3

    sget-object v1, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont$Flags;->MONOSPACE:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont$Flags;

    aput-object v1, v0, v4

    sput-object v0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont$Flags;->$VALUES:[Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont$Flags;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 217
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont$Flags;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 216
    const-class v0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont$Flags;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont$Flags;

    return-object v0
.end method

.method public static values()[Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont$Flags;
    .locals 1

    .prologue
    .line 216
    sget-object v0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont$Flags;->$VALUES:[Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont$Flags;

    invoke-virtual {v0}, [Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont$Flags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionFont$Flags;

    return-object v0
.end method
