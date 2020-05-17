.class public Lorg/chromium/mojo/system/SharedBufferHandle$CreateOptions;
.super Ljava/lang/Object;
.source "SharedBufferHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojo/system/SharedBufferHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CreateOptions"
.end annotation


# instance fields
.field private mFlags:Lorg/chromium/mojo/system/SharedBufferHandle$CreateFlags;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    sget-object v0, Lorg/chromium/mojo/system/SharedBufferHandle$CreateFlags;->NONE:Lorg/chromium/mojo/system/SharedBufferHandle$CreateFlags;

    iput-object v0, p0, Lorg/chromium/mojo/system/SharedBufferHandle$CreateOptions;->mFlags:Lorg/chromium/mojo/system/SharedBufferHandle$CreateFlags;

    return-void
.end method


# virtual methods
.method public getFlags()Lorg/chromium/mojo/system/SharedBufferHandle$CreateFlags;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/chromium/mojo/system/SharedBufferHandle$CreateOptions;->mFlags:Lorg/chromium/mojo/system/SharedBufferHandle$CreateFlags;

    return-object v0
.end method
