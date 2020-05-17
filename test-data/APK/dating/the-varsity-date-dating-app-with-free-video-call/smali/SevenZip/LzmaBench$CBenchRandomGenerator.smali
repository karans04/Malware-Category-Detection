.class LSevenZip/LzmaBench$CBenchRandomGenerator;
.super Ljava/lang/Object;
.source "LzmaBench.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LSevenZip/LzmaBench;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CBenchRandomGenerator"
.end annotation


# instance fields
.field public Buffer:[B

.field public BufferSize:I

.field Pos:I

.field RG:LSevenZip/LzmaBench$CBitRandomGenerator;

.field Rep0:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, LSevenZip/LzmaBench$CBitRandomGenerator;

    invoke-direct {v0}, LSevenZip/LzmaBench$CBitRandomGenerator;-><init>()V

    iput-object v0, p0, LSevenZip/LzmaBench$CBenchRandomGenerator;->RG:LSevenZip/LzmaBench$CBitRandomGenerator;

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, LSevenZip/LzmaBench$CBenchRandomGenerator;->Buffer:[B

    .line 65
    return-void
.end method


# virtual methods
.method public Generate()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 88
    iget-object v2, p0, LSevenZip/LzmaBench$CBenchRandomGenerator;->RG:LSevenZip/LzmaBench$CBitRandomGenerator;

    invoke-virtual {v2}, LSevenZip/LzmaBench$CBitRandomGenerator;->Init()V

    .line 89
    iput v7, p0, LSevenZip/LzmaBench$CBenchRandomGenerator;->Rep0:I

    .line 90
    :cond_0
    :goto_0
    iget v2, p0, LSevenZip/LzmaBench$CBenchRandomGenerator;->Pos:I

    iget v3, p0, LSevenZip/LzmaBench$CBenchRandomGenerator;->BufferSize:I

    if-ge v2, v3, :cond_4

    .line 92
    invoke-virtual {p0}, LSevenZip/LzmaBench$CBenchRandomGenerator;->GetRndBit()I

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, LSevenZip/LzmaBench$CBenchRandomGenerator;->Pos:I

    if-ge v2, v7, :cond_2

    .line 93
    :cond_1
    iget-object v2, p0, LSevenZip/LzmaBench$CBenchRandomGenerator;->Buffer:[B

    iget v3, p0, LSevenZip/LzmaBench$CBenchRandomGenerator;->Pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, LSevenZip/LzmaBench$CBenchRandomGenerator;->Pos:I

    iget-object v4, p0, LSevenZip/LzmaBench$CBenchRandomGenerator;->RG:LSevenZip/LzmaBench$CBitRandomGenerator;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, LSevenZip/LzmaBench$CBitRandomGenerator;->GetRnd(I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    goto :goto_0

    .line 97
    :cond_2
    iget-object v2, p0, LSevenZip/LzmaBench$CBenchRandomGenerator;->RG:LSevenZip/LzmaBench$CBitRandomGenerator;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, LSevenZip/LzmaBench$CBitRandomGenerator;->GetRnd(I)I

    move-result v2

    if-nez v2, :cond_3

    .line 98
    invoke-virtual {p0}, LSevenZip/LzmaBench$CBenchRandomGenerator;->GetLen1()I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 107
    .local v1, "len":I
    :goto_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v1, :cond_0

    iget v2, p0, LSevenZip/LzmaBench$CBenchRandomGenerator;->Pos:I

    iget v3, p0, LSevenZip/LzmaBench$CBenchRandomGenerator;->BufferSize:I

    if-ge v2, v3, :cond_0

    .line 108
    iget-object v2, p0, LSevenZip/LzmaBench$CBenchRandomGenerator;->Buffer:[B

    iget v3, p0, LSevenZip/LzmaBench$CBenchRandomGenerator;->Pos:I

    iget-object v4, p0, LSevenZip/LzmaBench$CBenchRandomGenerator;->Buffer:[B

    iget v5, p0, LSevenZip/LzmaBench$CBenchRandomGenerator;->Pos:I

    iget v6, p0, LSevenZip/LzmaBench$CBenchRandomGenerator;->Rep0:I

    sub-int/2addr v5, v6

    aget-byte v4, v4, v5

    aput-byte v4, v2, v3

    .line 107
    add-int/lit8 v0, v0, 0x1

    iget v2, p0, LSevenZip/LzmaBench$CBenchRandomGenerator;->Pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, LSevenZip/LzmaBench$CBenchRandomGenerator;->Pos:I

    goto :goto_2

    .line 102
    .end local v0    # "i":I
    .end local v1    # "len":I
    :cond_3
    invoke-virtual {p0}, LSevenZip/LzmaBench$CBenchRandomGenerator;->GetOffset()I

    move-result v2

    iput v2, p0, LSevenZip/LzmaBench$CBenchRandomGenerator;->Rep0:I

    .line 103
    iget v2, p0, LSevenZip/LzmaBench$CBenchRandomGenerator;->Rep0:I

    iget v3, p0, LSevenZip/LzmaBench$CBenchRandomGenerator;->Pos:I

    if-ge v2, v3, :cond_3

    .line 104
    iget v2, p0, LSevenZip/LzmaBench$CBenchRandomGenerator;->Rep0:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, LSevenZip/LzmaBench$CBenchRandomGenerator;->Rep0:I

    .line 105
    invoke-virtual {p0}, LSevenZip/LzmaBench$CBenchRandomGenerator;->GetLen2()I

    move-result v2

    add-int/lit8 v1, v2, 0x2

    .restart local v1    # "len":I
    goto :goto_1

    .line 111
    .end local v1    # "len":I
    :cond_4
    return-void
.end method

.method GetLen1()I
    .locals 3

    .prologue
    .line 84
    iget-object v0, p0, LSevenZip/LzmaBench$CBenchRandomGenerator;->RG:LSevenZip/LzmaBench$CBitRandomGenerator;

    iget-object v1, p0, LSevenZip/LzmaBench$CBenchRandomGenerator;->RG:LSevenZip/LzmaBench$CBitRandomGenerator;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, LSevenZip/LzmaBench$CBitRandomGenerator;->GetRnd(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, LSevenZip/LzmaBench$CBitRandomGenerator;->GetRnd(I)I

    move-result v0

    return v0
.end method

.method GetLen2()I
    .locals 3

    .prologue
    .line 85
    iget-object v0, p0, LSevenZip/LzmaBench$CBenchRandomGenerator;->RG:LSevenZip/LzmaBench$CBitRandomGenerator;

    iget-object v1, p0, LSevenZip/LzmaBench$CBenchRandomGenerator;->RG:LSevenZip/LzmaBench$CBitRandomGenerator;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, LSevenZip/LzmaBench$CBitRandomGenerator;->GetRnd(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, LSevenZip/LzmaBench$CBitRandomGenerator;->GetRnd(I)I

    move-result v0

    return v0
.end method

.method GetLogRandBits(I)I
    .locals 2
    .param p1, "numBits"    # I

    .prologue
    .line 75
    iget-object v1, p0, LSevenZip/LzmaBench$CBenchRandomGenerator;->RG:LSevenZip/LzmaBench$CBitRandomGenerator;

    invoke-virtual {v1, p1}, LSevenZip/LzmaBench$CBitRandomGenerator;->GetRnd(I)I

    move-result v0

    .line 76
    .local v0, "len":I
    iget-object v1, p0, LSevenZip/LzmaBench$CBenchRandomGenerator;->RG:LSevenZip/LzmaBench$CBitRandomGenerator;

    invoke-virtual {v1, v0}, LSevenZip/LzmaBench$CBitRandomGenerator;->GetRnd(I)I

    move-result v1

    return v1
.end method

.method GetOffset()I
    .locals 3

    .prologue
    const/4 v1, 0x4

    .line 80
    invoke-virtual {p0}, LSevenZip/LzmaBench$CBenchRandomGenerator;->GetRndBit()I

    move-result v0

    if-nez v0, :cond_0

    .line 81
    invoke-virtual {p0, v1}, LSevenZip/LzmaBench$CBenchRandomGenerator;->GetLogRandBits(I)I

    move-result v0

    .line 82
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v1}, LSevenZip/LzmaBench$CBenchRandomGenerator;->GetLogRandBits(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0xa

    iget-object v1, p0, LSevenZip/LzmaBench$CBenchRandomGenerator;->RG:LSevenZip/LzmaBench$CBitRandomGenerator;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, LSevenZip/LzmaBench$CBitRandomGenerator;->GetRnd(I)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method GetRndBit()I
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, LSevenZip/LzmaBench$CBenchRandomGenerator;->RG:LSevenZip/LzmaBench$CBitRandomGenerator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LSevenZip/LzmaBench$CBitRandomGenerator;->GetRnd(I)I

    move-result v0

    return v0
.end method

.method public Set(I)V
    .locals 1
    .param p1, "bufferSize"    # I

    .prologue
    .line 68
    new-array v0, p1, [B

    iput-object v0, p0, LSevenZip/LzmaBench$CBenchRandomGenerator;->Buffer:[B

    .line 69
    const/4 v0, 0x0

    iput v0, p0, LSevenZip/LzmaBench$CBenchRandomGenerator;->Pos:I

    .line 70
    iput p1, p0, LSevenZip/LzmaBench$CBenchRandomGenerator;->BufferSize:I

    .line 71
    return-void
.end method
