.class Lorg/chromium/media/midi/MidiManagerAndroid$1;
.super Landroid/media/midi/MidiManager$DeviceCallback;
.source "MidiManagerAndroid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/media/midi/MidiManagerAndroid;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/media/midi/MidiManagerAndroid;


# direct methods
.method constructor <init>(Lorg/chromium/media/midi/MidiManagerAndroid;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lorg/chromium/media/midi/MidiManagerAndroid$1;->this$0:Lorg/chromium/media/midi/MidiManagerAndroid;

    invoke-direct {p0}, Landroid/media/midi/MidiManager$DeviceCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceAdded(Landroid/media/midi/MidiDeviceInfo;)V
    .locals 1
    .param p1, "device"    # Landroid/media/midi/MidiDeviceInfo;

    .prologue
    .line 86
    iget-object v0, p0, Lorg/chromium/media/midi/MidiManagerAndroid$1;->this$0:Lorg/chromium/media/midi/MidiManagerAndroid;

    invoke-static {v0, p1}, Lorg/chromium/media/midi/MidiManagerAndroid;->access$000(Lorg/chromium/media/midi/MidiManagerAndroid;Landroid/media/midi/MidiDeviceInfo;)V

    .line 87
    return-void
.end method

.method public onDeviceRemoved(Landroid/media/midi/MidiDeviceInfo;)V
    .locals 1
    .param p1, "device"    # Landroid/media/midi/MidiDeviceInfo;

    .prologue
    .line 91
    iget-object v0, p0, Lorg/chromium/media/midi/MidiManagerAndroid$1;->this$0:Lorg/chromium/media/midi/MidiManagerAndroid;

    invoke-static {v0, p1}, Lorg/chromium/media/midi/MidiManagerAndroid;->access$100(Lorg/chromium/media/midi/MidiManagerAndroid;Landroid/media/midi/MidiDeviceInfo;)V

    .line 92
    return-void
.end method
