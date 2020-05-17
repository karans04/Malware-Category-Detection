.class public final enum Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;
.super Ljava/lang/Enum;
.source "CaptioningChangeDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ClosedCaptionEdgeAttribute"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;

.field public static final enum DEPRESSED:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;

.field public static final enum DROP_SHADOW:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;

.field public static final enum NONE:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;

.field public static final enum OUTLINE:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;

.field public static final enum RAISED:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;

.field private static sDefaultEdgeColor:Ljava/lang/String;

.field private static sEdgeColor:Ljava/lang/String;

.field private static sShadowOffset:Ljava/lang/String;


# instance fields
.field private final mTextShadow:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 110
    new-instance v0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;

    const-string v1, "NONE"

    const-string v2, ""

    invoke-direct {v0, v1, v3, v2}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;->NONE:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;

    .line 111
    new-instance v0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;

    const-string v1, "OUTLINE"

    const-string v2, "%2$s %2$s 0 %1$s, -%2$s -%2$s 0 %1$s, %2$s -%2$s 0 %1$s, -%2$s %2$s 0 %1$s"

    invoke-direct {v0, v1, v4, v2}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;->OUTLINE:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;

    .line 112
    new-instance v0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;

    const-string v1, "DROP_SHADOW"

    const-string v2, "%1$s %2$s %2$s 0.1em"

    invoke-direct {v0, v1, v5, v2}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;->DROP_SHADOW:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;

    .line 113
    new-instance v0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;

    const-string v1, "RAISED"

    const-string v2, "-%2$s -%2$s 0 %1$s"

    invoke-direct {v0, v1, v6, v2}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;->RAISED:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;

    .line 114
    new-instance v0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;

    const-string v1, "DEPRESSED"

    const-string v2, "%2$s %2$s 0 %1$s"

    invoke-direct {v0, v1, v7, v2}, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;->DEPRESSED:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;

    .line 109
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;

    sget-object v1, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;->NONE:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;

    aput-object v1, v0, v3

    sget-object v1, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;->OUTLINE:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;

    aput-object v1, v0, v4

    sget-object v1, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;->DROP_SHADOW:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;

    aput-object v1, v0, v5

    sget-object v1, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;->RAISED:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;

    aput-object v1, v0, v6

    sget-object v1, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;->DEPRESSED:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;

    aput-object v1, v0, v7

    sput-object v0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;->$VALUES:[Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;

    .line 116
    const-string v0, "silver"

    sput-object v0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;->sDefaultEdgeColor:Ljava/lang/String;

    .line 117
    const-string v0, "0.05em"

    sput-object v0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;->sShadowOffset:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "textShadow"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 121
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 122
    iput-object p3, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;->mTextShadow:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public static fromSystemEdgeAttribute(Ljava/lang/Integer;Ljava/lang/String;)Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;
    .locals 1
    .param p0, "type"    # Ljava/lang/Integer;
    .param p1, "color"    # Ljava/lang/String;

    .prologue
    .line 134
    if-nez p0, :cond_0

    .line 135
    sget-object v0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;->NONE:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;

    .line 155
    :goto_0
    return-object v0

    .line 137
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    :cond_1
    sget-object v0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;->sDefaultEdgeColor:Ljava/lang/String;

    sput-object v0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;->sEdgeColor:Ljava/lang/String;

    .line 143
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 155
    sget-object v0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;->NONE:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;

    goto :goto_0

    .line 140
    :cond_2
    sput-object p1, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;->sEdgeColor:Ljava/lang/String;

    goto :goto_1

    .line 145
    :pswitch_0
    sget-object v0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;->OUTLINE:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;

    goto :goto_0

    .line 147
    :pswitch_1
    sget-object v0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;->DROP_SHADOW:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;

    goto :goto_0

    .line 149
    :pswitch_2
    sget-object v0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;->RAISED:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;

    goto :goto_0

    .line 151
    :pswitch_3
    sget-object v0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;->DEPRESSED:Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;

    goto :goto_0

    .line 143
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static setDefaultEdgeColor(Ljava/lang/String;)V
    .locals 0
    .param p0, "color"    # Ljava/lang/String;

    .prologue
    .line 178
    sput-object p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;->sDefaultEdgeColor:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public static setShadowOffset(Ljava/lang/String;)V
    .locals 0
    .param p0, "shadowOffset"    # Ljava/lang/String;

    .prologue
    .line 167
    sput-object p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;->sShadowOffset:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 109
    const-class v0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;

    return-object v0
.end method

.method public static values()[Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;->$VALUES:[Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;

    invoke-virtual {v0}, [Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;

    return-object v0
.end method


# virtual methods
.method public getTextShadow()Ljava/lang/String;
    .locals 4

    .prologue
    .line 188
    iget-object v0, p0, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;->mTextShadow:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;->sEdgeColor:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lorg/chromium/content/browser/accessibility/captioning/CaptioningChangeDelegate$ClosedCaptionEdgeAttribute;->sShadowOffset:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
