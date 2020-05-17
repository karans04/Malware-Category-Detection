.class public interface abstract Lnet/gotev/uploadservice/http/HttpConnection$RequestBodyDelegate;
.super Ljava/lang/Object;
.source "HttpConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/gotev/uploadservice/http/HttpConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RequestBodyDelegate"
.end annotation


# virtual methods
.method public abstract onBodyReady(Lnet/gotev/uploadservice/http/BodyWriter;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
