.class public interface abstract Lnet/gotev/uploadservice/http/HttpConnection;
.super Ljava/lang/Object;
.source "HttpConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/gotev/uploadservice/http/HttpConnection$RequestBodyDelegate;
    }
.end annotation


# virtual methods
.method public abstract close()V
.end method

.method public abstract getResponse(Lnet/gotev/uploadservice/http/HttpConnection$RequestBodyDelegate;)Lnet/gotev/uploadservice/ServerResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setHeaders(Ljava/util/List;)Lnet/gotev/uploadservice/http/HttpConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/gotev/uploadservice/NameValue;",
            ">;)",
            "Lnet/gotev/uploadservice/http/HttpConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setTotalBodyBytes(JZ)Lnet/gotev/uploadservice/http/HttpConnection;
.end method
