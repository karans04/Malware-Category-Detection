.class public final Lorg/chromium/mojo/bindings/RunOrClosePipeMessageParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "RunOrClosePipeMessageParams.java"


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final STRUCT_SIZE:I = 0x18

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public requireVersion:Lorg/chromium/mojo/bindings/RequireVersion;

.field public reserved0:I

.field public reserved1:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 21
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/mojo/bindings/DataHeader;

    new-instance v1, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v2, 0x18

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    aput-object v1, v0, v3

    sput-object v0, Lorg/chromium/mojo/bindings/RunOrClosePipeMessageParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    .line 22
    sget-object v0, Lorg/chromium/mojo/bindings/RunOrClosePipeMessageParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v3

    sput-object v0, Lorg/chromium/mojo/bindings/RunOrClosePipeMessageParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/mojo/bindings/RunOrClosePipeMessageParams;-><init>(I)V

    .line 49
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .param p1, "version"    # I

    .prologue
    .line 37
    const/16 v0, 0x18

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    .line 45
    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo/bindings/RunOrClosePipeMessageParams;
    .locals 5
    .param p0, "decoder0"    # Lorg/chromium/mojo/bindings/Decoder;

    .prologue
    .line 57
    if-nez p0, :cond_1

    .line 58
    const/4 v2, 0x0

    .line 121
    :cond_0
    :goto_0
    return-object v2

    .line 60
    :cond_1
    sget-object v3, Lorg/chromium/mojo/bindings/RunOrClosePipeMessageParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    .line 61
    .local v1, "mainDataHeader":Lorg/chromium/mojo/bindings/DataHeader;
    new-instance v2, Lorg/chromium/mojo/bindings/RunOrClosePipeMessageParams;

    iget v3, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    invoke-direct {v2, v3}, Lorg/chromium/mojo/bindings/RunOrClosePipeMessageParams;-><init>(I)V

    .line 64
    .local v2, "result":Lorg/chromium/mojo/bindings/RunOrClosePipeMessageParams;
    iget v3, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v3, :cond_2

    .line 67
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v3

    iput v3, v2, Lorg/chromium/mojo/bindings/RunOrClosePipeMessageParams;->reserved0:I

    .line 80
    :cond_2
    iget v3, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v3, :cond_3

    .line 83
    const/16 v3, 0xc

    invoke-virtual {p0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v3

    iput v3, v2, Lorg/chromium/mojo/bindings/RunOrClosePipeMessageParams;->reserved1:I

    .line 96
    :cond_3
    iget v3, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ltz v3, :cond_0

    .line 99
    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    .line 101
    .local v0, "decoder1":Lorg/chromium/mojo/bindings/Decoder;
    invoke-static {v0}, Lorg/chromium/mojo/bindings/RequireVersion;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo/bindings/RequireVersion;

    move-result-object v3

    iput-object v3, v2, Lorg/chromium/mojo/bindings/RunOrClosePipeMessageParams;->requireVersion:Lorg/chromium/mojo/bindings/RequireVersion;

    goto :goto_0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojo/bindings/RunOrClosePipeMessageParams;
    .locals 1
    .param p0, "message"    # Lorg/chromium/mojo/bindings/Message;

    .prologue
    .line 52
    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/mojo/bindings/RunOrClosePipeMessageParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo/bindings/RunOrClosePipeMessageParams;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 4
    .param p1, "encoder"    # Lorg/chromium/mojo/bindings/Encoder;

    .prologue
    .line 128
    sget-object v1, Lorg/chromium/mojo/bindings/RunOrClosePipeMessageParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v1}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    .line 134
    .local v0, "encoder0":Lorg/chromium/mojo/bindings/Encoder;
    iget v1, p0, Lorg/chromium/mojo/bindings/RunOrClosePipeMessageParams;->reserved0:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    .line 147
    iget v1, p0, Lorg/chromium/mojo/bindings/RunOrClosePipeMessageParams;->reserved1:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    .line 160
    iget-object v1, p0, Lorg/chromium/mojo/bindings/RunOrClosePipeMessageParams;->requireVersion:Lorg/chromium/mojo/bindings/RequireVersion;

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    .line 178
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 185
    if-ne p1, p0, :cond_1

    .line 204
    :cond_0
    :goto_0
    return v1

    .line 187
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 188
    goto :goto_0

    .line 189
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 190
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 192
    check-cast v0, Lorg/chromium/mojo/bindings/RunOrClosePipeMessageParams;

    .line 194
    .local v0, "other":Lorg/chromium/mojo/bindings/RunOrClosePipeMessageParams;
    iget v3, p0, Lorg/chromium/mojo/bindings/RunOrClosePipeMessageParams;->reserved0:I

    iget v4, v0, Lorg/chromium/mojo/bindings/RunOrClosePipeMessageParams;->reserved0:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 195
    goto :goto_0

    .line 197
    :cond_4
    iget v3, p0, Lorg/chromium/mojo/bindings/RunOrClosePipeMessageParams;->reserved1:I

    iget v4, v0, Lorg/chromium/mojo/bindings/RunOrClosePipeMessageParams;->reserved1:I

    if-eq v3, v4, :cond_5

    move v1, v2

    .line 198
    goto :goto_0

    .line 200
    :cond_5
    iget-object v3, p0, Lorg/chromium/mojo/bindings/RunOrClosePipeMessageParams;->requireVersion:Lorg/chromium/mojo/bindings/RequireVersion;

    iget-object v4, v0, Lorg/chromium/mojo/bindings/RunOrClosePipeMessageParams;->requireVersion:Lorg/chromium/mojo/bindings/RequireVersion;

    invoke-static {v3, v4}, Lorg/chromium/mojo/bindings/BindingsHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 201
    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 212
    const/16 v0, 0x1f

    .line 213
    .local v0, "prime":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 215
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lorg/chromium/mojo/bindings/RunOrClosePipeMessageParams;->reserved0:I

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(I)I

    move-result v3

    add-int v1, v2, v3

    .line 217
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lorg/chromium/mojo/bindings/RunOrClosePipeMessageParams;->reserved1:I

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(I)I

    move-result v3

    add-int v1, v2, v3

    .line 219
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/chromium/mojo/bindings/RunOrClosePipeMessageParams;->requireVersion:Lorg/chromium/mojo/bindings/RequireVersion;

    invoke-static {v3}, Lorg/chromium/mojo/bindings/BindingsHelper;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int v1, v2, v3

    .line 221
    return v1
.end method
