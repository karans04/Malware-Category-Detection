.class Lorg/chromium/content/browser/ServiceRegistrar$VibrationManagerImplementationFactory;
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
    name = "VibrationManagerImplementationFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/chromium/content/browser/ServiceRegistry$ImplementationFactory",
        "<",
        "Lorg/chromium/mojom/device/VibrationManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final mApplicationContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/chromium/content/browser/ServiceRegistrar$VibrationManagerImplementationFactory;->mApplicationContext:Landroid/content/Context;

    .line 44
    return-void
.end method


# virtual methods
.method public bridge synthetic createImpl()Lorg/chromium/mojo/bindings/Interface;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lorg/chromium/content/browser/ServiceRegistrar$VibrationManagerImplementationFactory;->createImpl()Lorg/chromium/mojom/device/VibrationManager;

    move-result-object v0

    return-object v0
.end method

.method public createImpl()Lorg/chromium/mojom/device/VibrationManager;
    .locals 2

    .prologue
    .line 48
    new-instance v0, Lorg/chromium/device/vibration/VibrationManagerImpl;

    iget-object v1, p0, Lorg/chromium/content/browser/ServiceRegistrar$VibrationManagerImplementationFactory;->mApplicationContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/chromium/device/vibration/VibrationManagerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
