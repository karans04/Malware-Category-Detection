.class final Lorg/chromium/device/usb/ChromeUsbInterface;
.super Ljava/lang/Object;
.source "ChromeUsbInterface.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "device"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Usb"


# instance fields
.field final mInterface:Landroid/hardware/usb/UsbInterface;


# direct methods
.method private constructor <init>(Landroid/hardware/usb/UsbInterface;)V
    .locals 2
    .param p1, "iface"    # Landroid/hardware/usb/UsbInterface;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/chromium/device/usb/ChromeUsbInterface;->mInterface:Landroid/hardware/usb/UsbInterface;

    .line 28
    const-string v0, "Usb"

    const-string v1, "ChromeUsbInterface created."

    invoke-static {v0, v1}, Lorg/chromium/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method private static create(Landroid/hardware/usb/UsbInterface;)Lorg/chromium/device/usb/ChromeUsbInterface;
    .locals 1
    .param p0, "iface"    # Landroid/hardware/usb/UsbInterface;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 33
    new-instance v0, Lorg/chromium/device/usb/ChromeUsbInterface;

    invoke-direct {v0, p0}, Lorg/chromium/device/usb/ChromeUsbInterface;-><init>(Landroid/hardware/usb/UsbInterface;)V

    return-object v0
.end method

.method private getAlternateSetting()I
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lorg/chromium/device/usb/ChromeUsbInterface;->mInterface:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbInterface;->getAlternateSetting()I

    move-result v0

    return v0
.end method

.method private getEndpoints()[Landroid/hardware/usb/UsbEndpoint;
    .locals 4
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 63
    iget-object v3, p0, Lorg/chromium/device/usb/ChromeUsbInterface;->mInterface:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v0

    .line 64
    .local v0, "count":I
    new-array v1, v0, [Landroid/hardware/usb/UsbEndpoint;

    .line 65
    .local v1, "endpoints":[Landroid/hardware/usb/UsbEndpoint;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 66
    iget-object v3, p0, Lorg/chromium/device/usb/ChromeUsbInterface;->mInterface:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v3, v2}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v3

    aput-object v3, v1, v2

    .line 65
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 68
    :cond_0
    return-object v1
.end method

.method private getInterfaceClass()I
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lorg/chromium/device/usb/ChromeUsbInterface;->mInterface:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v0

    return v0
.end method

.method private getInterfaceNumber()I
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lorg/chromium/device/usb/ChromeUsbInterface;->mInterface:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbInterface;->getId()I

    move-result v0

    return v0
.end method

.method private getInterfaceProtocol()I
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lorg/chromium/device/usb/ChromeUsbInterface;->mInterface:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result v0

    return v0
.end method

.method private getInterfaceSubclass()I
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lorg/chromium/device/usb/ChromeUsbInterface;->mInterface:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result v0

    return v0
.end method
