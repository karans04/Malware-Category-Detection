.class LSevenZip/LzmaBench$CBitRandomGenerator;
.super Ljava/lang/Object;
.source "LzmaBench.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LSevenZip/LzmaBench;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CBitRandomGenerator"
.end annotation


# instance fields
.field NumBits:I

.field RG:LSevenZip/LzmaBench$CRandomGenerator;

.field Value:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, LSevenZip/LzmaBench$CRandomGenerator;

    invoke-direct {v0}, LSevenZip/LzmaBench$CRandomGenerator;-><init>()V

    iput-object v0, p0, LSevenZip/LzmaBench$CBitRandomGenerator;->RG:LSevenZip/LzmaBench$CRandomGenerator;

    return-void
.end method


# virtual methods
.method public GetRnd(I)I
    .locals 4
    .param p1, "numBits"    # I

    .prologue
    const/4 v3, 0x1

    .line 39
    iget v2, p0, LSevenZip/LzmaBench$CBitRandomGenerator;->NumBits:I

    if-le v2, p1, :cond_0

    .line 41
    iget v2, p0, LSevenZip/LzmaBench$CBitRandomGenerator;->Value:I

    shl-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    and-int v0, v2, v3

    .line 42
    .local v0, "result":I
    iget v2, p0, LSevenZip/LzmaBench$CBitRandomGenerator;->Value:I

    ushr-int/2addr v2, p1

    iput v2, p0, LSevenZip/LzmaBench$CBitRandomGenerator;->Value:I

    .line 43
    iget v2, p0, LSevenZip/LzmaBench$CBitRandomGenerator;->NumBits:I

    sub-int/2addr v2, p1

    iput v2, p0, LSevenZip/LzmaBench$CBitRandomGenerator;->NumBits:I

    move v1, v0

    .line 52
    .end local v0    # "result":I
    .local v1, "result":I
    :goto_0
    return v1

    .line 46
    .end local v1    # "result":I
    :cond_0
    iget v2, p0, LSevenZip/LzmaBench$CBitRandomGenerator;->NumBits:I

    sub-int/2addr p1, v2

    .line 47
    iget v2, p0, LSevenZip/LzmaBench$CBitRandomGenerator;->Value:I

    shl-int v0, v2, p1

    .line 48
    .restart local v0    # "result":I
    iget-object v2, p0, LSevenZip/LzmaBench$CBitRandomGenerator;->RG:LSevenZip/LzmaBench$CRandomGenerator;

    invoke-virtual {v2}, LSevenZip/LzmaBench$CRandomGenerator;->GetRnd()I

    move-result v2

    iput v2, p0, LSevenZip/LzmaBench$CBitRandomGenerator;->Value:I

    .line 49
    iget v2, p0, LSevenZip/LzmaBench$CBitRandomGenerator;->Value:I

    shl-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 50
    iget v2, p0, LSevenZip/LzmaBench$CBitRandomGenerator;->Value:I

    ushr-int/2addr v2, p1

    iput v2, p0, LSevenZip/LzmaBench$CBitRandomGenerator;->Value:I

    .line 51
    rsub-int/lit8 v2, p1, 0x20

    iput v2, p0, LSevenZip/LzmaBench$CBitRandomGenerator;->NumBits:I

    move v1, v0

    .line 52
    .end local v0    # "result":I
    .restart local v1    # "result":I
    goto :goto_0
.end method

.method public Init()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    iput v0, p0, LSevenZip/LzmaBench$CBitRandomGenerator;->Value:I

    .line 34
    iput v0, p0, LSevenZip/LzmaBench$CBitRandomGenerator;->NumBits:I

    .line 35
    return-void
.end method
