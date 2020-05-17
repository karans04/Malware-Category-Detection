.class public interface abstract Lorg/xwalk/core/internal/ClientCertRequestInternal;
.super Ljava/lang/Object;
.source "ClientCertRequestInternal.java"


# annotations
.annotation build Lorg/xwalk/core/internal/XWalkAPI;
    instance = Lorg/xwalk/core/internal/ClientCertRequestHandlerInternal;
.end annotation


# virtual methods
.method public abstract cancel()V
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation
.end method

.method public abstract getHost()Ljava/lang/String;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation
.end method

.method public abstract getKeyTypes()[Ljava/lang/String;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation
.end method

.method public abstract getPort()I
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation
.end method

.method public abstract getPrincipals()[Ljava/security/Principal;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation
.end method

.method public abstract ignore()V
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation
.end method

.method public abstract proceed(Ljava/security/PrivateKey;Ljava/util/List;)V
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
.end method
