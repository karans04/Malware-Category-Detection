.class LSevenZip/LzmaBench$CRandomGenerator;
.super Ljava/lang/Object;
.source "LzmaBench.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LSevenZip/LzmaBench;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CRandomGenerator"
.end annotation


# instance fields
.field A1:I

.field A2:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, LSevenZip/LzmaBench$CRandomGenerator;->Init()V

    return-void
.end method


# virtual methods
.method public GetRnd()I
    .locals 3

    .prologue
    const v2, 0xffff

    .line 20
    const v0, 0x9069

    iget v1, p0, LSevenZip/LzmaBench$CRandomGenerator;->A1:I

    and-int/2addr v1, v2

    mul-int/2addr v0, v1

    iget v1, p0, LSevenZip/LzmaBench$CRandomGenerator;->A1:I

    ushr-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    iput v0, p0, LSevenZip/LzmaBench$CRandomGenerator;->A1:I

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, LSevenZip/LzmaBench$CRandomGenerator;->A2:I

    and-int/2addr v1, v2

    mul-int/lit16 v1, v1, 0x4650

    iget v2, p0, LSevenZip/LzmaBench$CRandomGenerator;->A2:I

    ushr-int/lit8 v2, v2, 0x10

    add-int/2addr v1, v2

    iput v1, p0, LSevenZip/LzmaBench$CRandomGenerator;->A2:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public Init()V
    .locals 1

    .prologue
    .line 17
    const v0, 0x159a55e5

    iput v0, p0, LSevenZip/LzmaBench$CRandomGenerator;->A1:I

    const v0, 0x1f123bb5

    iput v0, p0, LSevenZip/LzmaBench$CRandomGenerator;->A2:I

    return-void
.end method
