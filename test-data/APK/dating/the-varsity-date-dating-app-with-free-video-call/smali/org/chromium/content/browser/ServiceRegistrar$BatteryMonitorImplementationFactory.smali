.class Lorg/chromium/content/browser/ServiceRegistrar$BatteryMonitorImplementationFactory;
.super Ljava/lang/Object;
.source "ServiceRegistrar.java"

# interfaces
.implements Lorg/chromium/content/browser/ServiceRegistry$ImplementationFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/ServiceRegistrar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BatteryMonitorImplementationFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/chromium/content/browser/ServiceRegistry$ImplementationFactory",
        "<",
        "Lorg/chromium/mojom/device/BatteryMonitor;",
        ">;"
    }
.end annotation


# instance fields
.field private final mFactory:Lorg/chromium/device/battery/BatteryMonitorFactory;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lorg/chromium/device/battery/BatteryMonitorFactory;

    invoke-direct {v0, p1}, Lorg/chromium/device/battery/BatteryMonitorFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/content/browser/ServiceRegistrar$BatteryMonitorImplementationFactory;->mFactory:Lorg/chromium/device/battery/BatteryMonitorFactory;

    .line 30
    return-void
.end method


# virtual methods
.method public bridge synthetic createImpl()Lorg/chromium/mojo/bindings/Interface;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lorg/chromium/content/browser/ServiceRegistrar$BatteryMonitorImplementationFactory;->createImpl()Lorg/chromium/mojom/device/BatteryMonitor;

    move-result-object v0

    return-object v0
.end method

.method public createImpl()Lorg/chromium/mojom/device/BatteryMonitor;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lorg/chromium/content/browser/ServiceRegistrar$BatteryMonitorImplementationFactory;->mFactory:Lorg/chromium/device/battery/BatteryMonitorFactory;

    invoke-virtual {v0}, Lorg/chromium/device/battery/BatteryMonitorFactory;->createMonitor()Lorg/chromium/mojom/device/BatteryMonitor;

    move-result-object v0

    return-object v0
.end method
