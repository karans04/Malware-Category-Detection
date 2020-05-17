.class public interface abstract Lorg/chromium/mojom/device/VibrationManager;
.super Ljava/lang/Object;
.source "VibrationManager.java"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/mojom/device/VibrationManager$CancelResponse;,
        Lorg/chromium/mojom/device/VibrationManager$VibrateResponse;,
        Lorg/chromium/mojom/device/VibrationManager$Proxy;
    }
.end annotation


# static fields
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lorg/chromium/mojom/device/VibrationManager_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/mojom/device/VibrationManager;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract cancel(Lorg/chromium/mojom/device/VibrationManager$CancelResponse;)V
.end method

.method public abstract vibrate(JLorg/chromium/mojom/device/VibrationManager$VibrateResponse;)V
.end method
