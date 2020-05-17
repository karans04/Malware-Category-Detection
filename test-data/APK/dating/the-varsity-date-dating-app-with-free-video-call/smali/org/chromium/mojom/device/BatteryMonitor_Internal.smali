.class Lorg/chromium/mojom/device/BatteryMonitor_Internal;
.super Ljava/lang/Object;
.source "BatteryMonitor_Internal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/mojom/device/BatteryMonitor_Internal$BatteryMonitorQueryNextStatusResponseParamsProxyToResponder;,
        Lorg/chromium/mojom/device/BatteryMonitor_Internal$BatteryMonitorQueryNextStatusResponseParamsForwardToCallback;,
        Lorg/chromium/mojom/device/BatteryMonitor_Internal$BatteryMonitorQueryNextStatusResponseParams;,
        Lorg/chromium/mojom/device/BatteryMonitor_Internal$BatteryMonitorQueryNextStatusParams;,
        Lorg/chromium/mojom/device/BatteryMonitor_Internal$Stub;,
        Lorg/chromium/mojom/device/BatteryMonitor_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager",
            "<",
            "Lorg/chromium/mojom/device/BatteryMonitor;",
            "Lorg/chromium/mojom/device/BatteryMonitor$Proxy;",
            ">;"
        }
    .end annotation
.end field

.field private static final QUERY_NEXT_STATUS_ORDINAL:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lorg/chromium/mojom/device/BatteryMonitor_Internal$1;

    invoke-direct {v0}, Lorg/chromium/mojom/device/BatteryMonitor_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/mojom/device/BatteryMonitor_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    return-void
.end method
