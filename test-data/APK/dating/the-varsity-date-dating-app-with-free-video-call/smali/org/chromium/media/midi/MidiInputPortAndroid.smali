.class Lorg/chromium/media/midi/MidiInputPortAndroid;
.super Ljava/lang/Object;
.source "MidiInputPortAndroid.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "media::midi"
.end annotation


# instance fields
.field private final mDevice:Landroid/media/midi/MidiDevice;

.field private final mIndex:I

.field private mNativeReceiverPointer:J

.field private mPort:Landroid/media/midi/MidiOutputPort;


# direct methods
.method constructor <init>(Landroid/media/midi/MidiDevice;I)V
    .locals 0
    .param p1, "device"    # Landroid/media/midi/MidiDevice;
    .param p2, "index"    # I

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/chromium/media/midi/MidiInputPortAndroid;->mDevice:Landroid/media/midi/MidiDevice;

    .line 50
    iput p2, p0, Lorg/chromium/media/midi/MidiInputPortAndroid;->mIndex:I

    .line 51
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/media/midi/MidiInputPortAndroid;)J
    .locals 2
    .param p0, "x0"    # Lorg/chromium/media/midi/MidiInputPortAndroid;

    .prologue
    .line 25
    iget-wide v0, p0, Lorg/chromium/media/midi/MidiInputPortAndroid;->mNativeReceiverPointer:J

    return-wide v0
.end method

.method static synthetic access$100(J[BIIJ)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # [B
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # J

    .prologue
    .line 25
    invoke-static/range {p0 .. p6}, Lorg/chromium/media/midi/MidiInputPortAndroid;->nativeOnData(J[BIIJ)V

    return-void
.end method

.method private static native nativeOnData(J[BIIJ)V
.end method


# virtual methods
.method close()V
    .locals 2
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lorg/chromium/media/midi/MidiInputPortAndroid;->mPort:Landroid/media/midi/MidiOutputPort;

    if-nez v0, :cond_0

    .line 93
    :goto_0
    return-void

    .line 87
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/chromium/media/midi/MidiInputPortAndroid;->mPort:Landroid/media/midi/MidiOutputPort;

    invoke-virtual {v0}, Landroid/media/midi/MidiOutputPort;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/media/midi/MidiInputPortAndroid;->mNativeReceiverPointer:J

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/media/midi/MidiInputPortAndroid;->mPort:Landroid/media/midi/MidiOutputPort;

    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method open(J)Z
    .locals 3
    .param p1, "nativeReceiverPointer"    # J
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 61
    iget-object v1, p0, Lorg/chromium/media/midi/MidiInputPortAndroid;->mPort:Landroid/media/midi/MidiOutputPort;

    if-eqz v1, :cond_0

    .line 75
    :goto_0
    return v0

    .line 64
    :cond_0
    iget-object v1, p0, Lorg/chromium/media/midi/MidiInputPortAndroid;->mDevice:Landroid/media/midi/MidiDevice;

    iget v2, p0, Lorg/chromium/media/midi/MidiInputPortAndroid;->mIndex:I

    invoke-virtual {v1, v2}, Landroid/media/midi/MidiDevice;->openOutputPort(I)Landroid/media/midi/MidiOutputPort;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/media/midi/MidiInputPortAndroid;->mPort:Landroid/media/midi/MidiOutputPort;

    .line 65
    iget-object v1, p0, Lorg/chromium/media/midi/MidiInputPortAndroid;->mPort:Landroid/media/midi/MidiOutputPort;

    if-nez v1, :cond_1

    .line 66
    const/4 v0, 0x0

    goto :goto_0

    .line 68
    :cond_1
    iput-wide p1, p0, Lorg/chromium/media/midi/MidiInputPortAndroid;->mNativeReceiverPointer:J

    .line 69
    iget-object v1, p0, Lorg/chromium/media/midi/MidiInputPortAndroid;->mPort:Landroid/media/midi/MidiOutputPort;

    new-instance v2, Lorg/chromium/media/midi/MidiInputPortAndroid$1;

    invoke-direct {v2, p0}, Lorg/chromium/media/midi/MidiInputPortAndroid$1;-><init>(Lorg/chromium/media/midi/MidiInputPortAndroid;)V

    invoke-virtual {v1, v2}, Landroid/media/midi/MidiOutputPort;->connect(Landroid/media/midi/MidiReceiver;)V

    goto :goto_0
.end method
