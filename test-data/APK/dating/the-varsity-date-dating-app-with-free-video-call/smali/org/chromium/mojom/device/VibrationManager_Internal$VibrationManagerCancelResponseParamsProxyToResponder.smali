.class Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerCancelResponseParamsProxyToResponder;
.super Ljava/lang/Object;
.source "VibrationManager_Internal.java"

# interfaces
.implements Lorg/chromium/mojom/device/VibrationManager$CancelResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojom/device/VibrationManager_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VibrationManagerCancelResponseParamsProxyToResponder"
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
    .line 633
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 634
    iput-object p1, p0, Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerCancelResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    .line 635
    iput-object p2, p0, Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerCancelResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    .line 636
    iput-wide p3, p0, Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerCancelResponseParamsProxyToResponder;->mRequestId:J

    .line 637
    return-void
.end method


# virtual methods
.method public call()V
    .locals 8

    .prologue
    .line 641
    new-instance v1, Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerCancelResponseParams;

    invoke-direct {v1}, Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerCancelResponseParams;-><init>()V

    .line 643
    .local v1, "_response":Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerCancelResponseParams;
    iget-object v2, p0, Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerCancelResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x1

    const/4 v5, 0x2

    iget-wide v6, p0, Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerCancelResponseParamsProxyToResponder;->mRequestId:J

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v1, v2, v3}, Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerCancelResponseParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    .line 650
    .local v0, "_message":Lorg/chromium/mojo/bindings/ServiceMessage;
    iget-object v2, p0, Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerCancelResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    invoke-interface {v2, v0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 651
    return-void
.end method
