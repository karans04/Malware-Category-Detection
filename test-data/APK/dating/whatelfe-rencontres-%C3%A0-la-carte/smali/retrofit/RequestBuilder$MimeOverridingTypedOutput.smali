.class Lretrofit/RequestBuilder$MimeOverridingTypedOutput;
.super Ljava/lang/Object;
.source "RequestBuilder.java"

# interfaces
.implements Lretrofit/mime/TypedOutput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit/RequestBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MimeOverridingTypedOutput"
.end annotation


# instance fields
.field private final delegate:Lretrofit/mime/TypedOutput;

.field private final mimeType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lretrofit/mime/TypedOutput;Ljava/lang/String;)V
    .locals 0
    .param p1, "delegate"    # Lretrofit/mime/TypedOutput;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    iput-object p1, p0, Lretrofit/RequestBuilder$MimeOverridingTypedOutput;->delegate:Lretrofit/mime/TypedOutput;

    .line 405
    iput-object p2, p0, Lretrofit/RequestBuilder$MimeOverridingTypedOutput;->mimeType:Ljava/lang/String;

    .line 406
    return-void
.end method


# virtual methods
.method public fileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lretrofit/RequestBuilder$MimeOverridingTypedOutput;->delegate:Lretrofit/mime/TypedOutput;

    invoke-interface {v0}, Lretrofit/mime/TypedOutput;->fileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public length()J
    .locals 2

    .prologue
    .line 417
    iget-object v0, p0, Lretrofit/RequestBuilder$MimeOverridingTypedOutput;->delegate:Lretrofit/mime/TypedOutput;

    invoke-interface {v0}, Lretrofit/mime/TypedOutput;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public mimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lretrofit/RequestBuilder$MimeOverridingTypedOutput;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 421
    iget-object v0, p0, Lretrofit/RequestBuilder$MimeOverridingTypedOutput;->delegate:Lretrofit/mime/TypedOutput;

    invoke-interface {v0, p1}, Lretrofit/mime/TypedOutput;->writeTo(Ljava/io/OutputStream;)V

    .line 422
    return-void
.end method
