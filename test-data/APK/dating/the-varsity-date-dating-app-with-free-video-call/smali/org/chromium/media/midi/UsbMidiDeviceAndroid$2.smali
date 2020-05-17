.class Lorg/chromium/media/midi/UsbMidiDeviceAndroid$2;
.super Ljava/lang/Object;
.source "UsbMidiDeviceAndroid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/media/midi/UsbMidiDeviceAndroid;->postOnDataEvent(I[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/media/midi/UsbMidiDeviceAndroid;

.field final synthetic val$bs:[B

.field final synthetic val$endpointNumber:I


# direct methods
.method constructor <init>(Lorg/chromium/media/midi/UsbMidiDeviceAndroid;I[B)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lorg/chromium/media/midi/UsbMidiDeviceAndroid$2;->this$0:Lorg/chromium/media/midi/UsbMidiDeviceAndroid;

    iput p2, p0, Lorg/chromium/media/midi/UsbMidiDeviceAndroid$2;->val$endpointNumber:I

    iput-object p3, p0, Lorg/chromium/media/midi/UsbMidiDeviceAndroid$2;->val$bs:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 189
    iget-object v0, p0, Lorg/chromium/media/midi/UsbMidiDeviceAndroid$2;->this$0:Lorg/chromium/media/midi/UsbMidiDeviceAndroid;

    invoke-static {v0}, Lorg/chromium/media/midi/UsbMidiDeviceAndroid;->access$300(Lorg/chromium/media/midi/UsbMidiDeviceAndroid;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lorg/chromium/media/midi/UsbMidiDeviceAndroid$2;->this$0:Lorg/chromium/media/midi/UsbMidiDeviceAndroid;

    invoke-static {v0}, Lorg/chromium/media/midi/UsbMidiDeviceAndroid;->access$400(Lorg/chromium/media/midi/UsbMidiDeviceAndroid;)J

    move-result-wide v0

    iget v2, p0, Lorg/chromium/media/midi/UsbMidiDeviceAndroid$2;->val$endpointNumber:I

    iget-object v3, p0, Lorg/chromium/media/midi/UsbMidiDeviceAndroid$2;->val$bs:[B

    invoke-static {v0, v1, v2, v3}, Lorg/chromium/media/midi/UsbMidiDeviceAndroid;->access$500(JI[B)V

    goto :goto_0
.end method
