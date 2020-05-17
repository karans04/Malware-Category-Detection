.class LSevenZip/LzmaBench$CrcOutStream;
.super Ljava/io/OutputStream;
.source "LzmaBench.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LSevenZip/LzmaBench;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CrcOutStream"
.end annotation


# instance fields
.field public CRC:LSevenZip/CRC;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 116
    new-instance v0, LSevenZip/CRC;

    invoke-direct {v0}, LSevenZip/CRC;-><init>()V

    iput-object v0, p0, LSevenZip/LzmaBench$CrcOutStream;->CRC:LSevenZip/CRC;

    return-void
.end method


# virtual methods
.method public GetDigest()I
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, LSevenZip/LzmaBench$CrcOutStream;->CRC:LSevenZip/CRC;

    invoke-virtual {v0}, LSevenZip/CRC;->GetDigest()I

    move-result v0

    return v0
.end method

.method public Init()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, LSevenZip/LzmaBench$CrcOutStream;->CRC:LSevenZip/CRC;

    invoke-virtual {v0}, LSevenZip/CRC;->Init()V

    .line 121
    return-void
.end method

.method public write(I)V
    .locals 1
    .param p1, "b"    # I

    .prologue
    .line 136
    iget-object v0, p0, LSevenZip/LzmaBench$CrcOutStream;->CRC:LSevenZip/CRC;

    invoke-virtual {v0, p1}, LSevenZip/CRC;->UpdateByte(I)V

    .line 137
    return-void
.end method

.method public write([B)V
    .locals 1
    .param p1, "b"    # [B

    .prologue
    .line 128
    iget-object v0, p0, LSevenZip/LzmaBench$CrcOutStream;->CRC:LSevenZip/CRC;

    invoke-virtual {v0, p1}, LSevenZip/CRC;->Update([B)V

    .line 129
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 132
    iget-object v0, p0, LSevenZip/LzmaBench$CrcOutStream;->CRC:LSevenZip/CRC;

    invoke-virtual {v0, p1, p2, p3}, LSevenZip/CRC;->Update([BII)V

    .line 133
    return-void
.end method
