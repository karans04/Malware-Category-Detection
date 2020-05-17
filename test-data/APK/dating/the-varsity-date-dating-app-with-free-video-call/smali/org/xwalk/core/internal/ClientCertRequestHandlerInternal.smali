.class public Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;
.super Ljava/lang/Object;
.source "ClientCertRequestHandlerInternal.java"

# interfaces
.implements Lorg/xwalk/core/internal/ClientCertRequestInternal;


# annotations
.annotation build Lorg/xwalk/core/internal/XWalkAPI;
    createInternally = true
    impl = Lorg/xwalk/core/internal/ClientCertRequestInternal;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ClientCertRequestHandlerInternal"


# instance fields
.field private mContentsClient:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

.field private mHost:Ljava/lang/String;

.field private mId:I

.field private mIsCalled:Z

.field private mKeyTypes:[Ljava/lang/String;

.field private mPort:I

.field private mPrincipals:[Ljava/security/Principal;


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->mKeyTypes:[Ljava/lang/String;

    .line 23
    new-array v0, v2, [Ljava/security/Principal;

    iput-object v0, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->mPrincipals:[Ljava/security/Principal;

    .line 41
    iput v1, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->mId:I

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->mHost:Ljava/lang/String;

    .line 43
    iput v1, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->mPort:I

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->mContentsClient:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    .line 45
    return-void
.end method

.method constructor <init>(Lorg/xwalk/core/internal/XWalkContentsClientBridge;I[Ljava/lang/String;[Ljava/security/Principal;Ljava/lang/String;I)V
    .locals 2
    .param p1, "contentsClient"    # Lorg/xwalk/core/internal/XWalkContentsClientBridge;
    .param p2, "id"    # I
    .param p3, "keyTypes"    # [Ljava/lang/String;
    .param p4, "principals"    # [Ljava/security/Principal;
    .param p5, "host"    # Ljava/lang/String;
    .param p6, "port"    # I

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->mKeyTypes:[Ljava/lang/String;

    .line 23
    new-array v0, v1, [Ljava/security/Principal;

    iput-object v0, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->mPrincipals:[Ljava/security/Principal;

    .line 30
    iput p2, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->mId:I

    .line 31
    iput-object p3, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->mKeyTypes:[Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->mPrincipals:[Ljava/security/Principal;

    .line 33
    iput-object p5, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->mHost:Ljava/lang/String;

    .line 34
    iput p6, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->mPort:I

    .line 35
    iput-object p1, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->mContentsClient:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)V
    .locals 0
    .param p0, "x0"    # Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;
    .param p1, "x1"    # Ljava/security/PrivateKey;
    .param p2, "x2"    # [Ljava/security/cert/X509Certificate;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->proceedOnUiThread(Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)V

    return-void
.end method

.method static synthetic access$100(Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;)V
    .locals 0
    .param p0, "x0"    # Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;

    .prologue
    .line 18
    invoke-direct {p0}, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->ignoreOnUiThread()V

    return-void
.end method

.method static synthetic access$200(Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;)V
    .locals 0
    .param p0, "x0"    # Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;

    .prologue
    .line 18
    invoke-direct {p0}, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->cancelOnUiThread()V

    return-void
.end method

.method private cancelOnUiThread()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 135
    invoke-direct {p0}, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->checkIfCalled()V

    .line 136
    iget-object v0, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->mContentsClient:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    iget-object v0, v0, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mLookupTable:Lorg/xwalk/core/internal/ClientCertLookupTable;

    iget-object v2, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->mHost:Ljava/lang/String;

    iget v3, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->mPort:I

    invoke-virtual {v0, v2, v3}, Lorg/xwalk/core/internal/ClientCertLookupTable;->deny(Ljava/lang/String;I)V

    move-object v0, v1

    .line 137
    check-cast v0, [[B

    invoke-direct {p0, v1, v0}, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->provideResponse(Ljava/security/PrivateKey;[[B)V

    .line 138
    return-void
.end method

.method private checkIfCalled()V
    .locals 2

    .prologue
    .line 141
    iget-boolean v0, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->mIsCalled:Z

    if-eqz v0, :cond_0

    .line 142
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The callback was already called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->mIsCalled:Z

    .line 146
    return-void
.end method

.method private ignoreOnUiThread()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 130
    invoke-direct {p0}, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->checkIfCalled()V

    move-object v0, v1

    .line 131
    check-cast v0, [[B

    invoke-direct {p0, v1, v0}, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->provideResponse(Ljava/security/PrivateKey;[[B)V

    .line 132
    return-void
.end method

.method private proceedOnUiThread(Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)V
    .locals 7
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "chain"    # [Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v4, 0x0

    .line 102
    invoke-direct {p0}, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->checkIfCalled()V

    .line 104
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v3, p2

    if-nez v3, :cond_1

    .line 105
    :cond_0
    const-string v3, "ClientCertRequestHandlerInternal"

    const-string v5, "Empty client certificate chain?"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 106
    check-cast v3, [[B

    invoke-direct {p0, v4, v3}, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->provideResponse(Ljava/security/PrivateKey;[[B)V

    .line 127
    :goto_0
    return-void

    .line 112
    :cond_1
    array-length v3, p2

    new-array v1, v3, [[B

    .line 115
    .local v1, "encodedChain":[[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    :try_start_0
    array-length v3, p2

    if-ge v2, v3, :cond_2

    .line 116
    aget-object v3, p2, v2

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    const-string v3, "ClientCertRequestHandlerInternal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not retrieve encoded certificate chain: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 120
    check-cast v3, [[B

    invoke-direct {p0, v4, v3}, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->provideResponse(Ljava/security/PrivateKey;[[B)V

    goto :goto_0

    .line 125
    .end local v0    # "e":Ljava/security/cert/CertificateEncodingException;
    :cond_2
    iget-object v3, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->mContentsClient:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    iget-object v3, v3, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->mLookupTable:Lorg/xwalk/core/internal/ClientCertLookupTable;

    iget-object v4, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->mHost:Ljava/lang/String;

    iget v5, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->mPort:I

    invoke-virtual {v3, v4, v5, p1, v1}, Lorg/xwalk/core/internal/ClientCertLookupTable;->allow(Ljava/lang/String;ILjava/security/PrivateKey;[[B)V

    .line 126
    invoke-direct {p0, p1, v1}, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->provideResponse(Ljava/security/PrivateKey;[[B)V

    goto :goto_0
.end method

.method private provideResponse(Ljava/security/PrivateKey;[[B)V
    .locals 2
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "certChain"    # [[B

    .prologue
    .line 149
    iget-object v0, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->mContentsClient:Lorg/xwalk/core/internal/XWalkContentsClientBridge;

    iget v1, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->mId:I

    invoke-virtual {v0, v1, p2, p1}, Lorg/xwalk/core/internal/XWalkContentsClientBridge;->provideClientCertificateResponse(I[[BLjava/security/PrivateKey;)V

    .line 150
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 73
    new-instance v0, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal$3;

    invoke-direct {v0, p0}, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal$3;-><init>(Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 79
    return-void
.end method

.method public getHost()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyTypes()[Ljava/lang/String;
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->mKeyTypes:[Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 88
    iget v0, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->mPort:I

    return v0
.end method

.method public getPrincipals()[Ljava/security/Principal;
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;->mPrincipals:[Ljava/security/Principal;

    return-object v0
.end method

.method public ignore()V
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 63
    new-instance v0, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal$2;

    invoke-direct {v0, p0}, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal$2;-><init>(Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 69
    return-void
.end method

.method public proceed(Ljava/security/PrivateKey;Ljava/util/List;)V
    .locals 1
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/PrivateKey;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 49
    .local p2, "chain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    new-instance v0, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal$1;

    invoke-direct {v0, p0, p2, p1}, Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal$1;-><init>(Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;Ljava/util/List;Ljava/security/PrivateKey;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 59
    return-void
.end method
