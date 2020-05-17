.class public LSevenZip/Compression/RangeCoder/BitTreeDecoder;
.super Ljava/lang/Object;
.source "BitTreeDecoder.java"


# instance fields
.field Models:[S

.field NumBitLevels:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "numBitLevels"    # I

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, LSevenZip/Compression/RangeCoder/BitTreeDecoder;->NumBitLevels:I

    .line 11
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    new-array v0, v0, [S

    iput-object v0, p0, LSevenZip/Compression/RangeCoder/BitTreeDecoder;->Models:[S

    .line 12
    return-void
.end method

.method public static ReverseDecode([SILSevenZip/Compression/RangeCoder/Decoder;I)I
    .locals 5
    .param p0, "Models"    # [S
    .param p1, "startIndex"    # I
    .param p2, "rangeDecoder"    # LSevenZip/Compression/RangeCoder/Decoder;
    .param p3, "NumBitLevels"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    const/4 v2, 0x1

    .line 45
    .local v2, "m":I
    const/4 v3, 0x0

    .line 46
    .local v3, "symbol":I
    const/4 v1, 0x0

    .local v1, "bitIndex":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 48
    add-int v4, p1, v2

    invoke-virtual {p2, p0, v4}, LSevenZip/Compression/RangeCoder/Decoder;->DecodeBit([SI)I

    move-result v0

    .line 49
    .local v0, "bit":I
    shl-int/lit8 v2, v2, 0x1

    .line 50
    add-int/2addr v2, v0

    .line 51
    shl-int v4, v0, v1

    or-int/2addr v3, v4

    .line 46
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    .end local v0    # "bit":I
    :cond_0
    return v3
.end method


# virtual methods
.method public Decode(LSevenZip/Compression/RangeCoder/Decoder;)I
    .locals 4
    .param p1, "rangeDecoder"    # LSevenZip/Compression/RangeCoder/Decoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21
    const/4 v1, 0x1

    .line 22
    .local v1, "m":I
    iget v0, p0, LSevenZip/Compression/RangeCoder/BitTreeDecoder;->NumBitLevels:I

    .local v0, "bitIndex":I
    :goto_0
    if-eqz v0, :cond_0

    .line 23
    shl-int/lit8 v2, v1, 0x1

    iget-object v3, p0, LSevenZip/Compression/RangeCoder/BitTreeDecoder;->Models:[S

    invoke-virtual {p1, v3, v1}, LSevenZip/Compression/RangeCoder/Decoder;->DecodeBit([SI)I

    move-result v3

    add-int v1, v2, v3

    .line 22
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 24
    :cond_0
    const/4 v2, 0x1

    iget v3, p0, LSevenZip/Compression/RangeCoder/BitTreeDecoder;->NumBitLevels:I

    shl-int/2addr v2, v3

    sub-int v2, v1, v2

    return v2
.end method

.method public Init()V
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, LSevenZip/Compression/RangeCoder/BitTreeDecoder;->Models:[S

    invoke-static {v0}, LSevenZip/Compression/RangeCoder/Decoder;->InitBitModels([S)V

    .line 17
    return-void
.end method

.method public ReverseDecode(LSevenZip/Compression/RangeCoder/Decoder;)I
    .locals 5
    .param p1, "rangeDecoder"    # LSevenZip/Compression/RangeCoder/Decoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    const/4 v2, 0x1

    .line 30
    .local v2, "m":I
    const/4 v3, 0x0

    .line 31
    .local v3, "symbol":I
    const/4 v1, 0x0

    .local v1, "bitIndex":I
    :goto_0
    iget v4, p0, LSevenZip/Compression/RangeCoder/BitTreeDecoder;->NumBitLevels:I

    if-ge v1, v4, :cond_0

    .line 33
    iget-object v4, p0, LSevenZip/Compression/RangeCoder/BitTreeDecoder;->Models:[S

    invoke-virtual {p1, v4, v2}, LSevenZip/Compression/RangeCoder/Decoder;->DecodeBit([SI)I

    move-result v0

    .line 34
    .local v0, "bit":I
    shl-int/lit8 v2, v2, 0x1

    .line 35
    add-int/2addr v2, v0

    .line 36
    shl-int v4, v0, v1

    or-int/2addr v3, v4

    .line 31
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 38
    .end local v0    # "bit":I
    :cond_0
    return v3
.end method
