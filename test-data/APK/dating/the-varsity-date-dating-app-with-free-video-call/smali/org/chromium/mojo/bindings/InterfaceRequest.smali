.class public Lorg/chromium/mojo/bindings/InterfaceRequest;
.super Ljava/lang/Object;
.source "InterfaceRequest.java"

# interfaces
.implements Lorg/chromium/mojo/bindings/HandleOwner;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P::",
        "Lorg/chromium/mojo/bindings/Interface;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/chromium/mojo/bindings/HandleOwner",
        "<",
        "Lorg/chromium/mojo/system/MessagePipeHandle;",
        ">;"
    }
.end annotation


# instance fields
.field private final mHandle:Lorg/chromium/mojo/system/MessagePipeHandle;


# direct methods
.method constructor <init>(Lorg/chromium/mojo/system/MessagePipeHandle;)V
    .locals 0
    .param p1, "handle"    # Lorg/chromium/mojo/system/MessagePipeHandle;

    .prologue
    .line 30
    .local p0, "this":Lorg/chromium/mojo/bindings/InterfaceRequest;, "Lorg/chromium/mojo/bindings/InterfaceRequest<TP;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/chromium/mojo/bindings/InterfaceRequest;->mHandle:Lorg/chromium/mojo/system/MessagePipeHandle;

    .line 32
    return-void
.end method

.method public static asInterfaceRequestUnsafe(Lorg/chromium/mojo/system/MessagePipeHandle;)Lorg/chromium/mojo/bindings/InterfaceRequest;
    .locals 1
    .param p0, "handle"    # Lorg/chromium/mojo/system/MessagePipeHandle;

    .prologue
    .line 56
    new-instance v0, Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/InterfaceRequest;-><init>(Lorg/chromium/mojo/system/MessagePipeHandle;)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 47
    .local p0, "this":Lorg/chromium/mojo/bindings/InterfaceRequest;, "Lorg/chromium/mojo/bindings/InterfaceRequest<TP;>;"
    iget-object v0, p0, Lorg/chromium/mojo/bindings/InterfaceRequest;->mHandle:Lorg/chromium/mojo/system/MessagePipeHandle;

    invoke-interface {v0}, Lorg/chromium/mojo/system/MessagePipeHandle;->close()V

    .line 48
    return-void
.end method

.method public bridge synthetic passHandle()Lorg/chromium/mojo/system/Handle;
    .locals 1

    .prologue
    .line 18
    .local p0, "this":Lorg/chromium/mojo/bindings/InterfaceRequest;, "Lorg/chromium/mojo/bindings/InterfaceRequest<TP;>;"
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/InterfaceRequest;->passHandle()Lorg/chromium/mojo/system/MessagePipeHandle;

    move-result-object v0

    return-object v0
.end method

.method public passHandle()Lorg/chromium/mojo/system/MessagePipeHandle;
    .locals 1

    .prologue
    .line 39
    .local p0, "this":Lorg/chromium/mojo/bindings/InterfaceRequest;, "Lorg/chromium/mojo/bindings/InterfaceRequest<TP;>;"
    iget-object v0, p0, Lorg/chromium/mojo/bindings/InterfaceRequest;->mHandle:Lorg/chromium/mojo/system/MessagePipeHandle;

    invoke-interface {v0}, Lorg/chromium/mojo/system/MessagePipeHandle;->pass()Lorg/chromium/mojo/system/MessagePipeHandle;

    move-result-object v0

    return-object v0
.end method
