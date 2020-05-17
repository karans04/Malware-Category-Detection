.class public Lorg/chromium/base/SecureRandomInitializer;
.super Ljava/lang/Object;
.source "SecureRandomInitializer.java"


# static fields
.field private static final NUM_RANDOM_BYTES:I = 0x10

.field private static sSeedBytes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/16 v0, 0x10

    new-array v0, v0, [B

    sput-object v0, Lorg/chromium/base/SecureRandomInitializer;->sSeedBytes:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initialize(Ljava/security/SecureRandom;)V
    .locals 4
    .param p0, "generator"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    const/4 v0, 0x0

    .line 27
    .local v0, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    const-string v2, "/dev/urandom"

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 28
    .end local v0    # "fis":Ljava/io/FileInputStream;
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_1
    sget-object v2, Lorg/chromium/base/SecureRandomInitializer;->sSeedBytes:[B

    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    sget-object v3, Lorg/chromium/base/SecureRandomInitializer;->sSeedBytes:[B

    array-length v3, v3

    if-eq v2, v3, :cond_1

    .line 29
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Failed to get enough random data."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    :catchall_0
    move-exception v2

    move-object v0, v1

    .line 34
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "fis":Ljava/io/FileInputStream;
    :goto_0
    if-eqz v0, :cond_0

    .line 35
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 39
    :cond_0
    :goto_1
    throw v2

    .line 31
    .end local v0    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :cond_1
    :try_start_3
    sget-object v2, Lorg/chromium/base/SecureRandomInitializer;->sSeedBytes:[B

    invoke-virtual {p0, v2}, Ljava/security/SecureRandom;->setSeed([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 34
    if-eqz v1, :cond_2

    .line 35
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 41
    :cond_2
    :goto_2
    return-void

    .line 37
    :catch_0
    move-exception v2

    goto :goto_2

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v3

    goto :goto_1

    .line 33
    :catchall_1
    move-exception v2

    goto :goto_0
.end method
