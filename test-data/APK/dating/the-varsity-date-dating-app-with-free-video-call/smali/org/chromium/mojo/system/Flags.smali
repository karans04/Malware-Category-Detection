.class public abstract Lorg/chromium/mojo/system/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Lorg/chromium/mojo/system/Flags",
        "<TF;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mFlags:I

.field private mImmutable:Z


# direct methods
.method protected constructor <init>(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 21
    .local p0, "this":Lorg/chromium/mojo/system/Flags;, "Lorg/chromium/mojo/system/Flags<TF;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/mojo/system/Flags;->mImmutable:Z

    .line 23
    iput p1, p0, Lorg/chromium/mojo/system/Flags;->mFlags:I

    .line 24
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/chromium/mojo/system/Flags;, "Lorg/chromium/mojo/system/Flags<TF;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 76
    if-ne p0, p1, :cond_1

    .line 81
    :cond_0
    :goto_0
    return v1

    .line 77
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    goto :goto_0

    .line 78
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 79
    check-cast v0, Lorg/chromium/mojo/system/Flags;

    .line 80
    .local v0, "other":Lorg/chromium/mojo/system/Flags;, "Lorg/chromium/mojo/system/Flags<*>;"
    iget v3, p0, Lorg/chromium/mojo/system/Flags;->mFlags:I

    iget v4, v0, Lorg/chromium/mojo/system/Flags;->mFlags:I

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getFlags()I
    .locals 1

    .prologue
    .line 30
    .local p0, "this":Lorg/chromium/mojo/system/Flags;, "Lorg/chromium/mojo/system/Flags<TF;>;"
    iget v0, p0, Lorg/chromium/mojo/system/Flags;->mFlags:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 68
    .local p0, "this":Lorg/chromium/mojo/system/Flags;, "Lorg/chromium/mojo/system/Flags<TF;>;"
    iget v0, p0, Lorg/chromium/mojo/system/Flags;->mFlags:I

    return v0
.end method

.method protected immutable()Lorg/chromium/mojo/system/Flags;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TF;"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lorg/chromium/mojo/system/Flags;, "Lorg/chromium/mojo/system/Flags<TF;>;"
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/chromium/mojo/system/Flags;->mImmutable:Z

    .line 59
    move-object v0, p0

    .line 60
    .local v0, "f":Lorg/chromium/mojo/system/Flags;, "TF;"
    return-object v0
.end method

.method protected setFlag(IZ)Lorg/chromium/mojo/system/Flags;
    .locals 3
    .param p1, "flag"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)TF;"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lorg/chromium/mojo/system/Flags;, "Lorg/chromium/mojo/system/Flags<TF;>;"
    iget-boolean v1, p0, Lorg/chromium/mojo/system/Flags;->mImmutable:Z

    if-eqz v1, :cond_0

    .line 41
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Flags is immutable."

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 43
    :cond_0
    if-eqz p2, :cond_1

    .line 44
    iget v1, p0, Lorg/chromium/mojo/system/Flags;->mFlags:I

    or-int/2addr v1, p1

    iput v1, p0, Lorg/chromium/mojo/system/Flags;->mFlags:I

    .line 49
    :goto_0
    move-object v0, p0

    .line 50
    .local v0, "f":Lorg/chromium/mojo/system/Flags;, "TF;"
    return-object v0

    .line 46
    .end local v0    # "f":Lorg/chromium/mojo/system/Flags;, "TF;"
    :cond_1
    iget v1, p0, Lorg/chromium/mojo/system/Flags;->mFlags:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lorg/chromium/mojo/system/Flags;->mFlags:I

    goto :goto_0
.end method
