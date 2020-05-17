.class public abstract Lorg/chromium/mojo/bindings/Interface$Stub;
.super Ljava/lang/Object;
.source "Interface.java"

# interfaces
.implements Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojo/bindings/Interface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I::",
        "Lorg/chromium/mojo/bindings/Interface;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;"
    }
.end annotation


# instance fields
.field private final mCore:Lorg/chromium/mojo/system/Core;

.field private final mImpl:Lorg/chromium/mojo/bindings/Interface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TI;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;)V
    .locals 0
    .param p1, "core"    # Lorg/chromium/mojo/system/Core;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/system/Core;",
            "TI;)V"
        }
    .end annotation

    .prologue
    .line 281
    .local p0, "this":Lorg/chromium/mojo/bindings/Interface$Stub;, "Lorg/chromium/mojo/bindings/Interface$Stub<TI;>;"
    .local p2, "impl":Lorg/chromium/mojo/bindings/Interface;, "TI;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iput-object p1, p0, Lorg/chromium/mojo/bindings/Interface$Stub;->mCore:Lorg/chromium/mojo/system/Core;

    .line 283
    iput-object p2, p0, Lorg/chromium/mojo/bindings/Interface$Stub;->mImpl:Lorg/chromium/mojo/bindings/Interface;

    .line 284
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 305
    .local p0, "this":Lorg/chromium/mojo/bindings/Interface$Stub;, "Lorg/chromium/mojo/bindings/Interface$Stub<TI;>;"
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Interface$Stub;->mImpl:Lorg/chromium/mojo/bindings/Interface;

    invoke-interface {v0}, Lorg/chromium/mojo/bindings/Interface;->close()V

    .line 306
    return-void
.end method

.method protected getCore()Lorg/chromium/mojo/system/Core;
    .locals 1

    .prologue
    .line 290
    .local p0, "this":Lorg/chromium/mojo/bindings/Interface$Stub;, "Lorg/chromium/mojo/bindings/Interface$Stub<TI;>;"
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Interface$Stub;->mCore:Lorg/chromium/mojo/system/Core;

    return-object v0
.end method

.method protected getImpl()Lorg/chromium/mojo/bindings/Interface;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;"
        }
    .end annotation

    .prologue
    .line 297
    .local p0, "this":Lorg/chromium/mojo/bindings/Interface$Stub;, "Lorg/chromium/mojo/bindings/Interface$Stub<TI;>;"
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Interface$Stub;->mImpl:Lorg/chromium/mojo/bindings/Interface;

    return-object v0
.end method
