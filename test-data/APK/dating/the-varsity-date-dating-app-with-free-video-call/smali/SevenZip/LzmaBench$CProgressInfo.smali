.class LSevenZip/LzmaBench$CProgressInfo;
.super Ljava/lang/Object;
.source "LzmaBench.java"

# interfaces
.implements LSevenZip/ICodeProgress;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LSevenZip/LzmaBench;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CProgressInfo"
.end annotation


# instance fields
.field public ApprovedStart:J

.field public InSize:J

.field public Time:J


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Init()V
    .locals 2

    .prologue
    .line 201
    const-wide/16 v0, 0x0

    iput-wide v0, p0, LSevenZip/LzmaBench$CProgressInfo;->InSize:J

    return-void
.end method

.method public SetProgress(JJ)V
    .locals 5
    .param p1, "inSize"    # J
    .param p3, "outSize"    # J

    .prologue
    .line 204
    iget-wide v0, p0, LSevenZip/LzmaBench$CProgressInfo;->ApprovedStart:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-wide v0, p0, LSevenZip/LzmaBench$CProgressInfo;->InSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, LSevenZip/LzmaBench$CProgressInfo;->Time:J

    .line 207
    iput-wide p1, p0, LSevenZip/LzmaBench$CProgressInfo;->InSize:J

    .line 209
    :cond_0
    return-void
.end method
