.class LSevenZip/Compression/LZMA/Decoder$LiteralDecoder;
.super Ljava/lang/Object;
.source "Decoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LSevenZip/Compression/LZMA/Decoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LiteralDecoder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LSevenZip/Compression/LZMA/Decoder$LiteralDecoder$Decoder2;
    }
.end annotation


# instance fields
.field m_Coders:[LSevenZip/Compression/LZMA/Decoder$LiteralDecoder$Decoder2;

.field m_NumPosBits:I

.field m_NumPrevBits:I

.field m_PosMask:I

.field final synthetic this$0:LSevenZip/Compression/LZMA/Decoder;


# direct methods
.method constructor <init>(LSevenZip/Compression/LZMA/Decoder;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, LSevenZip/Compression/LZMA/Decoder$LiteralDecoder;->this$0:LSevenZip/Compression/LZMA/Decoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method


# virtual methods
.method public Create(II)V
    .locals 5
    .param p1, "numPosBits"    # I
    .param p2, "numPrevBits"    # I

    .prologue
    const/4 v4, 0x1

    .line 99
    iget-object v2, p0, LSevenZip/Compression/LZMA/Decoder$LiteralDecoder;->m_Coders:[LSevenZip/Compression/LZMA/Decoder$LiteralDecoder$Decoder2;

    if-eqz v2, :cond_1

    iget v2, p0, LSevenZip/Compression/LZMA/Decoder$LiteralDecoder;->m_NumPrevBits:I

    if-ne v2, p2, :cond_1

    iget v2, p0, LSevenZip/Compression/LZMA/Decoder$LiteralDecoder;->m_NumPosBits:I

    if-ne v2, p1, :cond_1

    .line 108
    :cond_0
    return-void

    .line 101
    :cond_1
    iput p1, p0, LSevenZip/Compression/LZMA/Decoder$LiteralDecoder;->m_NumPosBits:I

    .line 102
    shl-int v2, v4, p1

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, LSevenZip/Compression/LZMA/Decoder$LiteralDecoder;->m_PosMask:I

    .line 103
    iput p2, p0, LSevenZip/Compression/LZMA/Decoder$LiteralDecoder;->m_NumPrevBits:I

    .line 104
    iget v2, p0, LSevenZip/Compression/LZMA/Decoder$LiteralDecoder;->m_NumPrevBits:I

    iget v3, p0, LSevenZip/Compression/LZMA/Decoder$LiteralDecoder;->m_NumPosBits:I

    add-int/2addr v2, v3

    shl-int v1, v4, v2

    .line 105
    .local v1, "numStates":I
    new-array v2, v1, [LSevenZip/Compression/LZMA/Decoder$LiteralDecoder$Decoder2;

    iput-object v2, p0, LSevenZip/Compression/LZMA/Decoder$LiteralDecoder;->m_Coders:[LSevenZip/Compression/LZMA/Decoder$LiteralDecoder$Decoder2;

    .line 106
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 107
    iget-object v2, p0, LSevenZip/Compression/LZMA/Decoder$LiteralDecoder;->m_Coders:[LSevenZip/Compression/LZMA/Decoder$LiteralDecoder$Decoder2;

    new-instance v3, LSevenZip/Compression/LZMA/Decoder$LiteralDecoder$Decoder2;

    invoke-direct {v3, p0}, LSevenZip/Compression/LZMA/Decoder$LiteralDecoder$Decoder2;-><init>(LSevenZip/Compression/LZMA/Decoder$LiteralDecoder;)V

    aput-object v3, v2, v0

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method GetDecoder(IB)LSevenZip/Compression/LZMA/Decoder$LiteralDecoder$Decoder2;
    .locals 4
    .param p1, "pos"    # I
    .param p2, "prevByte"    # B

    .prologue
    .line 119
    iget-object v0, p0, LSevenZip/Compression/LZMA/Decoder$LiteralDecoder;->m_Coders:[LSevenZip/Compression/LZMA/Decoder$LiteralDecoder$Decoder2;

    iget v1, p0, LSevenZip/Compression/LZMA/Decoder$LiteralDecoder;->m_PosMask:I

    and-int/2addr v1, p1

    iget v2, p0, LSevenZip/Compression/LZMA/Decoder$LiteralDecoder;->m_NumPrevBits:I

    shl-int/2addr v1, v2

    and-int/lit16 v2, p2, 0xff

    iget v3, p0, LSevenZip/Compression/LZMA/Decoder$LiteralDecoder;->m_NumPrevBits:I

    rsub-int/lit8 v3, v3, 0x8

    ushr-int/2addr v2, v3

    add-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public Init()V
    .locals 5

    .prologue
    .line 112
    const/4 v2, 0x1

    iget v3, p0, LSevenZip/Compression/LZMA/Decoder$LiteralDecoder;->m_NumPrevBits:I

    iget v4, p0, LSevenZip/Compression/LZMA/Decoder$LiteralDecoder;->m_NumPosBits:I

    add-int/2addr v3, v4

    shl-int v1, v2, v3

    .line 113
    .local v1, "numStates":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 114
    iget-object v2, p0, LSevenZip/Compression/LZMA/Decoder$LiteralDecoder;->m_Coders:[LSevenZip/Compression/LZMA/Decoder$LiteralDecoder$Decoder2;

    aget-object v2, v2, v0

    invoke-virtual {v2}, LSevenZip/Compression/LZMA/Decoder$LiteralDecoder$Decoder2;->Init()V

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    :cond_0
    return-void
.end method
