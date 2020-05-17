.class public interface abstract Lorg/chromium/base/ResourceExtractor$ResourceInterceptor;
.super Ljava/lang/Object;
.source "ResourceExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/base/ResourceExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ResourceInterceptor"
.end annotation


# virtual methods
.method public abstract openRawResource(Ljava/lang/String;)Ljava/io/InputStream;
.end method

.method public abstract shouldInterceptLoadRequest(Ljava/lang/String;)Z
.end method
