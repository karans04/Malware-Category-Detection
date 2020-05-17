.class Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid$1;
.super Landroid/content/BroadcastReceiver;
.source "UsbMidiDeviceFactoryAndroid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;-><init>(Landroid/content/Context;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;


# direct methods
.method constructor <init>(Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid$1;->this$0:Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 76
    const-string v1, "device"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 77
    .local v0, "extra":Landroid/os/Parcelable;
    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    iget-object v2, p0, Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid$1;->this$0:Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;

    move-object v1, v0

    check-cast v1, Landroid/hardware/usb/UsbDevice;

    invoke-static {v2, p1, v1}, Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;->access$000(Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;Landroid/content/Context;Landroid/hardware/usb/UsbDevice;)V

    .line 80
    :cond_0
    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    iget-object v1, p0, Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid$1;->this$0:Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .end local v0    # "extra":Landroid/os/Parcelable;
    invoke-static {v1, v0}, Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;->access$100(Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;Landroid/hardware/usb/UsbDevice;)V

    .line 83
    :cond_1
    const-string v1, "org.chromium.media.USB_PERMISSION"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 84
    iget-object v1, p0, Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid$1;->this$0:Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;

    invoke-static {v1, p1, p2}, Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;->access$200(Lorg/chromium/media/midi/UsbMidiDeviceFactoryAndroid;Landroid/content/Context;Landroid/content/Intent;)V

    .line 86
    :cond_2
    return-void
.end method
