.class final Lorg/chromium/mojom/device/BatteryMonitor_Internal$1;
.super Lorg/chromium/mojo/bindings/Interface$Manager;
.source "BatteryMonitor_Internal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojom/device/BatteryMonitor_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/bindings/Interface$Manager",
        "<",
        "Lorg/chromium/mojom/device/BatteryMonitor;",
        "Lorg/chromium/mojom/device/BatteryMonitor$Proxy;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lorg/chromium/mojo/bindings/Interface$Manager;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic buildArray(I)[Lorg/chromium/mojo/bindings/Interface;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lorg/chromium/mojom/device/BatteryMonitor_Internal$1;->buildArray(I)[Lorg/chromium/mojom/device/BatteryMonitor;

    move-result-object v0

    return-object v0
.end method

.method public buildArray(I)[Lorg/chromium/mojom/device/BatteryMonitor;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 41
    new-array v0, p1, [Lorg/chromium/mojom/device/BatteryMonitor;

    return-object v0
.end method

.method public bridge synthetic buildProxy(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)Lorg/chromium/mojo/bindings/Interface$Proxy;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1, p2}, Lorg/chromium/mojom/device/BatteryMonitor_Internal$1;->buildProxy(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)Lorg/chromium/mojom/device/BatteryMonitor_Internal$Proxy;

    move-result-object v0

    return-object v0
.end method

.method public buildProxy(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)Lorg/chromium/mojom/device/BatteryMonitor_Internal$Proxy;
    .locals 1
    .param p1, "core"    # Lorg/chromium/mojo/system/Core;
    .param p2, "messageReceiver"    # Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    .prologue
    .line 33
    new-instance v0, Lorg/chromium/mojom/device/BatteryMonitor_Internal$Proxy;

    invoke-direct {v0, p1, p2}, Lorg/chromium/mojom/device/BatteryMonitor_Internal$Proxy;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V

    return-object v0
.end method

.method public bridge synthetic buildStub(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;)Lorg/chromium/mojo/bindings/Interface$Stub;
    .locals 1

    .prologue
    .line 21
    check-cast p2, Lorg/chromium/mojom/device/BatteryMonitor;

    invoke-virtual {p0, p1, p2}, Lorg/chromium/mojom/device/BatteryMonitor_Internal$1;->buildStub(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojom/device/BatteryMonitor;)Lorg/chromium/mojom/device/BatteryMonitor_Internal$Stub;

    move-result-object v0

    return-object v0
.end method

.method public buildStub(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojom/device/BatteryMonitor;)Lorg/chromium/mojom/device/BatteryMonitor_Internal$Stub;
    .locals 1
    .param p1, "core"    # Lorg/chromium/mojo/system/Core;
    .param p2, "impl"    # Lorg/chromium/mojom/device/BatteryMonitor;

    .prologue
    .line 37
    new-instance v0, Lorg/chromium/mojom/device/BatteryMonitor_Internal$Stub;

    invoke-direct {v0, p1, p2}, Lorg/chromium/mojom/device/BatteryMonitor_Internal$Stub;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojom/device/BatteryMonitor;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    const-string v0, "device::BatteryMonitor"

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method
