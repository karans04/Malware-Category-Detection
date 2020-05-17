.class Lorg/chromium/content/browser/crypto/CipherFactory$2;
.super Ljava/lang/Object;
.source "CipherFactory.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/crypto/CipherFactory;->createGeneratorCallable()Ljava/util/concurrent/Callable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lorg/chromium/content/browser/crypto/CipherFactory$CipherData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/crypto/CipherFactory;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/crypto/CipherFactory;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lorg/chromium/content/browser/crypto/CipherFactory$2;->this$0:Lorg/chromium/content/browser/crypto/CipherFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "TrulyRandom"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 186
    invoke-virtual {p0}, Lorg/chromium/content/browser/crypto/CipherFactory$2;->call()Lorg/chromium/content/browser/crypto/CipherFactory$CipherData;

    move-result-object v0

    return-object v0
.end method

.method public call()Lorg/chromium/content/browser/crypto/CipherFactory$CipherData;
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "TrulyRandom"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 195
    :try_start_0
    iget-object v4, p0, Lorg/chromium/content/browser/crypto/CipherFactory$2;->this$0:Lorg/chromium/content/browser/crypto/CipherFactory;

    invoke-static {v4}, Lorg/chromium/content/browser/crypto/CipherFactory;->access$300(Lorg/chromium/content/browser/crypto/CipherFactory;)Lorg/chromium/content/browser/crypto/ByteArrayGenerator;

    move-result-object v4

    const/16 v6, 0x10

    invoke-virtual {v4, v6}, Lorg/chromium/content/browser/crypto/ByteArrayGenerator;->getBytes(I)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 205
    .local v2, "iv":[B
    :try_start_1
    const-string v4, "SHA1PRNG"

    invoke-static {v4}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v3

    .line 206
    .local v3, "random":Ljava/security/SecureRandom;
    invoke-static {v3}, Lorg/chromium/base/SecureRandomInitializer;->initialize(Ljava/security/SecureRandom;)V

    .line 208
    const-string v4, "AES"

    invoke-static {v4}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    .line 209
    .local v1, "generator":Ljavax/crypto/KeyGenerator;
    const/16 v4, 0x80

    invoke-virtual {v1, v4, v3}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 210
    new-instance v4, Lorg/chromium/content/browser/crypto/CipherFactory$CipherData;

    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v6

    invoke-direct {v4, v6, v2}, Lorg/chromium/content/browser/crypto/CipherFactory$CipherData;-><init>(Ljava/security/Key;[B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_3

    .line 216
    .end local v1    # "generator":Ljavax/crypto/KeyGenerator;
    .end local v2    # "iv":[B
    .end local v3    # "random":Ljava/security/SecureRandom;
    :goto_0
    return-object v4

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "cr.CipherFactory"

    const-string v6, "Couldn\'t get generator data."

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v6, v7}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v4, v5

    .line 198
    goto :goto_0

    .line 199
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 200
    .local v0, "e":Ljava/security/GeneralSecurityException;
    const-string v4, "cr.CipherFactory"

    const-string v6, "Couldn\'t get generator data."

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v6, v7}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v4, v5

    .line 201
    goto :goto_0

    .line 211
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    .restart local v2    # "iv":[B
    :catch_2
    move-exception v0

    .line 212
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "cr.CipherFactory"

    const-string v6, "Couldn\'t get generator data."

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v6, v7}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v4, v5

    .line 213
    goto :goto_0

    .line 214
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 215
    .local v0, "e":Ljava/security/GeneralSecurityException;
    const-string v4, "cr.CipherFactory"

    const-string v6, "Couldn\'t get generator instances."

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v6, v7}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v4, v5

    .line 216
    goto :goto_0
.end method
