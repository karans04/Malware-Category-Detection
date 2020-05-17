.class final Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerCancelParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "VibrationManager_Internal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojom/device/VibrationManager_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "VibrationManagerCancelParams"
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final STRUCT_SIZE:I = 0x8

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 459
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/mojo/bindings/DataHeader;

    new-instance v1, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v2, 0x8

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    aput-object v1, v0, v3

    sput-object v0, Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerCancelParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    .line 460
    sget-object v0, Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerCancelParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerCancelParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 471
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerCancelParams;-><init>(I)V

    .line 472
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .param p1, "version"    # I

    .prologue
    .line 466
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 468
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerCancelParams;
    .locals 3
    .param p0, "decoder0"    # Lorg/chromium/mojo/bindings/Decoder;

    .prologue
    .line 480
    if-nez p0, :cond_0

    .line 481
    const/4 v1, 0x0

    .line 486
    :goto_0
    return-object v1

    .line 483
    :cond_0
    sget-object v2, Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerCancelParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    .line 484
    .local v0, "mainDataHeader":Lorg/chromium/mojo/bindings/DataHeader;
    new-instance v1, Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerCancelParams;

    iget v2, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-direct {v1, v2}, Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerCancelParams;-><init>(I)V

    .line 486
    .local v1, "result":Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerCancelParams;
    goto :goto_0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerCancelParams;
    .locals 1
    .param p0, "message"    # Lorg/chromium/mojo/bindings/Message;

    .prologue
    .line 475
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerCancelParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerCancelParams;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 1
    .param p1, "encoder"    # Lorg/chromium/mojo/bindings/Encoder;

    .prologue
    .line 493
    sget-object v0, Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerCancelParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    .line 496
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 503
    if-ne p1, p0, :cond_1

    .line 510
    :cond_0
    :goto_0
    return v0

    .line 505
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 506
    goto :goto_0

    .line 507
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 508
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 518
    const/16 v0, 0x1f

    .line 519
    .local v0, "prime":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 521
    .local v1, "result":I
    return v1
.end method
