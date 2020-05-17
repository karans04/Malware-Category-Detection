.class public final Lorg/chromium/mojom/device/BatteryStatus;
.super Lorg/chromium/mojo/bindings/Struct;
.source "BatteryStatus.java"


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final STRUCT_SIZE:I = 0x28

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public charging:Z

.field public chargingTime:D

.field public dischargingTime:D

.field public level:D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 21
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/mojo/bindings/DataHeader;

    new-instance v1, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v2, 0x28

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    aput-object v1, v0, v3

    sput-object v0, Lorg/chromium/mojom/device/BatteryStatus;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    .line 22
    sget-object v0, Lorg/chromium/mojom/device/BatteryStatus;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojom/device/BatteryStatus;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojom/device/BatteryStatus;-><init>(I)V

    .line 61
    return-void
.end method

.method private constructor <init>(I)V
    .locals 2
    .param p1, "version"    # I

    .prologue
    .line 39
    const/16 v0, 0x28

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/mojom/device/BatteryStatus;->charging:Z

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/mojom/device/BatteryStatus;->chargingTime:D

    .line 50
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    iput-wide v0, p0, Lorg/chromium/mojom/device/BatteryStatus;->dischargingTime:D

    .line 54
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lorg/chromium/mojom/device/BatteryStatus;->level:D

    .line 57
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/device/BatteryStatus;
    .locals 4
    .param p0, "decoder0"    # Lorg/chromium/mojo/bindings/Decoder;

    .prologue
    .line 69
    if-nez p0, :cond_1

    .line 70
    const/4 v1, 0x0

    .line 171
    :cond_0
    :goto_0
    return-object v1

    .line 72
    :cond_1
    sget-object v2, Lorg/chromium/mojom/device/BatteryStatus;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    .line 73
    .local v0, "mainDataHeader":Lorg/chromium/mojo/bindings/DataHeader;
    new-instance v1, Lorg/chromium/mojom/device/BatteryStatus;

    iget v2, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-direct {v1, v2}, Lorg/chromium/mojom/device/BatteryStatus;-><init>(I)V

    .line 76
    .local v1, "result":Lorg/chromium/mojom/device/BatteryStatus;
    iget v2, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_2

    .line 79
    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v2

    iput-boolean v2, v1, Lorg/chromium/mojom/device/BatteryStatus;->charging:Z

    .line 100
    :cond_2
    iget v2, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_3

    .line 103
    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readDouble(I)D

    move-result-wide v2

    iput-wide v2, v1, Lorg/chromium/mojom/device/BatteryStatus;->chargingTime:D

    .line 124
    :cond_3
    iget v2, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_4

    .line 127
    const/16 v2, 0x18

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readDouble(I)D

    move-result-wide v2

    iput-wide v2, v1, Lorg/chromium/mojom/device/BatteryStatus;->dischargingTime:D

    .line 148
    :cond_4
    iget v2, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v2, :cond_0

    .line 151
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readDouble(I)D

    move-result-wide v2

    iput-wide v2, v1, Lorg/chromium/mojom/device/BatteryStatus;->level:D

    goto :goto_0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/device/BatteryStatus;
    .locals 1
    .param p0, "message"    # Lorg/chromium/mojo/bindings/Message;

    .prologue
    .line 64
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/mojom/device/BatteryStatus;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojom/device/BatteryStatus;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 4
    .param p1, "encoder"    # Lorg/chromium/mojo/bindings/Encoder;

    .prologue
    .line 178
    sget-object v1, Lorg/chromium/mojom/device/BatteryStatus;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v1}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    .line 184
    .local v0, "encoder0":Lorg/chromium/mojo/bindings/Encoder;
    iget-boolean v1, p0, Lorg/chromium/mojom/device/BatteryStatus;->charging:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    .line 205
    iget-wide v2, p0, Lorg/chromium/mojom/device/BatteryStatus;->chargingTime:D

    const/16 v1, 0x10

    invoke-virtual {v0, v2, v3, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(DI)V

    .line 226
    iget-wide v2, p0, Lorg/chromium/mojom/device/BatteryStatus;->dischargingTime:D

    const/16 v1, 0x18

    invoke-virtual {v0, v2, v3, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(DI)V

    .line 247
    iget-wide v2, p0, Lorg/chromium/mojom/device/BatteryStatus;->level:D

    const/16 v1, 0x20

    invoke-virtual {v0, v2, v3, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(DI)V

    .line 265
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 272
    if-ne p1, p0, :cond_1

    .line 294
    :cond_0
    :goto_0
    return v1

    .line 274
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 275
    goto :goto_0

    .line 276
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 277
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 279
    check-cast v0, Lorg/chromium/mojom/device/BatteryStatus;

    .line 281
    .local v0, "other":Lorg/chromium/mojom/device/BatteryStatus;
    iget-boolean v3, p0, Lorg/chromium/mojom/device/BatteryStatus;->charging:Z

    iget-boolean v4, v0, Lorg/chromium/mojom/device/BatteryStatus;->charging:Z

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 282
    goto :goto_0

    .line 284
    :cond_4
    iget-wide v4, p0, Lorg/chromium/mojom/device/BatteryStatus;->chargingTime:D

    iget-wide v6, v0, Lorg/chromium/mojom/device/BatteryStatus;->chargingTime:D

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_5

    move v1, v2

    .line 285
    goto :goto_0

    .line 287
    :cond_5
    iget-wide v4, p0, Lorg/chromium/mojom/device/BatteryStatus;->dischargingTime:D

    iget-wide v6, v0, Lorg/chromium/mojom/device/BatteryStatus;->dischargingTime:D

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_6

    move v1, v2

    .line 288
    goto :goto_0

    .line 290
    :cond_6
    iget-wide v4, p0, Lorg/chromium/mojom/device/BatteryStatus;->level:D

    iget-wide v6, v0, Lorg/chromium/mojom/device/BatteryStatus;->level:D

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_0

    move v1, v2

    .line 291
    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 302
    const/16 v0, 0x1f

    .line 303
    .local v0, "prime":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 305
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v3, p0, Lorg/chromium/mojom/device/BatteryStatus;->charging:Z

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Z)I

    move-result v3

    add-int v1, v2, v3

    .line 307
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Lorg/chromium/mojom/device/BatteryStatus;->chargingTime:D

    invoke-static {v4, v5}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(D)I

    move-result v3

    add-int v1, v2, v3

    .line 309
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Lorg/chromium/mojom/device/BatteryStatus;->dischargingTime:D

    invoke-static {v4, v5}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(D)I

    move-result v3

    add-int v1, v2, v3

    .line 311
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Lorg/chromium/mojom/device/BatteryStatus;->level:D

    invoke-static {v4, v5}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(D)I

    move-result v3

    add-int v1, v2, v3

    .line 313
    return v1
.end method
