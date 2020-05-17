.class LSevenZip/Compression/LZMA/Decoder$LenDecoder;
.super Ljava/lang/Object;
.source "Decoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LSevenZip/Compression/LZMA/Decoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LenDecoder"
.end annotation


# instance fields
.field m_Choice:[S

.field m_HighCoder:LSevenZip/Compression/RangeCoder/BitTreeDecoder;

.field m_LowCoder:[LSevenZip/Compression/RangeCoder/BitTreeDecoder;

.field m_MidCoder:[LSevenZip/Compression/RangeCoder/BitTreeDecoder;

.field m_NumPosStates:I

.field final synthetic this$0:LSevenZip/Compression/LZMA/Decoder;


# direct methods
.method constructor <init>(LSevenZip/Compression/LZMA/Decoder;)V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 10
    iput-object p1, p0, LSevenZip/Compression/LZMA/Decoder$LenDecoder;->this$0:LSevenZip/Compression/LZMA/Decoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x2

    new-array v0, v0, [S

    iput-object v0, p0, LSevenZip/Compression/LZMA/Decoder$LenDecoder;->m_Choice:[S

    .line 13
    new-array v0, v1, [LSevenZip/Compression/RangeCoder/BitTreeDecoder;

    iput-object v0, p0, LSevenZip/Compression/LZMA/Decoder$LenDecoder;->m_LowCoder:[LSevenZip/Compression/RangeCoder/BitTreeDecoder;

    .line 14
    new-array v0, v1, [LSevenZip/Compression/RangeCoder/BitTreeDecoder;

    iput-object v0, p0, LSevenZip/Compression/LZMA/Decoder$LenDecoder;->m_MidCoder:[LSevenZip/Compression/RangeCoder/BitTreeDecoder;

    .line 15
    new-instance v0, LSevenZip/Compression/RangeCoder/BitTreeDecoder;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, LSevenZip/Compression/RangeCoder/BitTreeDecoder;-><init>(I)V

    iput-object v0, p0, LSevenZip/Compression/LZMA/Decoder$LenDecoder;->m_HighCoder:LSevenZip/Compression/RangeCoder/BitTreeDecoder;

    .line 16
    const/4 v0, 0x0

    iput v0, p0, LSevenZip/Compression/LZMA/Decoder$LenDecoder;->m_NumPosStates:I

    return-void
.end method


# virtual methods
.method public Create(I)V
    .locals 4
    .param p1, "numPosStates"    # I

    .prologue
    const/4 v3, 0x3

    .line 20
    :goto_0
    iget v0, p0, LSevenZip/Compression/LZMA/Decoder$LenDecoder;->m_NumPosStates:I

    if-ge v0, p1, :cond_0

    .line 22
    iget-object v0, p0, LSevenZip/Compression/LZMA/Decoder$LenDecoder;->m_LowCoder:[LSevenZip/Compression/RangeCoder/BitTreeDecoder;

    iget v1, p0, LSevenZip/Compression/LZMA/Decoder$LenDecoder;->m_NumPosStates:I

    new-instance v2, LSevenZip/Compression/RangeCoder/BitTreeDecoder;

    invoke-direct {v2, v3}, LSevenZip/Compression/RangeCoder/BitTreeDecoder;-><init>(I)V

    aput-object v2, v0, v1

    .line 23
    iget-object v0, p0, LSevenZip/Compression/LZMA/Decoder$LenDecoder;->m_MidCoder:[LSevenZip/Compression/RangeCoder/BitTreeDecoder;

    iget v1, p0, LSevenZip/Compression/LZMA/Decoder$LenDecoder;->m_NumPosStates:I

    new-instance v2, LSevenZip/Compression/RangeCoder/BitTreeDecoder;

    invoke-direct {v2, v3}, LSevenZip/Compression/RangeCoder/BitTreeDecoder;-><init>(I)V

    aput-object v2, v0, v1

    .line 20
    iget v0, p0, LSevenZip/Compression/LZMA/Decoder$LenDecoder;->m_NumPosStates:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LSevenZip/Compression/LZMA/Decoder$LenDecoder;->m_NumPosStates:I

    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method public Decode(LSevenZip/Compression/RangeCoder/Decoder;I)I
    .locals 3
    .param p1, "rangeDecoder"    # LSevenZip/Compression/RangeCoder/Decoder;
    .param p2, "posState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    iget-object v1, p0, LSevenZip/Compression/LZMA/Decoder$LenDecoder;->m_Choice:[S

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, LSevenZip/Compression/RangeCoder/Decoder;->DecodeBit([SI)I

    move-result v1

    if-nez v1, :cond_0

    .line 41
    iget-object v1, p0, LSevenZip/Compression/LZMA/Decoder$LenDecoder;->m_LowCoder:[LSevenZip/Compression/RangeCoder/BitTreeDecoder;

    aget-object v1, v1, p2

    invoke-virtual {v1, p1}, LSevenZip/Compression/RangeCoder/BitTreeDecoder;->Decode(LSevenZip/Compression/RangeCoder/Decoder;)I

    move-result v0

    .line 47
    :goto_0
    return v0

    .line 42
    :cond_0
    const/16 v0, 0x8

    .line 43
    .local v0, "symbol":I
    iget-object v1, p0, LSevenZip/Compression/LZMA/Decoder$LenDecoder;->m_Choice:[S

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, LSevenZip/Compression/RangeCoder/Decoder;->DecodeBit([SI)I

    move-result v1

    if-nez v1, :cond_1

    .line 44
    iget-object v1, p0, LSevenZip/Compression/LZMA/Decoder$LenDecoder;->m_MidCoder:[LSevenZip/Compression/RangeCoder/BitTreeDecoder;

    aget-object v1, v1, p2

    invoke-virtual {v1, p1}, LSevenZip/Compression/RangeCoder/BitTreeDecoder;->Decode(LSevenZip/Compression/RangeCoder/Decoder;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 46
    :cond_1
    iget-object v1, p0, LSevenZip/Compression/LZMA/Decoder$LenDecoder;->m_HighCoder:LSevenZip/Compression/RangeCoder/BitTreeDecoder;

    invoke-virtual {v1, p1}, LSevenZip/Compression/RangeCoder/BitTreeDecoder;->Decode(LSevenZip/Compression/RangeCoder/Decoder;)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public Init()V
    .locals 2

    .prologue
    .line 29
    iget-object v1, p0, LSevenZip/Compression/LZMA/Decoder$LenDecoder;->m_Choice:[S

    invoke-static {v1}, LSevenZip/Compression/RangeCoder/Decoder;->InitBitModels([S)V

    .line 30
    const/4 v0, 0x0

    .local v0, "posState":I
    :goto_0
    iget v1, p0, LSevenZip/Compression/LZMA/Decoder$LenDecoder;->m_NumPosStates:I

    if-ge v0, v1, :cond_0

    .line 32
    iget-object v1, p0, LSevenZip/Compression/LZMA/Decoder$LenDecoder;->m_LowCoder:[LSevenZip/Compression/RangeCoder/BitTreeDecoder;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LSevenZip/Compression/RangeCoder/BitTreeDecoder;->Init()V

    .line 33
    iget-object v1, p0, LSevenZip/Compression/LZMA/Decoder$LenDecoder;->m_MidCoder:[LSevenZip/Compression/RangeCoder/BitTreeDecoder;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LSevenZip/Compression/RangeCoder/BitTreeDecoder;->Init()V

    .line 30
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 35
    :cond_0
    iget-object v1, p0, LSevenZip/Compression/LZMA/Decoder$LenDecoder;->m_HighCoder:LSevenZip/Compression/RangeCoder/BitTreeDecoder;

    invoke-virtual {v1}, LSevenZip/Compression/RangeCoder/BitTreeDecoder;->Init()V

    .line 36
    return-void
.end method
