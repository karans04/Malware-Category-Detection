.class Lorg/chromium/content/browser/ServiceRegistrar;
.super Ljava/lang/Object;
.source "ServiceRegistrar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/ServiceRegistrar$VibrationManagerImplementationFactory;,
        Lorg/chromium/content/browser/ServiceRegistrar$BatteryMonitorImplementationFactory;
    }
.end annotation

.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "content"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lorg/chromium/content/browser/ServiceRegistrar;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/ServiceRegistrar;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method static registerFrameHostServices(Lorg/chromium/content/browser/ServiceRegistry;Landroid/content/Context;)V
    .locals 2
    .param p0, "registry"    # Lorg/chromium/content/browser/ServiceRegistry;
    .param p1, "applicationContext"    # Landroid/content/Context;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 61
    sget-boolean v0, Lorg/chromium/content/browser/ServiceRegistrar;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 62
    :cond_0
    sget-object v0, Lorg/chromium/mojom/device/VibrationManager;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    new-instance v1, Lorg/chromium/content/browser/ServiceRegistrar$VibrationManagerImplementationFactory;

    invoke-direct {v1, p1}, Lorg/chromium/content/browser/ServiceRegistrar$VibrationManagerImplementationFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Lorg/chromium/content/browser/ServiceRegistry;->addService(Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/content/browser/ServiceRegistry$ImplementationFactory;)V

    .line 65
    return-void
.end method

.method static registerProcessHostServices(Lorg/chromium/content/browser/ServiceRegistry;Landroid/content/Context;)V
    .locals 2
    .param p0, "registry"    # Lorg/chromium/content/browser/ServiceRegistry;
    .param p1, "applicationContext"    # Landroid/content/Context;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 54
    sget-boolean v0, Lorg/chromium/content/browser/ServiceRegistrar;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 55
    :cond_0
    sget-object v0, Lorg/chromium/mojom/device/BatteryMonitor;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    new-instance v1, Lorg/chromium/content/browser/ServiceRegistrar$BatteryMonitorImplementationFactory;

    invoke-direct {v1, p1}, Lorg/chromium/content/browser/ServiceRegistrar$BatteryMonitorImplementationFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Lorg/chromium/content/browser/ServiceRegistry;->addService(Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/content/browser/ServiceRegistry$ImplementationFactory;)V

    .line 57
    return-void
.end method
