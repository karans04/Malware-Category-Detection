.class Lorg/chromium/content/browser/input/JoystickZoomProvider$1;
.super Ljava/lang/Object;
.source "JoystickZoomProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/input/JoystickZoomProvider;->onMotion(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/input/JoystickZoomProvider;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/input/JoystickZoomProvider;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lorg/chromium/content/browser/input/JoystickZoomProvider$1;->this$0:Lorg/chromium/content/browser/input/JoystickZoomProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/chromium/content/browser/input/JoystickZoomProvider$1;->this$0:Lorg/chromium/content/browser/input/JoystickZoomProvider;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/JoystickZoomProvider;->animateZoom()V

    .line 77
    return-void
.end method
