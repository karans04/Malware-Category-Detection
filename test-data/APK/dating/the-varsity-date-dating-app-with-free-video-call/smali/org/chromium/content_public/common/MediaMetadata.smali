.class public Lorg/chromium/content_public/common/MediaMetadata;
.super Ljava/lang/Object;
.source "MediaMetadata.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "content"
.end annotation


# instance fields
.field private mAlbum:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mArtist:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mTitle:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "artist"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "album"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lorg/chromium/content_public/common/MediaMetadata;->mTitle:Ljava/lang/String;

    .line 89
    iput-object p2, p0, Lorg/chromium/content_public/common/MediaMetadata;->mArtist:Ljava/lang/String;

    .line 90
    iput-object p3, p0, Lorg/chromium/content_public/common/MediaMetadata;->mAlbum:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public constructor <init>(Lorg/chromium/content_public/common/MediaMetadata;)V
    .locals 3
    .param p1, "other"    # Lorg/chromium/content_public/common/MediaMetadata;

    .prologue
    .line 97
    iget-object v0, p1, Lorg/chromium/content_public/common/MediaMetadata;->mTitle:Ljava/lang/String;

    iget-object v1, p1, Lorg/chromium/content_public/common/MediaMetadata;->mArtist:Ljava/lang/String;

    iget-object v2, p1, Lorg/chromium/content_public/common/MediaMetadata;->mAlbum:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lorg/chromium/content_public/common/MediaMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method private static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/content_public/common/MediaMetadata;
    .locals 1
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "artist"    # Ljava/lang/String;
    .param p2, "album"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 80
    new-instance v0, Lorg/chromium/content_public/common/MediaMetadata;

    if-nez p0, :cond_0

    const-string p0, ""

    .end local p0    # "title":Ljava/lang/String;
    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    .end local p1    # "artist":Ljava/lang/String;
    :cond_1
    if-nez p2, :cond_2

    const-string p2, ""

    .end local p2    # "album":Ljava/lang/String;
    :cond_2
    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/content_public/common/MediaMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 102
    if-ne p1, p0, :cond_1

    .line 106
    :cond_0
    :goto_0
    return v1

    .line 103
    :cond_1
    instance-of v3, p1, Lorg/chromium/content_public/common/MediaMetadata;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 105
    check-cast v0, Lorg/chromium/content_public/common/MediaMetadata;

    .line 106
    .local v0, "other":Lorg/chromium/content_public/common/MediaMetadata;
    iget-object v3, p0, Lorg/chromium/content_public/common/MediaMetadata;->mTitle:Ljava/lang/String;

    iget-object v4, v0, Lorg/chromium/content_public/common/MediaMetadata;->mTitle:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/chromium/content_public/common/MediaMetadata;->mArtist:Ljava/lang/String;

    iget-object v4, v0, Lorg/chromium/content_public/common/MediaMetadata;->mArtist:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/chromium/content_public/common/MediaMetadata;->mAlbum:Ljava/lang/String;

    iget-object v4, v0, Lorg/chromium/content_public/common/MediaMetadata;->mAlbum:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getAlbum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/chromium/content_public/common/MediaMetadata;->mAlbum:Ljava/lang/String;

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/chromium/content_public/common/MediaMetadata;->mArtist:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lorg/chromium/content_public/common/MediaMetadata;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 113
    iget-object v1, p0, Lorg/chromium/content_public/common/MediaMetadata;->mTitle:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 114
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/chromium/content_public/common/MediaMetadata;->mArtist:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 115
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/chromium/content_public/common/MediaMetadata;->mAlbum:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 116
    return v0
.end method

.method public setAlbum(Ljava/lang/String;)V
    .locals 0
    .param p1, "album"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lorg/chromium/content_public/common/MediaMetadata;->mAlbum:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 0
    .param p1, "artist"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lorg/chromium/content_public/common/MediaMetadata;->mArtist:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lorg/chromium/content_public/common/MediaMetadata;->mTitle:Ljava/lang/String;

    .line 56
    return-void
.end method
