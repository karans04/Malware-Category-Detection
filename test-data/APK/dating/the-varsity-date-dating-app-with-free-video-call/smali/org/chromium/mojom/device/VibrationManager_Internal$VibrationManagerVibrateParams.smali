.class final Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerVibrateParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "VibrationManager_Internal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojom/device/VibrationManager_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "VibrationManagerVibrateParams"
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final STRUCT_SIZE:I = 0x10

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public milliseconds:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 198
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/mojo/bindings/DataHeader;

    new-instance v1, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v2, 0x10

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    aput-object v1, v0, v3

    sput-object v0, Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerVibrateParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    .line 199
    sget-object v0, Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerVibrateParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerVibrateParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerVibrateParams;-><init>(I)V

    .line 218
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .param p1, "version"    # I

    .prologue
    .line 210
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 214
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerVibrateParams;
    .locals 4
    .param p0, "decoder0"    # Lorg/chromium/mojo/bindings/Decoder;

    .prologue
    .line 226
    if-nez p0, :cond_1

    .line 227
    const/4 v1, 0x0

    .line 256
    :cond_0
    :goto_0
    return-object v1

    .line 229
    :cond_1
    sget-object v2, Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerVibrateParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    .line 230
    .local v0, "mainDataHeader":Lorg/chromium/mojo/bindings/DataHeader;
    new-instance v1, Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerVibrateParams;

    iget v2, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-direct {v1, v2}, Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerVibrateParams;-><init>(I)V

    .line 233
    .local v1, "result":Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerVibrateParams;
    iget v2, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_0

    .line 236
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerVibrateParams;->milliseconds:J

    goto :goto_0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerVibrateParams;
    .locals 1
    .param p0, "message"    # Lorg/chromium/mojo/bindings/Message;

    .prologue
    .line 221
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerVibrateParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerVibrateParams;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 4
    .param p1, "encoder"    # Lorg/chromium/mojo/bindings/Encoder;

    .prologue
    .line 263
    sget-object v1, Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerVibrateParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v1}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    .line 269
    .local v0, "encoder0":Lorg/chromium/mojo/bindings/Encoder;
    iget-wide v2, p0, Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerVibrateParams;->milliseconds:J

    const/16 v1, 0x8

    invoke-virtual {v0, v2, v3, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    .line 287
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 294
    if-ne p1, p0, :cond_1

    .line 307
    :cond_0
    :goto_0
    return v1

    .line 296
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 297
    goto :goto_0

    .line 298
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 299
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 301
    check-cast v0, Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerVibrateParams;

    .line 303
    .local v0, "other":Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerVibrateParams;
    iget-wide v4, p0, Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerVibrateParams;->milliseconds:J

    iget-wide v6, v0, Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerVibrateParams;->milliseconds:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    move v1, v2

    .line 304
    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 315
    const/16 v0, 0x1f

    .line 316
    .local v0, "prime":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 318
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Lorg/chromium/mojom/device/VibrationManager_Internal$VibrationManagerVibrateParams;->milliseconds:J

    invoke-static {v4, v5}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(J)I

    move-result v3

    add-int v1, v2, v3

    .line 320
    return v1
.end method
