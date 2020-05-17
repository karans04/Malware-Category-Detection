.class final Lorg/chromium/mojom/device/VibrationManager_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "VibrationManager_Internal.java"

# interfaces
.implements Lorg/chromium/mojom/device/VibrationManager$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojom/device/VibrationManager_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Proxy"
.end annotation


# direct methods
.method constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V
    .locals 0
    .param p1, "core"    # Lorg/chromium/mojo/system/Core;
    .param p2, "messageReceiver"    # Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V

    .line 56
    return-void
.end method


# virtual methods
.method public cancel(Lorg/chromium/mojom/device/VibrationManager$CancelResponse;)V
    .locals 7
    .param p1, "callback"    # Lorg/chromium/mojom/device/VibrationManager$CancelResponse;

    .prologue
    const/4 v6, 0x1

    .line 86
    new-instance v0, Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerCancelParams;

    invoke-direct {v0}, Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerCancelParams;-><init>()V

    .line 89
    .local v0, "_message":Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerCancelParams;
    invoke-virtual {p0}, Lorg/chromium/mojom/device/VibrationManager_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/device/VibrationManager_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const-wide/16 v4, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerCancelParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerCancelResponseParamsForwardToCallback;

    invoke-direct {v3, p1}, Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerCancelResponseParamsForwardToCallback;-><init>(Lorg/chromium/mojom/device/VibrationManager$CancelResponse;)V

    invoke-interface {v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    .line 98
    return-void
.end method

.method public vibrate(JLorg/chromium/mojom/device/VibrationManager$VibrateResponse;)V
    .locals 9
    .param p1, "milliseconds"    # J
    .param p3, "callback"    # Lorg/chromium/mojom/device/VibrationManager$VibrateResponse;

    .prologue
    .line 64
    new-instance v0, Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerVibrateParams;

    invoke-direct {v0}, Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerVibrateParams;-><init>()V

    .line 66
    .local v0, "_message":Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerVibrateParams;
    iput-wide p1, v0, Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerVibrateParams;->milliseconds:J

    .line 69
    invoke-virtual {p0}, Lorg/chromium/mojom/device/VibrationManager_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/device/VibrationManager_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerVibrateParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerVibrateResponseParamsForwardToCallback;

    invoke-direct {v3, p3}, Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerVibrateResponseParamsForwardToCallback;-><init>(Lorg/chromium/mojom/device/VibrationManager$VibrateResponse;)V

    invoke-interface {v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    .line 78
    return-void
.end method
