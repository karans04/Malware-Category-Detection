.class public Lorg/chromium/mojo/system/MessagePipeHandle$ReadFlags;
.super Lorg/chromium/mojo/system/Flags;
.source "MessagePipeHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojo/system/MessagePipeHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReadFlags"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/system/Flags",
        "<",
        "Lorg/chromium/mojo/system/MessagePipeHandle$ReadFlags;",
        ">;"
    }
.end annotation


# static fields
.field private static final FLAG_MAY_DISCARD:I = 0x1

.field private static final FLAG_NONE:I

.field public static final NONE:Lorg/chromium/mojo/system/MessagePipeHandle$ReadFlags;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    invoke-static {}, Lorg/chromium/mojo/system/MessagePipeHandle$ReadFlags;->none()Lorg/chromium/mojo/system/MessagePipeHandle$ReadFlags;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/mojo/system/MessagePipeHandle$ReadFlags;->immutable()Lorg/chromium/mojo/system/Flags;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojo/system/MessagePipeHandle$ReadFlags;

    sput-object v0, Lorg/chromium/mojo/system/MessagePipeHandle$ReadFlags;->NONE:Lorg/chromium/mojo/system/MessagePipeHandle$ReadFlags;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lorg/chromium/mojo/system/Flags;-><init>(I)V

    .line 107
    return-void
.end method

.method public static none()Lorg/chromium/mojo/system/MessagePipeHandle$ReadFlags;
    .locals 2

    .prologue
    .line 125
    new-instance v0, Lorg/chromium/mojo/system/MessagePipeHandle$ReadFlags;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/chromium/mojo/system/MessagePipeHandle$ReadFlags;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public setMayDiscard(Z)Lorg/chromium/mojo/system/MessagePipeHandle$ReadFlags;
    .locals 1
    .param p1, "mayDiscard"    # Z

    .prologue
    .line 118
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lorg/chromium/mojo/system/MessagePipeHandle$ReadFlags;->setFlag(IZ)Lorg/chromium/mojo/system/Flags;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojo/system/MessagePipeHandle$ReadFlags;

    return-object v0
.end method
