.class Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerVibrateResponseParamsProxyToResponder;
.super Ljava/lang/Object;
.source "VibrationManager_Internal.java"

# interfaces
.implements Lorg/chromium/mojom/device/VibrationManager$VibrateResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojom/device/VibrationManager_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VibrationManagerVibrateResponseParamsProxyToResponder"
.end annotation


# instance fields
.field private final mCore:Lorg/chromium/mojo/system/Core;

.field private final mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

.field private final mRequestId:J


# direct methods
.method constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V
    .locals 1
    .param p1, "core"    # Lorg/chromium/mojo/system/Core;
    .param p2, "messageReceiver"    # Lorg/chromium/mojo/bindings/MessageReceiver;
    .param p3, "requestId"    # J

    .prologue
    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 433
    iput-object p1, p0, Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerVibrateResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    .line 434
    iput-object p2, p0, Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerVibrateResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    .line 435
    iput-wide p3, p0, Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerVibrateResponseParamsProxyToResponder;->mRequestId:J

    .line 436
    return-void
.end method


# virtual methods
.method public call()V
    .locals 8

    .prologue
    .line 440
    new-instance v1, Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerVibrateResponseParams;

    invoke-direct {v1}, Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerVibrateResponseParams;-><init>()V

    .line 442
    .local v1, "_response":Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerVibrateResponseParams;
    iget-object v2, p0, Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerVibrateResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x0

    const/4 v5, 0x2

    iget-wide v6, p0, Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerVibrateResponseParamsProxyToResponder;->mRequestId:J

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v1, v2, v3}, Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerVibrateResponseParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    .line 449
    .local v0, "_message":Lorg/chromium/mojo/bindings/ServiceMessage;
    iget-object v2, p0, Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerVibrateResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    invoke-interface {v2, v0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 450
    return-void
.end method
