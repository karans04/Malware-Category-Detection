.class public Lorg/chromium/mojo/system/SharedBufferHandle$CreateFlags;
.super Lorg/chromium/mojo/system/Flags;
.source "SharedBufferHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojo/system/SharedBufferHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CreateFlags"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/system/Flags",
        "<",
        "Lorg/chromium/mojo/system/SharedBufferHandle$CreateFlags;",
        ">;"
    }
.end annotation


# static fields
.field private static final FLAG_NONE:I

.field public static final NONE:Lorg/chromium/mojo/system/SharedBufferHandle$CreateFlags;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Lorg/chromium/mojo/system/SharedBufferHandle$CreateFlags;->none()Lorg/chromium/mojo/system/SharedBufferHandle$CreateFlags;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/mojo/system/SharedBufferHandle$CreateFlags;->immutable()Lorg/chromium/mojo/system/Flags;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojo/system/SharedBufferHandle$CreateFlags;

    sput-object v0, Lorg/chromium/mojo/system/SharedBufferHandle$CreateFlags;->NONE:Lorg/chromium/mojo/system/SharedBufferHandle$CreateFlags;

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lorg/chromium/mojo/system/Flags;-><init>(I)V

    .line 32
    return-void
.end method

.method public static none()Lorg/chromium/mojo/system/SharedBufferHandle$CreateFlags;
    .locals 2

    .prologue
    .line 38
    new-instance v0, Lorg/chromium/mojo/system/SharedBufferHandle$CreateFlags;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/chromium/mojo/system/SharedBufferHandle$CreateFlags;-><init>(I)V

    return-object v0
.end method
