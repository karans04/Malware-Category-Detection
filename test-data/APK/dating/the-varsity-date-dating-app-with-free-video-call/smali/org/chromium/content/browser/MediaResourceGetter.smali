.class Lorg/chromium/content/browser/MediaResourceGetter;
.super Ljava/lang/Object;
.source "MediaResourceGetter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;
    }
.end annotation

.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "content"
.end annotation


# static fields
.field private static final EMPTY_METADATA:Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;

.field private static final TAG:Ljava/lang/String; = "cr_MediaResource"


# instance fields
.field private final mRetriever:Landroid/media/MediaMetadataRetriever;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    new-instance v0, Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;

    invoke-direct {v0, v1, v1, v1, v1}, Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;-><init>(IIIZ)V

    sput-object v0, Lorg/chromium/content/browser/MediaResourceGetter;->EMPTY_METADATA:Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/MediaResourceGetter;->mRetriever:Landroid/media/MediaMetadataRetriever;

    .line 42
    return-void
.end method

.method private canonicalize(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 371
    .local p1, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 373
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 374
    .local v2, "path":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 377
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "path":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 379
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "cr_MediaResource"

    const-string v5, "canonicalization of file path failed"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 381
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    return-object v3
.end method

.method private doExtractMetadata()Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 148
    const/16 v9, 0x9

    :try_start_0
    invoke-virtual {p0, v9}, Lorg/chromium/content/browser/MediaResourceGetter;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, "durationString":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 151
    const-string v9, "cr_MediaResource"

    const-string v10, "missing duration metadata"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    sget-object v6, Lorg/chromium/content/browser/MediaResourceGetter;->EMPTY_METADATA:Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 200
    .end local v1    # "durationString":Ljava/lang/String;
    :goto_0
    return-object v6

    .line 155
    .restart local v1    # "durationString":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 157
    .local v0, "durationMillis":I
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v0

    .line 163
    const/4 v7, 0x0

    .line 164
    .local v7, "width":I
    const/4 v4, 0x0

    .line 165
    .local v4, "height":I
    :try_start_2
    const-string v9, "yes"

    const/16 v10, 0x11

    invoke-virtual {p0, v10}, Lorg/chromium/content/browser/MediaResourceGetter;->extractMetadata(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 167
    .local v3, "hasVideo":Z
    const-string v10, "cr_MediaResource"

    if-eqz v3, :cond_1

    const-string v9, "resource has video"

    :goto_1
    invoke-static {v10, v9}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    if-eqz v3, :cond_4

    .line 169
    const/16 v9, 0x12

    invoke-virtual {p0, v9}, Lorg/chromium/content/browser/MediaResourceGetter;->extractMetadata(I)Ljava/lang/String;

    move-result-object v8

    .line 171
    .local v8, "widthString":Ljava/lang/String;
    if-nez v8, :cond_2

    .line 172
    const-string v9, "cr_MediaResource"

    const-string v10, "missing video width metadata"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    sget-object v6, Lorg/chromium/content/browser/MediaResourceGetter;->EMPTY_METADATA:Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;

    goto :goto_0

    .line 158
    .end local v3    # "hasVideo":Z
    .end local v4    # "height":I
    .end local v7    # "width":I
    .end local v8    # "widthString":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 159
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v9, "cr_MediaResource"

    const-string v10, "non-numeric duration: %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v1, v11, v12

    invoke-static {v9, v10, v11}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    sget-object v6, Lorg/chromium/content/browser/MediaResourceGetter;->EMPTY_METADATA:Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;

    goto :goto_0

    .line 167
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .restart local v3    # "hasVideo":Z
    .restart local v4    # "height":I
    .restart local v7    # "width":I
    :cond_1
    const-string v9, "resource doesn\'t have video"
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 176
    .restart local v8    # "widthString":Ljava/lang/String;
    :cond_2
    :try_start_3
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v7

    .line 182
    const/16 v9, 0x13

    :try_start_4
    invoke-virtual {p0, v9}, Lorg/chromium/content/browser/MediaResourceGetter;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    .line 184
    .local v5, "heightString":Ljava/lang/String;
    if-nez v5, :cond_3

    .line 185
    const-string v9, "cr_MediaResource"

    const-string v10, "missing video height metadata"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    sget-object v6, Lorg/chromium/content/browser/MediaResourceGetter;->EMPTY_METADATA:Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;

    goto :goto_0

    .line 177
    .end local v5    # "heightString":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 178
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    const-string v9, "cr_MediaResource"

    const-string v10, "non-numeric width: %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v8, v11, v12

    invoke-static {v9, v10, v11}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    sget-object v6, Lorg/chromium/content/browser/MediaResourceGetter;->EMPTY_METADATA:Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 189
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .restart local v5    # "heightString":Ljava/lang/String;
    :cond_3
    :try_start_5
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    move-result v4

    .line 195
    .end local v5    # "heightString":Ljava/lang/String;
    .end local v8    # "widthString":Ljava/lang/String;
    :cond_4
    :try_start_6
    new-instance v6, Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;

    const/4 v9, 0x1

    invoke-direct {v6, v0, v7, v4, v9}, Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;-><init>(IIIZ)V

    .line 196
    .local v6, "result":Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;
    const-string v9, "cr_MediaResource"

    const-string v10, "extracted valid metadata: %s"

    invoke-static {v9, v10, v6}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    .line 198
    .end local v0    # "durationMillis":I
    .end local v1    # "durationString":Ljava/lang/String;
    .end local v3    # "hasVideo":Z
    .end local v4    # "height":I
    .end local v6    # "result":Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;
    .end local v7    # "width":I
    :catch_2
    move-exception v2

    .line 199
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v9, "cr_MediaResource"

    const-string v10, "Unable to extract metadata: %s"

    new-array v11, v14, [Ljava/lang/Object;

    aput-object v2, v11, v13

    invoke-static {v9, v10, v11}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    sget-object v6, Lorg/chromium/content/browser/MediaResourceGetter;->EMPTY_METADATA:Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;

    goto/16 :goto_0

    .line 190
    .end local v2    # "e":Ljava/lang/RuntimeException;
    .restart local v0    # "durationMillis":I
    .restart local v1    # "durationString":Ljava/lang/String;
    .restart local v3    # "hasVideo":Z
    .restart local v4    # "height":I
    .restart local v5    # "heightString":Ljava/lang/String;
    .restart local v7    # "width":I
    .restart local v8    # "widthString":Ljava/lang/String;
    :catch_3
    move-exception v2

    .line 191
    .local v2, "e":Ljava/lang/NumberFormatException;
    :try_start_7
    const-string v9, "cr_MediaResource"

    const-string v10, "non-numeric height: %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v5, v11, v12

    invoke-static {v9, v10, v11}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    sget-object v6, Lorg/chromium/content/browser/MediaResourceGetter;->EMPTY_METADATA:Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_0
.end method

.method private static extractMediaMetadata(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "cookies"    # Ljava/lang/String;
    .param p3, "userAgent"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 119
    new-instance v0, Lorg/chromium/content/browser/MediaResourceGetter;

    invoke-direct {v0}, Lorg/chromium/content/browser/MediaResourceGetter;-><init>()V

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/chromium/content/browser/MediaResourceGetter;->extract(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;

    move-result-object v0

    return-object v0
.end method

.method private static extractMediaMetadataFromFd(IJJ)Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;
    .locals 7
    .param p0, "fd"    # I
    .param p1, "offset"    # J
    .param p3, "length"    # J
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 127
    new-instance v0, Lorg/chromium/content/browser/MediaResourceGetter;

    invoke-direct {v0}, Lorg/chromium/content/browser/MediaResourceGetter;-><init>()V

    move v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/chromium/content/browser/MediaResourceGetter;->extract(IJJ)Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;

    move-result-object v0

    return-object v0
.end method

.method private getRawAcceptableDirectories(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SdCardPath"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 363
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 364
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "/mnt/sdcard/"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    const-string v1, "/sdcard/"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/cache/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    return-object v0
.end method

.method private isLoopbackAddress(Ljava/lang/String;)Z
    .locals 2
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 299
    if-eqz p1, :cond_1

    const-string v0, "localhost"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "localhost.localdomain"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "localhost6"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "localhost6.localdomain6"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".localhost"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "127.0.0.1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "[::1]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method configure(IJJ)V
    .locals 10
    .param p1, "fd"    # I
    .param p2, "offset"    # J
    .param p4, "length"    # J
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 391
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    .line 393
    .local v7, "parcelFd":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    iget-object v0, p0, Lorg/chromium/content/browser/MediaResourceGetter;->mRetriever:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    :try_start_1
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 402
    :goto_0
    return-void

    .line 398
    :catch_0
    move-exception v6

    .line 399
    .local v6, "e":Ljava/io/IOException;
    const-string v0, "cr_MediaResource"

    const-string v1, "Failed to close file descriptor: %s"

    new-array v2, v9, [Ljava/lang/Object;

    aput-object v6, v2, v8

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 396
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v0

    .line 397
    :try_start_2
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 400
    :goto_1
    throw v0

    .line 398
    :catch_1
    move-exception v6

    .line 399
    .restart local v6    # "e":Ljava/io/IOException;
    const-string v1, "cr_MediaResource"

    const-string v2, "Failed to close file descriptor: %s"

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v6, v3, v8

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method configure(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 416
    iget-object v0, p0, Lorg/chromium/content/browser/MediaResourceGetter;->mRetriever:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 417
    return-void
.end method

.method configure(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 411
    iget-object v0, p0, Lorg/chromium/content/browser/MediaResourceGetter;->mRetriever:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 412
    return-void
.end method

.method configure(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 406
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/chromium/content/browser/MediaResourceGetter;->mRetriever:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    .line 407
    return-void
.end method

.method configure(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "cookies"    # Ljava/lang/String;
    .param p4, "userAgent"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 208
    :try_start_0
    invoke-static {p2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 213
    .local v5, "uri":Ljava/net/URI;
    invoke-virtual {v5}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 214
    .local v4, "scheme":Ljava/lang/String;
    if-eqz v4, :cond_0

    const-string v8, "file"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "app"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 215
    :cond_0
    invoke-virtual {v5}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/chromium/content/browser/MediaResourceGetter;->uriToFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 216
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 217
    const-string v6, "cr_MediaResource"

    const-string v8, "File does not exist."

    new-array v9, v7, [Ljava/lang/Object;

    invoke-static {v6, v8, v9}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v6, v7

    .line 262
    .end local v1    # "file":Ljava/io/File;
    .end local v4    # "scheme":Ljava/lang/String;
    .end local v5    # "uri":Ljava/net/URI;
    :goto_0
    return v6

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v8, "cr_MediaResource"

    const-string v9, "Cannot parse uri: %s"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v7

    invoke-static {v8, v9, v6}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v6, v7

    .line 211
    goto :goto_0

    .line 220
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v4    # "scheme":Ljava/lang/String;
    .restart local v5    # "uri":Ljava/net/URI;
    :cond_1
    invoke-virtual {p0, v1, p1}, Lorg/chromium/content/browser/MediaResourceGetter;->filePathAcceptable(Ljava/io/File;Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 221
    const-string v6, "cr_MediaResource"

    const-string v8, "Refusing to read from unsafe file location."

    new-array v9, v7, [Ljava/lang/Object;

    invoke-static {v6, v8, v9}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v6, v7

    .line 222
    goto :goto_0

    .line 225
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/chromium/content/browser/MediaResourceGetter;->configure(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 227
    :catch_1
    move-exception v0

    .line 228
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v8, "cr_MediaResource"

    const-string v9, "Error configuring data source: %s"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v7

    invoke-static {v8, v9, v6}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v6, v7

    .line 229
    goto :goto_0

    .line 232
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "file":Ljava/io/File;
    :cond_3
    const-string v8, "content"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 234
    :try_start_2
    invoke-virtual {v5}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {p0, p1, v8}, Lorg/chromium/content/browser/MediaResourceGetter;->configure(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 236
    :catch_2
    move-exception v0

    .line 237
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    const-string v8, "cr_MediaResource"

    const-string v9, "Error configuring data source: %s"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v7

    invoke-static {v8, v9, v6}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v6, v7

    .line 238
    goto :goto_0

    .line 241
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_4
    invoke-virtual {v5}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {v5}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".m3u8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v6, v7

    .line 243
    goto :goto_0

    .line 245
    :cond_5
    invoke-virtual {v5}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 246
    .local v3, "host":Ljava/lang/String;
    invoke-direct {p0, v3}, Lorg/chromium/content/browser/MediaResourceGetter;->isLoopbackAddress(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/MediaResourceGetter;->isNetworkReliable(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 247
    const-string v6, "cr_MediaResource"

    const-string v8, "non-file URI can\'t be read due to unsuitable network conditions"

    new-array v9, v7, [Ljava/lang/Object;

    invoke-static {v6, v8, v9}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v6, v7

    .line 248
    goto/16 :goto_0

    .line 250
    :cond_6
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 251
    .local v2, "headersMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 252
    const-string v8, "Cookie"

    invoke-interface {v2, v8, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    :cond_7
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 255
    const-string v8, "User-Agent"

    invoke-interface {v2, v8, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    :cond_8
    :try_start_3
    invoke-virtual {p0, p2, v2}, Lorg/chromium/content/browser/MediaResourceGetter;->configure(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 260
    :catch_3
    move-exception v0

    .line 261
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    const-string v8, "cr_MediaResource"

    const-string v9, "Error configuring data source: %s"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v7

    invoke-static {v8, v9, v6}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v6, v7

    .line 262
    goto/16 :goto_0
.end method

.method extract(IJJ)Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;
    .locals 2
    .param p1, "fd"    # I
    .param p2, "offset"    # J
    .param p4, "length"    # J
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 132
    invoke-virtual/range {p0 .. p5}, Lorg/chromium/content/browser/MediaResourceGetter;->configure(IJJ)V

    .line 133
    invoke-direct {p0}, Lorg/chromium/content/browser/MediaResourceGetter;->doExtractMetadata()Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;

    move-result-object v0

    return-object v0
.end method

.method extract(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "cookies"    # Ljava/lang/String;
    .param p4, "userAgent"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 139
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/chromium/content/browser/MediaResourceGetter;->configure(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    const-string v0, "cr_MediaResource"

    const-string v1, "Unable to configure metadata extractor"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    sget-object v0, Lorg/chromium/content/browser/MediaResourceGetter;->EMPTY_METADATA:Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;

    .line 143
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/MediaResourceGetter;->doExtractMetadata()Lorg/chromium/content/browser/MediaResourceGetter$MediaMetadata;

    move-result-object v0

    goto :goto_0
.end method

.method extractMetadata(I)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # I
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 421
    iget-object v0, p0, Lorg/chromium/content/browser/MediaResourceGetter;->mRetriever:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method filePathAcceptable(Ljava/io/File;Landroid/content/Context;)Z
    .locals 9
    .param p1, "file"    # Ljava/io/File;
    .param p2, "context"    # Landroid/content/Context;
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 317
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 327
    .local v4, "path":Ljava/lang/String;
    invoke-direct {p0, p2}, Lorg/chromium/content/browser/MediaResourceGetter;->getRawAcceptableDirectories(Landroid/content/Context;)Ljava/util/List;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/chromium/content/browser/MediaResourceGetter;->canonicalize(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 328
    .local v1, "acceptablePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lorg/chromium/content/browser/MediaResourceGetter;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    const-string v6, "cr_MediaResource"

    const-string v7, "canonicalized file path: %s"

    invoke-static {v6, v7, v4}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 330
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 331
    .local v0, "acceptablePath":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 332
    const/4 v5, 0x1

    .line 335
    .end local v0    # "acceptablePath":Ljava/lang/String;
    .end local v1    # "acceptablePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "path":Ljava/lang/String;
    :cond_1
    :goto_0
    return v5

    .line 318
    :catch_0
    move-exception v2

    .line 320
    .local v2, "e":Ljava/io/IOException;
    const-string v6, "cr_MediaResource"

    const-string v7, "canonicalization of file path failed"

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method getExternalStorageDirectory()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 386
    invoke-static {}, Lorg/chromium/base/PathUtils;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getNetworkType(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 347
    const-string v3, "connectivity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 349
    .local v1, "mConnectivityManager":Landroid/net/ConnectivityManager;
    if-nez v1, :cond_0

    .line 350
    const-string v3, "cr_MediaResource"

    const-string v4, "no connectivity manager available"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 358
    :goto_0
    return-object v2

    .line 353
    :cond_0
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 354
    .local v0, "info":Landroid/net/NetworkInfo;
    if-nez v0, :cond_1

    .line 355
    const-string v3, "cr_MediaResource"

    const-string v4, "no active network"

    invoke-static {v3, v4}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 358
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0
.end method

.method isNetworkReliable(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 273
    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 275
    const-string v2, "cr_MediaResource"

    const-string v3, "permission denied to access network state"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    :cond_0
    :goto_0
    return v1

    .line 279
    :cond_1
    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/MediaResourceGetter;->getNetworkType(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    .line 280
    .local v0, "networkType":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 291
    const-string v2, "cr_MediaResource"

    const-string v3, "no ethernet/wifi connection detected"

    invoke-static {v2, v3}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 286
    :sswitch_0
    const-string v1, "cr_MediaResource"

    const-string v2, "ethernet/wifi connection detected"

    invoke-static {v1, v2}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const/4 v1, 0x1

    goto :goto_0

    .line 283
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method uriToFile(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 341
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
