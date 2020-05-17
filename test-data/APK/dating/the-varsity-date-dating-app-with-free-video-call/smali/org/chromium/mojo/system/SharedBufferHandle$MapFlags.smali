.class public Lorg/chromium/mojo/system/SharedBufferHandle$MapFlags;
.super Lorg/chromium/mojo/system/Flags;
.source "SharedBufferHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojo/system/SharedBufferHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MapFlags"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/system/Flags",
        "<",
        "Lorg/chromium/mojo/system/SharedBufferHandle$MapFlags;",
        ">;"
    }
.end annotation


# static fields
.field private static final FLAG_NONE:I

.field public static final NONE:Lorg/chromium/mojo/system/SharedBufferHandle$MapFlags;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    invoke-static {}, Lorg/chromium/mojo/system/SharedBufferHandle$MapFlags;->none()Lorg/chromium/mojo/system/SharedBufferHandle$MapFlags;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/mojo/system/SharedBufferHandle$MapFlags;->immutable()Lorg/chromium/mojo/system/Flags;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojo/system/SharedBufferHandle$MapFlags;

    sput-object v0, Lorg/chromium/mojo/system/SharedBufferHandle$MapFlags;->NONE:Lorg/chromium/mojo/system/SharedBufferHandle$MapFlags;

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lorg/chromium/mojo/system/Flags;-><init>(I)V

    .line 121
    return-void
.end method

.method public static none()Lorg/chromium/mojo/system/SharedBufferHandle$MapFlags;
    .locals 2

    .prologue
    .line 127
    new-instance v0, Lorg/chromium/mojo/system/SharedBufferHandle$MapFlags;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/chromium/mojo/system/SharedBufferHandle$MapFlags;-><init>(I)V

    return-object v0
.end method
