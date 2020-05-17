.class public Lorg/crosswalk/engine/XWalkCordovaClientCertRequest;
.super Ljava/lang/Object;
.source "XWalkCordovaClientCertRequest.java"

# interfaces
.implements Lorg/apache/cordova/ICordovaClientCertRequest;


# instance fields
.field private final request:Lorg/xwalk/core/ClientCertRequest;


# direct methods
.method public constructor <init>(Lorg/xwalk/core/ClientCertRequest;)V
    .locals 0
    .param p1, "request"    # Lorg/xwalk/core/ClientCertRequest;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/crosswalk/engine/XWalkCordovaClientCertRequest;->request:Lorg/xwalk/core/ClientCertRequest;

    .line 35
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkCordovaClientCertRequest;->request:Lorg/xwalk/core/ClientCertRequest;

    invoke-interface {v0}, Lorg/xwalk/core/ClientCertRequest;->cancel()V

    .line 42
    return-void
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkCordovaClientCertRequest;->request:Lorg/xwalk/core/ClientCertRequest;

    invoke-interface {v0}, Lorg/xwalk/core/ClientCertRequest;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyTypes()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkCordovaClientCertRequest;->request:Lorg/xwalk/core/ClientCertRequest;

    invoke-interface {v0}, Lorg/xwalk/core/ClientCertRequest;->getKeyTypes()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkCordovaClientCertRequest;->request:Lorg/xwalk/core/ClientCertRequest;

    invoke-interface {v0}, Lorg/xwalk/core/ClientCertRequest;->getPort()I

    move-result v0

    return v0
.end method

.method public getPrincipals()[Ljava/security/Principal;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkCordovaClientCertRequest;->request:Lorg/xwalk/core/ClientCertRequest;

    invoke-interface {v0}, Lorg/xwalk/core/ClientCertRequest;->getPrincipals()[Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public ignore()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkCordovaClientCertRequest;->request:Lorg/xwalk/core/ClientCertRequest;

    invoke-interface {v0}, Lorg/xwalk/core/ClientCertRequest;->ignore()V

    .line 78
    return-void
.end method

.method public proceed(Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)V
    .locals 2
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "chain"    # [Ljava/security/cert/X509Certificate;

    .prologue
    .line 88
    iget-object v0, p0, Lorg/crosswalk/engine/XWalkCordovaClientCertRequest;->request:Lorg/xwalk/core/ClientCertRequest;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/xwalk/core/ClientCertRequest;->proceed(Ljava/security/PrivateKey;Ljava/util/List;)V

    .line 89
    return-void
.end method
