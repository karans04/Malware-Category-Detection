.class Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerVibrateResponseParamsForwardToCallback;
.super Lorg/chromium/mojo/bindings/SideEffectFreeCloseable;
.source "VibrationManager_Internal.java"

# interfaces
.implements Lorg/chromium/mojo/bindings/MessageReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojom/device/VibrationManager_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VibrationManagerVibrateResponseParamsForwardToCallback"
.end annotation


# instance fields
.field private final mCallback:Lorg/chromium/mojom/device/VibrationManager$VibrateResponse;


# direct methods
.method constructor <init>(Lorg/chromium/mojom/device/VibrationManager$VibrateResponse;)V
    .locals 0
    .param p1, "callback"    # Lorg/chromium/mojom/device/VibrationManager$VibrateResponse;

    .prologue
    .line 400
    invoke-direct {p0}, Lorg/chromium/mojo/bindings/SideEffectFreeCloseable;-><init>()V

    .line 401
    iput-object p1, p0, Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerVibrateResponseParamsForwardToCallback;->mCallback:Lorg/chromium/mojom/device/VibrationManager$VibrateResponse;

    .line 402
    return-void
.end method


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 6
    .param p1, "message"    # Lorg/chromium/mojo/bindings/Message;

    .prologue
    const/4 v3, 0x0

    .line 407
    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v2

    .line 409
    .local v2, "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v1

    .line 410
    .local v1, "header":Lorg/chromium/mojo/bindings/MessageHeader;
    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-virtual {v1, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(II)Z

    move-result v4

    if-nez v4, :cond_0

    .line 418
    .end local v1    # "header":Lorg/chromium/mojo/bindings/MessageHeader;
    .end local v2    # "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    :goto_0
    return v3

    .line 415
    .restart local v1    # "header":Lorg/chromium/mojo/bindings/MessageHeader;
    .restart local v2    # "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    :cond_0
    iget-object v4, p0, Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerVibrateResponseParamsForwardToCallback;->mCallback:Lorg/chromium/mojom/device/VibrationManager$VibrateResponse;

    invoke-interface {v4}, Lorg/chromium/mojom/device/VibrationManager$VibrateResponse;->call()V
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    const/4 v3, 0x1

    goto :goto_0

    .line 417
    .end local v1    # "header":Lorg/chromium/mojo/bindings/MessageHeader;
    .end local v2    # "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    :catch_0
    move-exception v0

    .line 418
    .local v0, "e":Lorg/chromium/mojo/bindings/DeserializationException;
    goto :goto_0
.end method
