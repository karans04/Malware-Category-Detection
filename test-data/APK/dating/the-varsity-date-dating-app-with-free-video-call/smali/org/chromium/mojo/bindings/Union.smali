.class public abstract Lorg/chromium/mojo/bindings/Union;
.super Ljava/lang/Object;
.source "Union.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract encode(Lorg/chromium/mojo/bindings/Encoder;I)V
.end method

.method public serialize(Lorg/chromium/mojo/system/Core;)Lorg/chromium/mojo/bindings/Message;
    .locals 2
    .param p1, "core"    # Lorg/chromium/mojo/system/Core;

    .prologue
    const/16 v1, 0x10

    .line 20
    new-instance v0, Lorg/chromium/mojo/bindings/Encoder;

    invoke-direct {v0, p1, v1}, Lorg/chromium/mojo/bindings/Encoder;-><init>(Lorg/chromium/mojo/system/Core;I)V

    .line 21
    .local v0, "encoder":Lorg/chromium/mojo/bindings/Encoder;
    invoke-virtual {v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->claimMemory(I)V

    .line 22
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/chromium/mojo/bindings/Union;->encode(Lorg/chromium/mojo/bindings/Encoder;I)V

    .line 23
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/Encoder;->getMessage()Lorg/chromium/mojo/bindings/Message;

    move-result-object v1

    return-object v1
.end method
