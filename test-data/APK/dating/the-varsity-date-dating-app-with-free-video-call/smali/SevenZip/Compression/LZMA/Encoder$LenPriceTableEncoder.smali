.class LSevenZip/Compression/LZMA/Encoder$LenPriceTableEncoder;
.super LSevenZip/Compression/LZMA/Encoder$LenEncoder;
.source "Encoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LSevenZip/Compression/LZMA/Encoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LenPriceTableEncoder"
.end annotation


# instance fields
.field _counters:[I

.field _prices:[I

.field _tableSize:I

.field final synthetic this$0:LSevenZip/Compression/LZMA/Encoder;


# direct methods
.method constructor <init>(LSevenZip/Compression/LZMA/Encoder;)V
    .locals 1

    .prologue
    .line 246
    iput-object p1, p0, LSevenZip/Compression/LZMA/Encoder$LenPriceTableEncoder;->this$0:LSevenZip/Compression/LZMA/Encoder;

    invoke-direct {p0, p1}, LSevenZip/Compression/LZMA/Encoder$LenEncoder;-><init>(LSevenZip/Compression/LZMA/Encoder;)V

    .line 248
    const/16 v0, 0x1100

    new-array v0, v0, [I

    iput-object v0, p0, LSevenZip/Compression/LZMA/Encoder$LenPriceTableEncoder;->_prices:[I

    .line 250
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, LSevenZip/Compression/LZMA/Encoder$LenPriceTableEncoder;->_counters:[I

    return-void
.end method


# virtual methods
.method public Encode(LSevenZip/Compression/RangeCoder/Encoder;II)V
    .locals 2
    .param p1, "rangeEncoder"    # LSevenZip/Compression/RangeCoder/Encoder;
    .param p2, "symbol"    # I
    .param p3, "posState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 273
    invoke-super {p0, p1, p2, p3}, LSevenZip/Compression/LZMA/Encoder$LenEncoder;->Encode(LSevenZip/Compression/RangeCoder/Encoder;II)V

    .line 274
    iget-object v0, p0, LSevenZip/Compression/LZMA/Encoder$LenPriceTableEncoder;->_counters:[I

    aget v1, v0, p3

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, p3

    if-nez v1, :cond_0

    .line 275
    invoke-virtual {p0, p3}, LSevenZip/Compression/LZMA/Encoder$LenPriceTableEncoder;->UpdateTable(I)V

    .line 276
    :cond_0
    return-void
.end method

.method public GetPrice(II)I
    .locals 2
    .param p1, "symbol"    # I
    .param p2, "posState"    # I

    .prologue
    .line 256
    iget-object v0, p0, LSevenZip/Compression/LZMA/Encoder$LenPriceTableEncoder;->_prices:[I

    mul-int/lit16 v1, p2, 0x110

    add-int/2addr v1, p1

    aget v0, v0, v1

    return v0
.end method

.method public SetTableSize(I)V
    .locals 0
    .param p1, "tableSize"    # I

    .prologue
    .line 252
    iput p1, p0, LSevenZip/Compression/LZMA/Encoder$LenPriceTableEncoder;->_tableSize:I

    return-void
.end method

.method UpdateTable(I)V
    .locals 3
    .param p1, "posState"    # I

    .prologue
    .line 261
    iget v0, p0, LSevenZip/Compression/LZMA/Encoder$LenPriceTableEncoder;->_tableSize:I

    iget-object v1, p0, LSevenZip/Compression/LZMA/Encoder$LenPriceTableEncoder;->_prices:[I

    mul-int/lit16 v2, p1, 0x110

    invoke-virtual {p0, p1, v0, v1, v2}, LSevenZip/Compression/LZMA/Encoder$LenPriceTableEncoder;->SetPrices(II[II)V

    .line 262
    iget-object v0, p0, LSevenZip/Compression/LZMA/Encoder$LenPriceTableEncoder;->_counters:[I

    iget v1, p0, LSevenZip/Compression/LZMA/Encoder$LenPriceTableEncoder;->_tableSize:I

    aput v1, v0, p1

    .line 263
    return-void
.end method

.method public UpdateTables(I)V
    .locals 1
    .param p1, "numPosStates"    # I

    .prologue
    .line 267
    const/4 v0, 0x0

    .local v0, "posState":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 268
    invoke-virtual {p0, v0}, LSevenZip/Compression/LZMA/Encoder$LenPriceTableEncoder;->UpdateTable(I)V

    .line 267
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 269
    :cond_0
    return-void
.end method
