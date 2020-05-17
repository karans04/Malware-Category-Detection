.class public Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;
.super Ljava/lang/Object;
.source "XWalkWebResourceResponseInternal.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "xwalk"
.end annotation

.annotation build Lorg/xwalk/core/internal/XWalkAPI;
    createInternally = true
.end annotation


# instance fields
.field private mData:Ljava/io/InputStream;

.field private mEncoding:Ljava/lang/String;

.field private mMimeType:Ljava/lang/String;

.field private mReasonPhrase:Ljava/lang/String;

.field private mResponseHeaderNames:[Ljava/lang/String;

.field private mResponseHeaderValues:[Ljava/lang/String;

.field private mResponseHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusCode:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->mMimeType:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->mEncoding:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->mData:Ljava/io/InputStream;

    .line 39
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 0
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/io/InputStream;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->mMimeType:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->mEncoding:Ljava/lang/String;

    .line 44
    invoke-virtual {p0, p3}, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->setData(Ljava/io/InputStream;)V

    .line 45
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;ILjava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/io/InputStream;
    .param p4, "statusCode"    # I
    .param p5, "reasonPhrase"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p6, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 51
    iput p4, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->mStatusCode:I

    .line 52
    iput-object p5, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->mReasonPhrase:Ljava/lang/String;

    .line 53
    iput-object p6, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->mResponseHeaders:Ljava/util/Map;

    .line 54
    return-void
.end method

.method private fillInResponseHeaderNamesAndValuesIfNeeded()V
    .locals 5

    .prologue
    .line 57
    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->mResponseHeaders:Ljava/util/Map;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->mResponseHeaderNames:[Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 66
    :cond_0
    return-void

    .line 58
    :cond_1
    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->mResponseHeaders:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->mResponseHeaderNames:[Ljava/lang/String;

    .line 59
    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->mResponseHeaders:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->mResponseHeaderValues:[Ljava/lang/String;

    .line 60
    const/4 v1, 0x0

    .line 61
    .local v1, "i":I
    iget-object v3, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->mResponseHeaders:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 62
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->mResponseHeaderNames:[Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v4, v1

    .line 63
    iget-object v4, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->mResponseHeaderValues:[Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v4, v1

    .line 64
    add-int/lit8 v1, v1, 0x1

    .line 65
    goto :goto_0
.end method

.method private getResponseHeaderNames()[Ljava/lang/String;
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 245
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->fillInResponseHeaderNamesAndValuesIfNeeded()V

    .line 246
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->mResponseHeaderNames:[Ljava/lang/String;

    return-object v0
.end method

.method private getResponseHeaderValues()[Ljava/lang/String;
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 251
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->fillInResponseHeaderNamesAndValuesIfNeeded()V

    .line 252
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->mResponseHeaderValues:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getData()Ljava/io/InputStream;
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->mData:Ljava/io/InputStream;

    return-object v0
.end method

.method public getDataNative()Ljava/io/InputStream;
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->mData:Ljava/io/InputStream;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->mEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getEncodingNative()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->mEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeTypeNative()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getReasonPhrase()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->mReasonPhrase:Ljava/lang/String;

    return-object v0
.end method

.method public getReasonPhraseNative()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 218
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->mReasonPhrase:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->mResponseHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 197
    iget v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->mStatusCode:I

    return v0
.end method

.method public getStatusCodeNative()I
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 202
    iget v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->mStatusCode:I

    return v0
.end method

.method public setData(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "data"    # Ljava/io/InputStream;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 134
    if-eqz p1, :cond_0

    const-class v0, Ljava/io/StringBufferInputStream;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "StringBufferInputStream is deprecated and must not be passed to a XWalkWebResourceResponse"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_0
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->mData:Ljava/io/InputStream;

    .line 139
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 104
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->mEncoding:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0
    .param p1, "mimeType"    # Ljava/lang/String;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 76
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->mMimeType:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setResponseHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 229
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->mResponseHeaders:Ljava/util/Map;

    .line 230
    return-void
.end method

.method public setStatusCodeAndReasonPhrase(ILjava/lang/String;)V
    .locals 4
    .param p1, "statusCode"    # I
    .param p2, "reasonPhrase"    # Ljava/lang/String;
    .annotation build Lorg/xwalk/core/internal/XWalkAPI;
    .end annotation

    .prologue
    .line 168
    const/16 v2, 0x64

    if-ge p1, v2, :cond_0

    .line 169
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "statusCode can\'t be less than 100."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 170
    :cond_0
    const/16 v2, 0x257

    if-le p1, v2, :cond_1

    .line 171
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "statusCode can\'t be greater than 599."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 172
    :cond_1
    const/16 v2, 0x12b

    if-le p1, v2, :cond_2

    const/16 v2, 0x190

    if-ge p1, v2, :cond_2

    .line 173
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "statusCode can\'t be in the [300, 399] range."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 174
    :cond_2
    if-nez p2, :cond_3

    .line 175
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "reasonPhrase can\'t be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 176
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 177
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "reasonPhrase can\'t be empty."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 178
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 179
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 180
    .local v0, "c":I
    const/16 v2, 0x7f

    if-le v0, v2, :cond_5

    .line 181
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "reasonPhrase can\'t contain non-ASCII characters."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 178
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 185
    .end local v0    # "c":I
    :cond_6
    iput p1, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->mStatusCode:I

    .line 186
    iput-object p2, p0, Lorg/xwalk/core/internal/XWalkWebResourceResponseInternal;->mReasonPhrase:Ljava/lang/String;

    .line 187
    return-void
.end method
