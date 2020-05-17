.class public final enum Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;
.super Ljava/lang/Enum;
.source "XWalkSettingsInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xwalk/core/internal/XWalkSettingsInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LayoutAlgorithmInternal"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;",
        ">;"
    }
.end annotation

.annotation build Lorg/xwalk/core/internal/XWalkAPI;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;

.field public static final enum NARROW_COLUMNS:Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;

.field public static final enum NORMAL:Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;

.field public static final enum SINGLE_COLUMN:Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;

.field public static final enum TEXT_AUTOSIZING:Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;->NORMAL:Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;

    .line 34
    new-instance v0, Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;

    const-string v1, "SINGLE_COLUMN"

    invoke-direct {v0, v1, v3}, Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;->SINGLE_COLUMN:Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;

    .line 35
    new-instance v0, Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;

    const-string v1, "NARROW_COLUMNS"

    invoke-direct {v0, v1, v4}, Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;->NARROW_COLUMNS:Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;

    .line 36
    new-instance v0, Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;

    const-string v1, "TEXT_AUTOSIZING"

    invoke-direct {v0, v1, v5}, Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;->TEXT_AUTOSIZING:Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;

    .line 31
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;

    sget-object v1, Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;->NORMAL:Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;

    aput-object v1, v0, v2

    sget-object v1, Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;->SINGLE_COLUMN:Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;

    aput-object v1, v0, v3

    sget-object v1, Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;->NARROW_COLUMNS:Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;

    aput-object v1, v0, v4

    sget-object v1, Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;->TEXT_AUTOSIZING:Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;

    aput-object v1, v0, v5

    sput-object v0, Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;->$VALUES:[Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;

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
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 31
    const-class v0, Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;

    return-object v0
.end method

.method public static values()[Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;->$VALUES:[Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;

    invoke-virtual {v0}, [Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/xwalk/core/internal/XWalkSettingsInternal$LayoutAlgorithmInternal;

    return-object v0
.end method
