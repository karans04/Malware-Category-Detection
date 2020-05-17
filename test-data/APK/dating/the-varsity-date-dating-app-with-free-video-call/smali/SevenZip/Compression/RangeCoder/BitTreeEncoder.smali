.class public LSevenZip/Compression/RangeCoder/BitTreeEncoder;
.super Ljava/lang/Object;
.source "BitTreeEncoder.java"


# instance fields
.field Models:[S

.field NumBitLevels:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "numBitLevels"    # I

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, LSevenZip/Compression/RangeCoder/BitTreeEncoder;->NumBitLevels:I

    .line 12
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    new-array v0, v0, [S

    iput-object v0, p0, LSevenZip/Compression/RangeCoder/BitTreeEncoder;->Models:[S

    .line 13
    return-void
.end method

.method public static ReverseEncode([SILSevenZip/Compression/RangeCoder/Encoder;II)V
    .locals 4
    .param p0, "Models"    # [S
    .param p1, "startIndex"    # I
    .param p2, "rangeEncoder"    # LSevenZip/Compression/RangeCoder/Encoder;
    .param p3, "NumBitLevels"    # I
    .param p4, "symbol"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    const/4 v2, 0x1

    .line 91
    .local v2, "m":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 93
    and-int/lit8 v0, p4, 0x1

    .line 94
    .local v0, "bit":I
    add-int v3, p1, v2

    invoke-virtual {p2, p0, v3, v0}, LSevenZip/Compression/RangeCoder/Encoder;->Encode([SII)V

    .line 95
    shl-int/lit8 v3, v2, 0x1

    or-int v2, v3, v0

    .line 96
    shr-int/lit8 p4, p4, 0x1

    .line 91
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    .end local v0    # "bit":I
    :cond_0
    return-void
.end method

.method public static ReverseGetPrice([SIII)I
    .locals 5
    .param p0, "Models"    # [S
    .param p1, "startIndex"    # I
    .param p2, "NumBitLevels"    # I
    .param p3, "symbol"    # I

    .prologue
    .line 75
    const/4 v3, 0x0

    .line 76
    .local v3, "price":I
    const/4 v2, 0x1

    .line 77
    .local v2, "m":I
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-eqz v1, :cond_0

    .line 79
    and-int/lit8 v0, p3, 0x1

    .line 80
    .local v0, "bit":I
    ushr-int/lit8 p3, p3, 0x1

    .line 81
    add-int v4, p1, v2

    aget-short v4, p0, v4

    invoke-static {v4, v0}, LSevenZip/Compression/RangeCoder/Encoder;->GetPrice(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 82
    shl-int/lit8 v4, v2, 0x1

    or-int v2, v4, v0

    .line 77
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 84
    .end local v0    # "bit":I
    :cond_0
    return v3
.end method


# virtual methods
.method public Encode(LSevenZip/Compression/RangeCoder/Encoder;I)V
    .locals 4
    .param p1, "rangeEncoder"    # LSevenZip/Compression/RangeCoder/Encoder;
    .param p2, "symbol"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22
    const/4 v2, 0x1

    .line 23
    .local v2, "m":I
    iget v1, p0, LSevenZip/Compression/RangeCoder/BitTreeEncoder;->NumBitLevels:I

    .local v1, "bitIndex":I
    :goto_0
    if-eqz v1, :cond_0

    .line 25
    add-int/lit8 v1, v1, -0x1

    .line 26
    ushr-int v3, p2, v1

    and-int/lit8 v0, v3, 0x1

    .line 27
    .local v0, "bit":I
    iget-object v3, p0, LSevenZip/Compression/RangeCoder/BitTreeEncoder;->Models:[S

    invoke-virtual {p1, v3, v2, v0}, LSevenZip/Compression/RangeCoder/Encoder;->Encode([SII)V

    .line 28
    shl-int/lit8 v3, v2, 0x1

    or-int v2, v3, v0

    .line 29
    goto :goto_0

    .line 30
    .end local v0    # "bit":I
    :cond_0
    return-void
.end method

.method public GetPrice(I)I
    .locals 5
    .param p1, "symbol"    # I

    .prologue
    .line 46
    const/4 v3, 0x0

    .line 47
    .local v3, "price":I
    const/4 v2, 0x1

    .line 48
    .local v2, "m":I
    iget v1, p0, LSevenZip/Compression/RangeCoder/BitTreeEncoder;->NumBitLevels:I

    .local v1, "bitIndex":I
    :goto_0
    if-eqz v1, :cond_0

    .line 50
    add-int/lit8 v1, v1, -0x1

    .line 51
    ushr-int v4, p1, v1

    and-int/lit8 v0, v4, 0x1

    .line 52
    .local v0, "bit":I
    iget-object v4, p0, LSevenZip/Compression/RangeCoder/BitTreeEncoder;->Models:[S

    aget-short v4, v4, v2

    invoke-static {v4, v0}, LSevenZip/Compression/RangeCoder/Encoder;->GetPrice(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 53
    shl-int/lit8 v4, v2, 0x1

    add-int v2, v4, v0

    .line 54
    goto :goto_0

    .line 55
    .end local v0    # "bit":I
    :cond_0
    return v3
.end method

.method public Init()V
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, LSevenZip/Compression/RangeCoder/BitTreeEncoder;->Models:[S

    invoke-static {v0}, LSevenZip/Compression/RangeCoder/Decoder;->InitBitModels([S)V

    .line 18
    return-void
.end method

.method public ReverseEncode(LSevenZip/Compression/RangeCoder/Encoder;I)V
    .locals 4
    .param p1, "rangeEncoder"    # LSevenZip/Compression/RangeCoder/Encoder;
    .param p2, "symbol"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    const/4 v2, 0x1

    .line 35
    .local v2, "m":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, LSevenZip/Compression/RangeCoder/BitTreeEncoder;->NumBitLevels:I

    if-ge v1, v3, :cond_0

    .line 37
    and-int/lit8 v0, p2, 0x1

    .line 38
    .local v0, "bit":I
    iget-object v3, p0, LSevenZip/Compression/RangeCoder/BitTreeEncoder;->Models:[S

    invoke-virtual {p1, v3, v2, v0}, LSevenZip/Compression/RangeCoder/Encoder;->Encode([SII)V

    .line 39
    shl-int/lit8 v3, v2, 0x1

    or-int v2, v3, v0

    .line 40
    shr-int/lit8 p2, p2, 0x1

    .line 35
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 42
    .end local v0    # "bit":I
    :cond_0
    return-void
.end method

.method public ReverseGetPrice(I)I
    .locals 5
    .param p1, "symbol"    # I

    .prologue
    .line 60
    const/4 v3, 0x0

    .line 61
    .local v3, "price":I
    const/4 v2, 0x1

    .line 62
    .local v2, "m":I
    iget v1, p0, LSevenZip/Compression/RangeCoder/BitTreeEncoder;->NumBitLevels:I

    .local v1, "i":I
    :goto_0
    if-eqz v1, :cond_0

    .line 64
    and-int/lit8 v0, p1, 0x1

    .line 65
    .local v0, "bit":I
    ushr-int/lit8 p1, p1, 0x1

    .line 66
    iget-object v4, p0, LSevenZip/Compression/RangeCoder/BitTreeEncoder;->Models:[S

    aget-short v4, v4, v2

    invoke-static {v4, v0}, LSevenZip/Compression/RangeCoder/Encoder;->GetPrice(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 67
    shl-int/lit8 v4, v2, 0x1

    or-int v2, v4, v0

    .line 62
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 69
    .end local v0    # "bit":I
    :cond_0
    return v3
.end method
