.class Lorg/chromium/media/midi/UsbMidiDeviceAndroid$1;
.super Ljava/lang/Thread;
.source "UsbMidiDeviceAndroid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/media/midi/UsbMidiDeviceAndroid;->startListen(Landroid/hardware/usb/UsbDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/media/midi/UsbMidiDeviceAndroid;

.field final synthetic val$bufferForEndpoints:Ljava/util/Map;


# direct methods
.method constructor <init>(Lorg/chromium/media/midi/UsbMidiDeviceAndroid;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lorg/chromium/media/midi/UsbMidiDeviceAndroid$1;->this$0:Lorg/chromium/media/midi/UsbMidiDeviceAndroid;

    iput-object p2, p0, Lorg/chromium/media/midi/UsbMidiDeviceAndroid$1;->val$bufferForEndpoints:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 158
    :cond_0
    :goto_0
    iget-object v5, p0, Lorg/chromium/media/midi/UsbMidiDeviceAndroid$1;->this$0:Lorg/chromium/media/midi/UsbMidiDeviceAndroid;

    invoke-static {v5}, Lorg/chromium/media/midi/UsbMidiDeviceAndroid;->access$000(Lorg/chromium/media/midi/UsbMidiDeviceAndroid;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/usb/UsbDeviceConnection;->requestWait()Landroid/hardware/usb/UsbRequest;

    move-result-object v4

    .line 159
    .local v4, "request":Landroid/hardware/usb/UsbRequest;
    if-nez v4, :cond_1

    .line 178
    return-void

    .line 163
    :cond_1
    invoke-virtual {v4}, Landroid/hardware/usb/UsbRequest;->getEndpoint()Landroid/hardware/usb/UsbEndpoint;

    move-result-object v2

    .line 164
    .local v2, "endpoint":Landroid/hardware/usb/UsbEndpoint;
    invoke-virtual {v2}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v5

    const/16 v6, 0x80

    if-ne v5, v6, :cond_0

    .line 167
    iget-object v5, p0, Lorg/chromium/media/midi/UsbMidiDeviceAndroid$1;->val$bufferForEndpoints:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 168
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-static {v1}, Lorg/chromium/media/midi/UsbMidiDeviceAndroid;->access$100(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 169
    .local v3, "length":I
    if-lez v3, :cond_2

    .line 170
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 171
    new-array v0, v3, [B

    .line 172
    .local v0, "bs":[B
    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 173
    iget-object v5, p0, Lorg/chromium/media/midi/UsbMidiDeviceAndroid$1;->this$0:Lorg/chromium/media/midi/UsbMidiDeviceAndroid;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbEndpoint;->getEndpointNumber()I

    move-result v6

    invoke-static {v5, v6, v0}, Lorg/chromium/media/midi/UsbMidiDeviceAndroid;->access$200(Lorg/chromium/media/midi/UsbMidiDeviceAndroid;I[B)V

    .line 175
    .end local v0    # "bs":[B
    :cond_2
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 176
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    invoke-virtual {v4, v1, v5}, Landroid/hardware/usb/UsbRequest;->queue(Ljava/nio/ByteBuffer;I)Z

    goto :goto_0
.end method
