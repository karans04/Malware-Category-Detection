.class Lorg/chromium/media/AudioManagerAndroid$4;
.super Landroid/database/ContentObserver;
.source "AudioManagerAndroid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/media/AudioManagerAndroid;->startObservingVolumeChanges()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/media/AudioManagerAndroid;


# direct methods
.method constructor <init>(Lorg/chromium/media/AudioManagerAndroid;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 1165
    iput-object p1, p0, Lorg/chromium/media/AudioManagerAndroid$4;->this$0:Lorg/chromium/media/AudioManagerAndroid;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1170
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 1186
    iget-object v2, p0, Lorg/chromium/media/AudioManagerAndroid$4;->this$0:Lorg/chromium/media/AudioManagerAndroid;

    invoke-static {v2}, Lorg/chromium/media/AudioManagerAndroid;->access$900(Lorg/chromium/media/AudioManagerAndroid;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 1188
    .local v0, "volume":I
    iget-object v2, p0, Lorg/chromium/media/AudioManagerAndroid$4;->this$0:Lorg/chromium/media/AudioManagerAndroid;

    iget-object v3, p0, Lorg/chromium/media/AudioManagerAndroid$4;->this$0:Lorg/chromium/media/AudioManagerAndroid;

    invoke-static {v3}, Lorg/chromium/media/AudioManagerAndroid;->access$1000(Lorg/chromium/media/AudioManagerAndroid;)J

    move-result-wide v4

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v2, v4, v5, v1}, Lorg/chromium/media/AudioManagerAndroid;->access$1100(Lorg/chromium/media/AudioManagerAndroid;JZ)V

    .line 1189
    return-void
.end method
