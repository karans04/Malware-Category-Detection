.class Lorg/chromium/mojom/device/VibrationManager_Internal;
.super Ljava/lang/Object;
.source "VibrationManager_Internal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerCancelResponseParamsProxyToResponder;,
        Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerCancelResponseParamsForwardToCallback;,
        Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerCancelResponseParams;,
        Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerCancelParams;,
        Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerVibrateResponseParamsProxyToResponder;,
        Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerVibrateResponseParamsForwardToCallback;,
        Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerVibrateResponseParams;,
        Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerVibrateParams;,
        Lorg/chromium/mojom/device/VibrationManager_Internal$Stub;,
        Lorg/chromium/mojom/device/VibrationManager_Internal$Proxy;
    }
.end annotation


# static fields
.field private static final CANCEL_ORDINAL:I = 0x1

.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager",
            "<",
            "Lorg/chromium/mojom/device/VibrationManager;",
            "Lorg/chromium/mojom/device/VibrationManager$Proxy;",
            ">;"
        }
    .end annotation
.end field

.field private static final VIBRATE_ORDINAL:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lorg/chromium/mojom/device/VibrationManager_Internal$1;

    invoke-direct {v0}, Lorg/chromium/mojom/device/VibrationManager_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/mojom/device/VibrationManager_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 624
    return-void
.end method
