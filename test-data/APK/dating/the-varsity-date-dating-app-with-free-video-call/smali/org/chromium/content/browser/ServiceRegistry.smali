.class public Lorg/chromium/content/browser/ServiceRegistry;
.super Ljava/lang/Object;
.source "ServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/ServiceRegistry$ImplementationFactory;
    }
.end annotation

.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "content"
.end annotation


# instance fields
.field private final mCore:Lorg/chromium/mojo/system/Core;

.field private mNativeServiceRegistryAndroid:J


# direct methods
.method private constructor <init>(JLorg/chromium/mojo/system/Core;)V
    .locals 1
    .param p1, "nativeServiceRegistryAndroid"    # J
    .param p3, "core"    # Lorg/chromium/mojo/system/Core;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-wide p1, p0, Lorg/chromium/content/browser/ServiceRegistry;->mNativeServiceRegistryAndroid:J

    .line 57
    iput-object p3, p0, Lorg/chromium/content/browser/ServiceRegistry;->mCore:Lorg/chromium/mojo/system/Core;

    .line 58
    return-void
.end method

.method private static create(J)Lorg/chromium/content/browser/ServiceRegistry;
    .locals 2
    .param p0, "nativeServiceRegistryAndroid"    # J
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 62
    new-instance v0, Lorg/chromium/content/browser/ServiceRegistry;

    invoke-static {}, Lorg/chromium/mojo/system/impl/CoreImpl;->getInstance()Lorg/chromium/mojo/system/Core;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lorg/chromium/content/browser/ServiceRegistry;-><init>(JLorg/chromium/mojo/system/Core;)V

    return-object v0
.end method

.method private createImplAndAttach(ILorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/content/browser/ServiceRegistry$ImplementationFactory;)V
    .locals 2
    .param p1, "nativeHandle"    # I
    .param p2, "manager"    # Lorg/chromium/mojo/bindings/Interface$Manager;
    .param p3, "factory"    # Lorg/chromium/content/browser/ServiceRegistry$ImplementationFactory;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 76
    iget-object v1, p0, Lorg/chromium/content/browser/ServiceRegistry;->mCore:Lorg/chromium/mojo/system/Core;

    invoke-interface {v1, p1}, Lorg/chromium/mojo/system/Core;->acquireNativeHandle(I)Lorg/chromium/mojo/system/UntypedHandle;

    move-result-object v1

    invoke-interface {v1}, Lorg/chromium/mojo/system/UntypedHandle;->toMessagePipeHandle()Lorg/chromium/mojo/system/MessagePipeHandle;

    move-result-object v0

    .line 77
    .local v0, "handle":Lorg/chromium/mojo/system/MessagePipeHandle;
    invoke-interface {p3}, Lorg/chromium/content/browser/ServiceRegistry$ImplementationFactory;->createImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Lorg/chromium/mojo/bindings/Interface$Manager;->bind(Lorg/chromium/mojo/bindings/Interface;Lorg/chromium/mojo/system/MessagePipeHandle;)V

    .line 78
    return-void
.end method

.method private destroy()V
    .locals 2
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 67
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/content/browser/ServiceRegistry;->mNativeServiceRegistryAndroid:J

    .line 68
    return-void
.end method

.method private native nativeAddService(JLorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/content/browser/ServiceRegistry$ImplementationFactory;Ljava/lang/String;)V
.end method

.method private native nativeConnectToRemoteService(JLjava/lang/String;I)V
.end method

.method private native nativeRemoveService(JLjava/lang/String;)V
.end method


# virtual methods
.method public addService(Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/content/browser/ServiceRegistry$ImplementationFactory;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I::",
            "Lorg/chromium/mojo/bindings/Interface;",
            "P::",
            "Lorg/chromium/mojo/bindings/Interface$Proxy;",
            ">(",
            "Lorg/chromium/mojo/bindings/Interface$Manager",
            "<TI;TP;>;",
            "Lorg/chromium/content/browser/ServiceRegistry$ImplementationFactory",
            "<TI;>;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, "manager":Lorg/chromium/mojo/bindings/Interface$Manager;, "Lorg/chromium/mojo/bindings/Interface$Manager<TI;TP;>;"
    .local p2, "factory":Lorg/chromium/content/browser/ServiceRegistry$ImplementationFactory;, "Lorg/chromium/content/browser/ServiceRegistry$ImplementationFactory<TI;>;"
    iget-wide v2, p0, Lorg/chromium/content/browser/ServiceRegistry;->mNativeServiceRegistryAndroid:J

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$Manager;->getName()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lorg/chromium/content/browser/ServiceRegistry;->nativeAddService(JLorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/content/browser/ServiceRegistry$ImplementationFactory;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method connectToRemoteService(Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I::",
            "Lorg/chromium/mojo/bindings/Interface;",
            "P::",
            "Lorg/chromium/mojo/bindings/Interface$Proxy;",
            ">(",
            "Lorg/chromium/mojo/bindings/Interface$Manager",
            "<TI;TP;>;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest",
            "<TI;>;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "manager":Lorg/chromium/mojo/bindings/Interface$Manager;, "Lorg/chromium/mojo/bindings/Interface$Manager<TI;TP;>;"
    .local p2, "request":Lorg/chromium/mojo/bindings/InterfaceRequest;, "Lorg/chromium/mojo/bindings/InterfaceRequest<TI;>;"
    invoke-virtual {p2}, Lorg/chromium/mojo/bindings/InterfaceRequest;->passHandle()Lorg/chromium/mojo/system/MessagePipeHandle;

    move-result-object v1

    invoke-interface {v1}, Lorg/chromium/mojo/system/MessagePipeHandle;->releaseNativeHandle()I

    move-result v0

    .line 48
    .local v0, "nativeHandle":I
    iget-wide v2, p0, Lorg/chromium/content/browser/ServiceRegistry;->mNativeServiceRegistryAndroid:J

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$Manager;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v3, v1, v0}, Lorg/chromium/content/browser/ServiceRegistry;->nativeConnectToRemoteService(JLjava/lang/String;I)V

    .line 50
    return-void
.end method

.method removeService(Lorg/chromium/mojo/bindings/Interface$Manager;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I::",
            "Lorg/chromium/mojo/bindings/Interface;",
            "P::",
            "Lorg/chromium/mojo/bindings/Interface$Proxy;",
            ">(",
            "Lorg/chromium/mojo/bindings/Interface$Manager",
            "<TI;TP;>;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "manager":Lorg/chromium/mojo/bindings/Interface$Manager;, "Lorg/chromium/mojo/bindings/Interface$Manager<TI;TP;>;"
    iget-wide v0, p0, Lorg/chromium/content/browser/ServiceRegistry;->mNativeServiceRegistryAndroid:J

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$Manager;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/chromium/content/browser/ServiceRegistry;->nativeRemoveService(JLjava/lang/String;)V

    .line 43
    return-void
.end method
