.class Lorg/chromium/media/midi/MidiInputPortAndroid$1;
.super Landroid/media/midi/MidiReceiver;
.source "MidiInputPortAndroid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/media/midi/MidiInputPortAndroid;->open(J)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/media/midi/MidiInputPortAndroid;


# direct methods
.method constructor <init>(Lorg/chromium/media/midi/MidiInputPortAndroid;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lorg/chromium/media/midi/MidiInputPortAndroid$1;->this$0:Lorg/chromium/media/midi/MidiInputPortAndroid;

    invoke-direct {p0}, Landroid/media/midi/MidiReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onSend([BIIJ)V
    .locals 8
    .param p1, "bs"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "timestamp"    # J

    .prologue
    .line 72
    iget-object v0, p0, Lorg/chromium/media/midi/MidiInputPortAndroid$1;->this$0:Lorg/chromium/media/midi/MidiInputPortAndroid;

    invoke-static {v0}, Lorg/chromium/media/midi/MidiInputPortAndroid;->access$000(Lorg/chromium/media/midi/MidiInputPortAndroid;)J

    move-result-wide v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-static/range {v0 .. v6}, Lorg/chromium/media/midi/MidiInputPortAndroid;->access$100(J[BIIJ)V

    .line 73
    return-void
.end method
