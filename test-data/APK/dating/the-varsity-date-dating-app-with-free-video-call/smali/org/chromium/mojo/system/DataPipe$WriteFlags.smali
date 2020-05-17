.class public Lorg/chromium/mojo/system/DataPipe$WriteFlags;
.super Lorg/chromium/mojo/system/Flags;
.source "DataPipe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojo/system/DataPipe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WriteFlags"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/system/Flags",
        "<",
        "Lorg/chromium/mojo/system/DataPipe$WriteFlags;",
        ">;"
    }
.end annotation


# static fields
.field private static final FLAG_ALL_OR_NONE:I = 0x1

.field private static final FLAG_NONE:I

.field public static final NONE:Lorg/chromium/mojo/system/DataPipe$WriteFlags;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 114
    invoke-static {}, Lorg/chromium/mojo/system/DataPipe$WriteFlags;->none()Lorg/chromium/mojo/system/DataPipe$WriteFlags;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/mojo/system/DataPipe$WriteFlags;->immutable()Lorg/chromium/mojo/system/Flags;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojo/system/DataPipe$WriteFlags;

    sput-object v0, Lorg/chromium/mojo/system/DataPipe$WriteFlags;->NONE:Lorg/chromium/mojo/system/DataPipe$WriteFlags;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lorg/chromium/mojo/system/Flags;-><init>(I)V

    .line 123
    return-void
.end method

.method public static none()Lorg/chromium/mojo/system/DataPipe$WriteFlags;
    .locals 2

    .prologue
    .line 140
    new-instance v0, Lorg/chromium/mojo/system/DataPipe$WriteFlags;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/chromium/mojo/system/DataPipe$WriteFlags;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public setAllOrNone(Z)Lorg/chromium/mojo/system/DataPipe$WriteFlags;
    .locals 1
    .param p1, "allOrNone"    # Z

    .prologue
    .line 133
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lorg/chromium/mojo/system/DataPipe$WriteFlags;->setFlag(IZ)Lorg/chromium/mojo/system/Flags;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojo/system/DataPipe$WriteFlags;

    return-object v0
.end method
