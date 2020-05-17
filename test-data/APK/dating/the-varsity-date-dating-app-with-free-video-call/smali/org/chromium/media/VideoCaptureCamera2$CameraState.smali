.class final enum Lorg/chromium/media/VideoCaptureCamera2$CameraState;
.super Ljava/lang/Enum;
.source "VideoCaptureCamera2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/VideoCaptureCamera2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CameraState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/chromium/media/VideoCaptureCamera2$CameraState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/chromium/media/VideoCaptureCamera2$CameraState;

.field public static final enum CONFIGURING:Lorg/chromium/media/VideoCaptureCamera2$CameraState;

.field public static final enum OPENING:Lorg/chromium/media/VideoCaptureCamera2$CameraState;

.field public static final enum STARTED:Lorg/chromium/media/VideoCaptureCamera2$CameraState;

.field public static final enum STOPPED:Lorg/chromium/media/VideoCaptureCamera2$CameraState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 223
    new-instance v0, Lorg/chromium/media/VideoCaptureCamera2$CameraState;

    const-string v1, "OPENING"

    invoke-direct {v0, v1, v2}, Lorg/chromium/media/VideoCaptureCamera2$CameraState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/media/VideoCaptureCamera2$CameraState;->OPENING:Lorg/chromium/media/VideoCaptureCamera2$CameraState;

    new-instance v0, Lorg/chromium/media/VideoCaptureCamera2$CameraState;

    const-string v1, "CONFIGURING"

    invoke-direct {v0, v1, v3}, Lorg/chromium/media/VideoCaptureCamera2$CameraState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/media/VideoCaptureCamera2$CameraState;->CONFIGURING:Lorg/chromium/media/VideoCaptureCamera2$CameraState;

    new-instance v0, Lorg/chromium/media/VideoCaptureCamera2$CameraState;

    const-string v1, "STARTED"

    invoke-direct {v0, v1, v4}, Lorg/chromium/media/VideoCaptureCamera2$CameraState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/media/VideoCaptureCamera2$CameraState;->STARTED:Lorg/chromium/media/VideoCaptureCamera2$CameraState;

    new-instance v0, Lorg/chromium/media/VideoCaptureCamera2$CameraState;

    const-string v1, "STOPPED"

    invoke-direct {v0, v1, v5}, Lorg/chromium/media/VideoCaptureCamera2$CameraState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/media/VideoCaptureCamera2$CameraState;->STOPPED:Lorg/chromium/media/VideoCaptureCamera2$CameraState;

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/chromium/media/VideoCaptureCamera2$CameraState;

    sget-object v1, Lorg/chromium/media/VideoCaptureCamera2$CameraState;->OPENING:Lorg/chromium/media/VideoCaptureCamera2$CameraState;

    aput-object v1, v0, v2

    sget-object v1, Lorg/chromium/media/VideoCaptureCamera2$CameraState;->CONFIGURING:Lorg/chromium/media/VideoCaptureCamera2$CameraState;

    aput-object v1, v0, v3

    sget-object v1, Lorg/chromium/media/VideoCaptureCamera2$CameraState;->STARTED:Lorg/chromium/media/VideoCaptureCamera2$CameraState;

    aput-object v1, v0, v4

    sget-object v1, Lorg/chromium/media/VideoCaptureCamera2$CameraState;->STOPPED:Lorg/chromium/media/VideoCaptureCamera2$CameraState;

    aput-object v1, v0, v5

    sput-object v0, Lorg/chromium/media/VideoCaptureCamera2$CameraState;->$VALUES:[Lorg/chromium/media/VideoCaptureCamera2$CameraState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 223
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/chromium/media/VideoCaptureCamera2$CameraState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 223
    const-class v0, Lorg/chromium/media/VideoCaptureCamera2$CameraState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/chromium/media/VideoCaptureCamera2$CameraState;

    return-object v0
.end method

.method public static values()[Lorg/chromium/media/VideoCaptureCamera2$CameraState;
    .locals 1

    .prologue
    .line 223
    sget-object v0, Lorg/chromium/media/VideoCaptureCamera2$CameraState;->$VALUES:[Lorg/chromium/media/VideoCaptureCamera2$CameraState;

    invoke-virtual {v0}, [Lorg/chromium/media/VideoCaptureCamera2$CameraState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/media/VideoCaptureCamera2$CameraState;

    return-object v0
.end method
