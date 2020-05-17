.class public abstract Lorg/chromium/mojo/bindings/Struct;
.super Ljava/lang/Object;
.source "Struct.java"


# instance fields
.field private final mEncodedBaseSize:I

.field private final mVersion:I


# direct methods
.method protected constructor <init>(II)V
    .locals 0
    .param p1, "encodedBaseSize"    # I
    .param p2, "version"    # I

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lorg/chromium/mojo/bindings/Struct;->mEncodedBaseSize:I

    .line 28
    iput p2, p0, Lorg/chromium/mojo/bindings/Struct;->mVersion:I

    .line 29
    return-void
.end method


# virtual methods
.method protected abstract encode(Lorg/chromium/mojo/bindings/Encoder;)V
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lorg/chromium/mojo/bindings/Struct;->mVersion:I

    return v0
.end method

.method public serialize(Lorg/chromium/mojo/system/Core;)Lorg/chromium/mojo/bindings/Message;
    .locals 2
    .param p1, "core"    # Lorg/chromium/mojo/system/Core;

    .prologue
    .line 46
    new-instance v0, Lorg/chromium/mojo/bindings/Encoder;

    iget v1, p0, Lorg/chromium/mojo/bindings/Struct;->mEncodedBaseSize:I

    invoke-direct {v0, p1, v1}, Lorg/chromium/mojo/bindings/Encoder;-><init>(Lorg/chromium/mojo/system/Core;I)V

    .line 47
    .local v0, "encoder":Lorg/chromium/mojo/bindings/Encoder;
    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Struct;->encode(Lorg/chromium/mojo/bindings/Encoder;)V

    .line 48
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/Encoder;->getMessage()Lorg/chromium/mojo/bindings/Message;

    move-result-object v1

    return-object v1
.end method

.method public serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;
    .locals 3
    .param p1, "core"    # Lorg/chromium/mojo/system/Core;
    .param p2, "header"    # Lorg/chromium/mojo/bindings/MessageHeader;

    .prologue
    .line 59
    new-instance v0, Lorg/chromium/mojo/bindings/Encoder;

    iget v1, p0, Lorg/chromium/mojo/bindings/Struct;->mEncodedBaseSize:I

    invoke-virtual {p2}, Lorg/chromium/mojo/bindings/MessageHeader;->getSize()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, p1, v1}, Lorg/chromium/mojo/bindings/Encoder;-><init>(Lorg/chromium/mojo/system/Core;I)V

    .line 60
    .local v0, "encoder":Lorg/chromium/mojo/bindings/Encoder;
    invoke-virtual {p2, v0}, Lorg/chromium/mojo/bindings/MessageHeader;->encode(Lorg/chromium/mojo/bindings/Encoder;)V

    .line 61
    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Struct;->encode(Lorg/chromium/mojo/bindings/Encoder;)V

    .line 62
    new-instance v1, Lorg/chromium/mojo/bindings/ServiceMessage;

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/Encoder;->getMessage()Lorg/chromium/mojo/bindings/Message;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lorg/chromium/mojo/bindings/ServiceMessage;-><init>(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageHeader;)V

    return-object v1
.end method
