.class Lorg/chromium/media/midi/UsbMidiDeviceAndroid;
.super Ljava/lang/Object;
.source "UsbMidiDeviceAndroid.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "media::midi"
.end annotation


# static fields
.field static final MIDI_SUBCLASS:I = 0x3

.field static final REQUEST_GET_DESCRIPTOR:I = 0x6

.field static final STRING_DESCRIPTOR_TYPE:I = 0x3


# instance fields
.field private final mConnection:Landroid/hardware/usb/UsbDeviceConnection;

.field private final mEndpointMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/hardware/usb/UsbEndpoint;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mHasInputThread:Z

.field private mIsClosed:Z

.field private mNativePointer:J

.field private final mRequestMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/hardware/usb/UsbEndpoint;",
            "Landroid/hardware/usb/UsbRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mUsbDevice:Landroid/hardware/usb/UsbDevice;


# direct methods
.method constructor <init>(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbDevice;)V
    .locals 7
    .param p1, "manager"    # Landroid/hardware/usb/UsbManager;
    .param p2, "device"    # Landroid/hardware/usb/UsbDevice;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-virtual {p1, p2}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v4

    iput-object v4, p0, Lorg/chromium/media/midi/UsbMidiDeviceAndroid;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 95
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, Lorg/chromium/media/midi/UsbMidiDeviceAndroid;->mEndpointMap:Landroid/util/SparseArray;

    .line 96
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lorg/chromium/media/midi/UsbMidiDeviceAndroid;->mRequestMap:Ljava/util/Map;

    .line 97
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lorg/chromium/media/midi/UsbMidiDeviceAndroid;->mHandler:Landroid/os/Handler;

    .line 98
    iput-object p2, p0, Lorg/chromium/media/midi/UsbMidiDeviceAndroid;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    .line 99
    iput-boolean v5, p0, Lorg/chromium/media/midi/UsbMidiDeviceAndroid;->mIsClosed:Z

    .line 100
    iput-boolean v5, p0, Lorg/chromium/media/midi/UsbMidiDeviceAndroid;->mHasInputThread:Z

    .line 101
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lorg/chromium/media/midi/UsbMidiDeviceAndroid;->mNativePointer:J

    .line 103
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 104
    invoke-virtual {p2, v1}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v2

    .line 105
    .local v2, "iface":Landroid/hardware/usb/UsbInterface;
    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v4

    if-ne v4, v6, :cond_0

    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    .line 103
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 109
    :cond_1
    iget-object v4, p0, Lorg/chromium/media/midi/UsbMidiDeviceAndroid;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v4, v2, v6}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    .line 110
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 111
    invoke-virtual {v2, v3}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v0

    .line 112
    .local v0, "endpoint":Landroid/hardware/usb/UsbEndpoint;
    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v4

    if-nez v4, :cond_2

    .line 113
    iget-object v4, p0, Lorg/chromium/media/midi/UsbMidiDeviceAndroid;->mEndpointMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getEndpointNumber()I

    move-result v5

    invoke-virtual {v4, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 110
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 122
    .end local v0    # "endpoint":Landroid/hardware/usb/UsbEndpoint;
    .end local v2    # "iface":Landroid/hardware/usb/UsbInterface;
    .end local v3    # "j":I
    :cond_3
    invoke-direct {p0, p2}, Lorg/chromium/media/midi/UsbMidiDeviceAndroid;->startListen(Landroid/hardware/usb/UsbDevice;)V

    .line 123
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/media/midi/UsbMidiDeviceAndroid;)Landroid/hardware/usb/UsbDeviceConnection;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/media/midi/UsbMidiDeviceAndroid;

    .prologue
    .line 32
    iget-object v0, p0, Lorg/chromium/media/midi/UsbMidiDeviceAndroid;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    return-object v0
.end method

.method static synthetic access$100(Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p0, "x0"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 32
    invoke-static {p0}, Lorg/chromium/media/midi/UsbMidiDeviceAndroid;->getInputDataLength(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lorg/chromium/media/midi/UsbMidiDeviceAndroid;I[B)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/media/midi/UsbMidiDeviceAndroid;
    .param p1, "x1"    # I
    .param p2, "x2"    # [B

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lorg/chromium/media/midi/UsbMidiDeviceAndroid;->postOnDataEvent(I[B)V

    return-void
.end method

.method static synthetic access$300(Lorg/chromium/media/midi/UsbMidiDeviceAndroid;)Z
    .locals 1
    .param p0, "x0"    # Lorg/chromium/media/midi/UsbMidiDeviceAndroid;

    .prologue
    .line 32
    iget-boolean v0, p0, Lorg/chromium/media/midi/UsbMidiDeviceAndroid;->mIsClosed:Z

    return v0
.end method

.method static synthetic access$400(Lorg/chromium/media/midi/UsbMidiDeviceAndroid;)J
    .locals 2
    .param p0, "x0"    # Lorg/chromium/media/midi/UsbMidiDeviceAndroid;

    .prologue
    .line 32
    iget-wide v0, p0, Lorg/chromium/media/midi/UsbMidiDeviceAndroid;->mNativePointer:J

    return-wide v0
.end method

.method static synthetic access$500(JI[B)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # I
    .param p3, "x2"    # [B

    .prologue
    .line 32
    invoke-static {p0, p1, p2, p3}, Lorg/chromium/media/midi/UsbMidiDeviceAndroid;->nativeOnData(JI[B)V

    return-void
.end method

.method private static getInputDataLength(Ljava/nio/ByteBuffer;)I
    .locals 3
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 313
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 315
    .local v1, "position":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 317
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    if-nez v2, :cond_0

    .line 321
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 315
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_1
    move v0, v1

    .line 321
    goto :goto_1
.end method

.method private static native nativeOnData(JI[B)V
.end method

.method private postOnDataEvent(I[B)V
    .locals 2
    .param p1, "endpointNumber"    # I
    .param p2, "bs"    # [B

    .prologue
    .line 186
    iget-object v0, p0, Lorg/chromium/media/midi/UsbMidiDeviceAndroid;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/chromium/media/midi/UsbMidiDeviceAndroid$2;

    invoke-direct {v1, p0, p1, p2}, Lorg/chromium/media/midi/UsbMidiDeviceAndroid$2;-><init>(Lorg/chromium/media/midi/UsbMidiDeviceAndroid;I[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 195
    return-void
.end method

.method private shouldUseBulkTransfer()Z
    .locals 1

    .prologue
    .line 256
    iget-boolean v0, p0, Lorg/chromium/media/midi/UsbMidiDeviceAndroid;->mHasInputThread:Z

    return v0
.end method

.method private startListen(Landroid/hardware/usb/UsbDevice;)V
    .locals 10
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    .prologue
    const/4 v9, 0x1

    .line 129
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 132
    .local v1, "bufferForEndpoints":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/usb/UsbEndpoint;Ljava/nio/ByteBuffer;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v7

    if-ge v3, v7, :cond_3

    .line 133
    invoke-virtual {p1, v3}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v4

    .line 134
    .local v4, "iface":Landroid/hardware/usb/UsbInterface;
    invoke-virtual {v4}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v7

    if-ne v7, v9, :cond_0

    invoke-virtual {v4}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_1

    .line 132
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 138
    :cond_1
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    invoke-virtual {v4}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v7

    if-ge v5, v7, :cond_0

    .line 139
    invoke-virtual {v4, v5}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v2

    .line 140
    .local v2, "endpoint":Landroid/hardware/usb/UsbEndpoint;
    invoke-virtual {v2}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v7

    const/16 v8, 0x80

    if-ne v7, v8, :cond_2

    .line 141
    invoke-virtual {v2}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    move-result v7

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 142
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    new-instance v6, Landroid/hardware/usb/UsbRequest;

    invoke-direct {v6}, Landroid/hardware/usb/UsbRequest;-><init>()V

    .line 143
    .local v6, "request":Landroid/hardware/usb/UsbRequest;
    iget-object v7, p0, Lorg/chromium/media/midi/UsbMidiDeviceAndroid;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v6, v7, v2}, Landroid/hardware/usb/UsbRequest;->initialize(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;)Z

    .line 144
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    invoke-virtual {v6, v0, v7}, Landroid/hardware/usb/UsbRequest;->queue(Ljava/nio/ByteBuffer;I)Z

    .line 145
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v6    # "request":Landroid/hardware/usb/UsbRequest;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 149
    .end local v2    # "endpoint":Landroid/hardware/usb/UsbEndpoint;
    .end local v4    # "iface":Landroid/hardware/usb/UsbInterface;
    .end local v5    # "j":I
    :cond_3
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 180
    :goto_2
    return-void

    .line 152
    :cond_4
    iput-boolean v9, p0, Lorg/chromium/media/midi/UsbMidiDeviceAndroid;->mHasInputThread:Z

    .line 154
    new-instance v7, Lorg/chromium/media/midi/UsbMidiDeviceAndroid$1;

    invoke-direct {v7, p0, v1}, Lorg/chromium/media/midi/UsbMidiDeviceAndroid$1;-><init>(Lorg/chromium/media/midi/UsbMidiDeviceAndroid;Ljava/util/Map;)V

    invoke-virtual {v7}, Lorg/chromium/media/midi/UsbMidiDeviceAndroid$1;->start()V

    goto :goto_2
.end method


# virtual methods
.method close()V
    .locals 4
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 297
    iget-object v2, p0, Lorg/chromium/media/midi/UsbMidiDeviceAndroid;->mEndpointMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 298
    iget-object v2, p0, Lorg/chromium/media/midi/UsbMidiDeviceAndroid;->mRequestMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbRequest;

    .line 299
    .local v1, "request":Landroid/hardware/usb/UsbRequest;
    invoke-virtual {v1}, Landroid/hardware/usb/UsbRequest;->close()V

    goto :goto_0

    .line 301
    .end local v1    # "request":Landroid/hardware/usb/UsbRequest;
    :cond_0
    iget-object v2, p0, Lorg/chromium/media/midi/UsbMidiDeviceAndroid;->mRequestMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 302
    iget-object v2, p0, Lorg/chromium/media/midi/UsbMidiDeviceAndroid;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    .line 303
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/chromium/media/midi/UsbMidiDeviceAndroid;->mNativePointer:J

    .line 304
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/chromium/media/midi/UsbMidiDeviceAndroid;->mIsClosed:Z

    .line 305
    return-void
.end method

.method getDescriptors()[B
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 265
    iget-object v0, p0, Lorg/chromium/media/midi/UsbMidiDeviceAndroid;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-nez v0, :cond_0

    .line 266
    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 268
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/media/midi/UsbMidiDeviceAndroid;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->getRawDescriptors()[B

    move-result-object v0

    goto :goto_0
.end method

.method getStringDescriptor(I)[B
    .locals 9
    .param p1, "index"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 278
    iget-object v0, p0, Lorg/chromium/media/midi/UsbMidiDeviceAndroid;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-nez v0, :cond_0

    .line 279
    new-array v0, v4, [B

    .line 289
    :goto_0
    return-object v0

    .line 281
    :cond_0
    const/16 v0, 0xff

    new-array v5, v0, [B

    .line 282
    .local v5, "buffer":[B
    const/16 v1, 0x80

    .line 283
    .local v1, "type":I
    const/4 v2, 0x6

    .line 284
    .local v2, "request":I
    or-int/lit16 v3, p1, 0x300

    .line 285
    .local v3, "value":I
    iget-object v0, p0, Lorg/chromium/media/midi/UsbMidiDeviceAndroid;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    array-length v6, v5

    move v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v8

    .line 286
    .local v8, "read":I
    if-gez v8, :cond_1

    .line 287
    new-array v0, v4, [B

    goto :goto_0

    .line 289
    :cond_1
    invoke-static {v5, v8}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    goto :goto_0
.end method

.method getUsbDevice()Landroid/hardware/usb/UsbDevice;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lorg/chromium/media/midi/UsbMidiDeviceAndroid;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    return-object v0
.end method

.method isClosed()Z
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lorg/chromium/media/midi/UsbMidiDeviceAndroid;->mIsClosed:Z

    return v0
.end method

.method registerSelf(J)V
    .locals 1
    .param p1, "nativePointer"    # J
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 210
    iput-wide p1, p0, Lorg/chromium/media/midi/UsbMidiDeviceAndroid;->mNativePointer:J

    .line 211
    return-void
.end method

.method send(I[B)V
    .locals 6
    .param p1, "endpointNumber"    # I
    .param p2, "bs"    # [B
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 221
    iget-boolean v3, p0, Lorg/chromium/media/midi/UsbMidiDeviceAndroid;->mIsClosed:Z

    if-eqz v3, :cond_1

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    iget-object v3, p0, Lorg/chromium/media/midi/UsbMidiDeviceAndroid;->mEndpointMap:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbEndpoint;

    .line 225
    .local v0, "endpoint":Landroid/hardware/usb/UsbEndpoint;
    if-eqz v0, :cond_0

    .line 228
    invoke-direct {p0}, Lorg/chromium/media/midi/UsbMidiDeviceAndroid;->shouldUseBulkTransfer()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 238
    const/16 v2, 0x64

    .line 239
    .local v2, "timeout":I
    iget-object v3, p0, Lorg/chromium/media/midi/UsbMidiDeviceAndroid;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    array-length v4, p2

    const/16 v5, 0x64

    invoke-virtual {v3, v0, p2, v4, v5}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    goto :goto_0

    .line 241
    .end local v2    # "timeout":I
    :cond_2
    iget-object v3, p0, Lorg/chromium/media/midi/UsbMidiDeviceAndroid;->mRequestMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbRequest;

    .line 242
    .local v1, "request":Landroid/hardware/usb/UsbRequest;
    if-nez v1, :cond_3

    .line 243
    new-instance v1, Landroid/hardware/usb/UsbRequest;

    .end local v1    # "request":Landroid/hardware/usb/UsbRequest;
    invoke-direct {v1}, Landroid/hardware/usb/UsbRequest;-><init>()V

    .line 244
    .restart local v1    # "request":Landroid/hardware/usb/UsbRequest;
    iget-object v3, p0, Lorg/chromium/media/midi/UsbMidiDeviceAndroid;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v1, v3, v0}, Landroid/hardware/usb/UsbRequest;->initialize(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;)Z

    .line 245
    iget-object v3, p0, Lorg/chromium/media/midi/UsbMidiDeviceAndroid;->mRequestMap:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    :cond_3
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    array-length v4, p2

    invoke-virtual {v1, v3, v4}, Landroid/hardware/usb/UsbRequest;->queue(Ljava/nio/ByteBuffer;I)Z

    goto :goto_0
.end method
