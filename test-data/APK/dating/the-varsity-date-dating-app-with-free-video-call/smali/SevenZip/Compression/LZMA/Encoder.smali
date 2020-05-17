.class public LSevenZip/Compression/LZMA/Encoder;
.super Ljava/lang/Object;
.source "Encoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LSevenZip/Compression/LZMA/Encoder$Optimal;,
        LSevenZip/Compression/LZMA/Encoder$LenPriceTableEncoder;,
        LSevenZip/Compression/LZMA/Encoder$LenEncoder;,
        LSevenZip/Compression/LZMA/Encoder$LiteralEncoder;
    }
.end annotation


# static fields
.field public static final EMatchFinderTypeBT2:I = 0x0

.field public static final EMatchFinderTypeBT4:I = 0x1

.field static g_FastPos:[B = null

.field static final kDefaultDictionaryLogSize:I = 0x16

.field static final kIfinityPrice:I = 0xfffffff

.field static final kNumFastBytesDefault:I = 0x20

.field public static final kNumLenSpecSymbols:I = 0x10

.field static final kNumOpts:I = 0x1000

.field public static final kPropSize:I = 0x5


# instance fields
.field _additionalOffset:I

.field _alignPriceCount:I

.field _alignPrices:[I

.field _dictionarySize:I

.field _dictionarySizePrev:I

.field _distTableSize:I

.field _distancesPrices:[I

.field _finished:Z

.field _inStream:Ljava/io/InputStream;

.field _isMatch:[S

.field _isRep:[S

.field _isRep0Long:[S

.field _isRepG0:[S

.field _isRepG1:[S

.field _isRepG2:[S

.field _lenEncoder:LSevenZip/Compression/LZMA/Encoder$LenPriceTableEncoder;

.field _literalEncoder:LSevenZip/Compression/LZMA/Encoder$LiteralEncoder;

.field _longestMatchLength:I

.field _longestMatchWasFound:Z

.field _matchDistances:[I

.field _matchFinder:LSevenZip/Compression/LZ/BinTree;

.field _matchFinderType:I

.field _matchPriceCount:I

.field _needReleaseMFStream:Z

.field _numDistancePairs:I

.field _numFastBytes:I

.field _numFastBytesPrev:I

.field _numLiteralContextBits:I

.field _numLiteralPosStateBits:I

.field _optimum:[LSevenZip/Compression/LZMA/Encoder$Optimal;

.field _optimumCurrentIndex:I

.field _optimumEndIndex:I

.field _posAlignEncoder:LSevenZip/Compression/RangeCoder/BitTreeEncoder;

.field _posEncoders:[S

.field _posSlotEncoder:[LSevenZip/Compression/RangeCoder/BitTreeEncoder;

.field _posSlotPrices:[I

.field _posStateBits:I

.field _posStateMask:I

.field _previousByte:B

.field _rangeEncoder:LSevenZip/Compression/RangeCoder/Encoder;

.field _repDistances:[I

.field _repMatchLenEncoder:LSevenZip/Compression/LZMA/Encoder$LenPriceTableEncoder;

.field _state:I

.field _writeEndMark:Z

.field backRes:I

.field finished:[Z

.field nowPos64:J

.field processedInSize:[J

.field processedOutSize:[J

.field properties:[B

.field repLens:[I

.field reps:[I

.field tempPrices:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 19
    const/16 v5, 0x800

    new-array v5, v5, [B

    sput-object v5, LSevenZip/Compression/LZMA/Encoder;->g_FastPos:[B

    .line 23
    const/16 v3, 0x16

    .line 24
    .local v3, "kFastSlots":I
    const/4 v0, 0x2

    .line 25
    .local v0, "c":I
    sget-object v5, LSevenZip/Compression/LZMA/Encoder;->g_FastPos:[B

    aput-byte v6, v5, v6

    .line 26
    sget-object v5, LSevenZip/Compression/LZMA/Encoder;->g_FastPos:[B

    aput-byte v7, v5, v7

    .line 27
    const/4 v4, 0x2

    .local v4, "slotFast":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 29
    shr-int/lit8 v5, v4, 0x1

    add-int/lit8 v5, v5, -0x1

    shl-int v2, v7, v5

    .line 30
    .local v2, "k":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 31
    sget-object v5, LSevenZip/Compression/LZMA/Encoder;->g_FastPos:[B

    int-to-byte v6, v4

    aput-byte v6, v5, v0

    .line 30
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 27
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 33
    .end local v1    # "j":I
    .end local v2    # "k":I
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    const/16 v3, 0xc

    const/4 v2, 0x1

    const/4 v4, 0x4

    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {}, LSevenZip/Compression/LZMA/Base;->StateInit()I

    move-result v1

    iput v1, p0, LSevenZip/Compression/LZMA/Encoder;->_state:I

    .line 55
    new-array v1, v4, [I

    iput-object v1, p0, LSevenZip/Compression/LZMA/Encoder;->_repDistances:[I

    .line 303
    const/16 v1, 0x1000

    new-array v1, v1, [LSevenZip/Compression/LZMA/Encoder$Optimal;

    iput-object v1, p0, LSevenZip/Compression/LZMA/Encoder;->_optimum:[LSevenZip/Compression/LZMA/Encoder$Optimal;

    .line 304
    const/4 v1, 0x0

    iput-object v1, p0, LSevenZip/Compression/LZMA/Encoder;->_matchFinder:LSevenZip/Compression/LZ/BinTree;

    .line 305
    new-instance v1, LSevenZip/Compression/RangeCoder/Encoder;

    invoke-direct {v1}, LSevenZip/Compression/RangeCoder/Encoder;-><init>()V

    iput-object v1, p0, LSevenZip/Compression/LZMA/Encoder;->_rangeEncoder:LSevenZip/Compression/RangeCoder/Encoder;

    .line 307
    const/16 v1, 0xc0

    new-array v1, v1, [S

    iput-object v1, p0, LSevenZip/Compression/LZMA/Encoder;->_isMatch:[S

    .line 308
    new-array v1, v3, [S

    iput-object v1, p0, LSevenZip/Compression/LZMA/Encoder;->_isRep:[S

    .line 309
    new-array v1, v3, [S

    iput-object v1, p0, LSevenZip/Compression/LZMA/Encoder;->_isRepG0:[S

    .line 310
    new-array v1, v3, [S

    iput-object v1, p0, LSevenZip/Compression/LZMA/Encoder;->_isRepG1:[S

    .line 311
    new-array v1, v3, [S

    iput-object v1, p0, LSevenZip/Compression/LZMA/Encoder;->_isRepG2:[S

    .line 312
    const/16 v1, 0xc0

    new-array v1, v1, [S

    iput-object v1, p0, LSevenZip/Compression/LZMA/Encoder;->_isRep0Long:[S

    .line 314
    new-array v1, v4, [LSevenZip/Compression/RangeCoder/BitTreeEncoder;

    iput-object v1, p0, LSevenZip/Compression/LZMA/Encoder;->_posSlotEncoder:[LSevenZip/Compression/RangeCoder/BitTreeEncoder;

    .line 316
    const/16 v1, 0x72

    new-array v1, v1, [S

    iput-object v1, p0, LSevenZip/Compression/LZMA/Encoder;->_posEncoders:[S

    .line 317
    new-instance v1, LSevenZip/Compression/RangeCoder/BitTreeEncoder;

    invoke-direct {v1, v4}, LSevenZip/Compression/RangeCoder/BitTreeEncoder;-><init>(I)V

    iput-object v1, p0, LSevenZip/Compression/LZMA/Encoder;->_posAlignEncoder:LSevenZip/Compression/RangeCoder/BitTreeEncoder;

    .line 319
    new-instance v1, LSevenZip/Compression/LZMA/Encoder$LenPriceTableEncoder;

    invoke-direct {v1, p0}, LSevenZip/Compression/LZMA/Encoder$LenPriceTableEncoder;-><init>(LSevenZip/Compression/LZMA/Encoder;)V

    iput-object v1, p0, LSevenZip/Compression/LZMA/Encoder;->_lenEncoder:LSevenZip/Compression/LZMA/Encoder$LenPriceTableEncoder;

    .line 320
    new-instance v1, LSevenZip/Compression/LZMA/Encoder$LenPriceTableEncoder;

    invoke-direct {v1, p0}, LSevenZip/Compression/LZMA/Encoder$LenPriceTableEncoder;-><init>(LSevenZip/Compression/LZMA/Encoder;)V

    iput-object v1, p0, LSevenZip/Compression/LZMA/Encoder;->_repMatchLenEncoder:LSevenZip/Compression/LZMA/Encoder$LenPriceTableEncoder;

    .line 322
    new-instance v1, LSevenZip/Compression/LZMA/Encoder$LiteralEncoder;

    invoke-direct {v1, p0}, LSevenZip/Compression/LZMA/Encoder$LiteralEncoder;-><init>(LSevenZip/Compression/LZMA/Encoder;)V

    iput-object v1, p0, LSevenZip/Compression/LZMA/Encoder;->_literalEncoder:LSevenZip/Compression/LZMA/Encoder$LiteralEncoder;

    .line 324
    const/16 v1, 0x224

    new-array v1, v1, [I

    iput-object v1, p0, LSevenZip/Compression/LZMA/Encoder;->_matchDistances:[I

    .line 326
    const/16 v1, 0x20

    iput v1, p0, LSevenZip/Compression/LZMA/Encoder;->_numFastBytes:I

    .line 337
    const/16 v1, 0x100

    new-array v1, v1, [I

    iput-object v1, p0, LSevenZip/Compression/LZMA/Encoder;->_posSlotPrices:[I

    .line 338
    const/16 v1, 0x200

    new-array v1, v1, [I

    iput-object v1, p0, LSevenZip/Compression/LZMA/Encoder;->_distancesPrices:[I

    .line 339
    const/16 v1, 0x10

    new-array v1, v1, [I

    iput-object v1, p0, LSevenZip/Compression/LZMA/Encoder;->_alignPrices:[I

    .line 342
    const/16 v1, 0x2c

    iput v1, p0, LSevenZip/Compression/LZMA/Encoder;->_distTableSize:I

    .line 344
    const/4 v1, 0x2

    iput v1, p0, LSevenZip/Compression/LZMA/Encoder;->_posStateBits:I

    .line 345
    const/4 v1, 0x3

    iput v1, p0, LSevenZip/Compression/LZMA/Encoder;->_posStateMask:I

    .line 346
    iput v5, p0, LSevenZip/Compression/LZMA/Encoder;->_numLiteralPosStateBits:I

    .line 347
    const/4 v1, 0x3

    iput v1, p0, LSevenZip/Compression/LZMA/Encoder;->_numLiteralContextBits:I

    .line 349
    const/high16 v1, 0x400000

    iput v1, p0, LSevenZip/Compression/LZMA/Encoder;->_dictionarySize:I

    .line 350
    iput v6, p0, LSevenZip/Compression/LZMA/Encoder;->_dictionarySizePrev:I

    .line 351
    iput v6, p0, LSevenZip/Compression/LZMA/Encoder;->_numFastBytesPrev:I

    .line 357
    iput v2, p0, LSevenZip/Compression/LZMA/Encoder;->_matchFinderType:I

    .line 358
    iput-boolean v5, p0, LSevenZip/Compression/LZMA/Encoder;->_writeEndMark:Z

    .line 360
    iput-boolean v5, p0, LSevenZip/Compression/LZMA/Encoder;->_needReleaseMFStream:Z

    .line 535
    new-array v1, v4, [I

    iput-object v1, p0, LSevenZip/Compression/LZMA/Encoder;->reps:[I

    .line 536
    new-array v1, v4, [I

    iput-object v1, p0, LSevenZip/Compression/LZMA/Encoder;->repLens:[I

    .line 1272
    new-array v1, v2, [J

    iput-object v1, p0, LSevenZip/Compression/LZMA/Encoder;->processedInSize:[J

    new-array v1, v2, [J

    iput-object v1, p0, LSevenZip/Compression/LZMA/Encoder;->processedOutSize:[J

    new-array v1, v2, [Z

    iput-object v1, p0, LSevenZip/Compression/LZMA/Encoder;->finished:[Z

    .line 1301
    const/4 v1, 0x5

    new-array v1, v1, [B

    iput-object v1, p0, LSevenZip/Compression/LZMA/Encoder;->properties:[B

    .line 1311
    const/16 v1, 0x80

    new-array v1, v1, [I

    iput-object v1, p0, LSevenZip/Compression/LZMA/Encoder;->tempPrices:[I

    .line 384
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x1000

    if-ge v0, v1, :cond_0

    .line 385
    iget-object v1, p0, LSevenZip/Compression/LZMA/Encoder;->_optimum:[LSevenZip/Compression/LZMA/Encoder$Optimal;

    new-instance v2, LSevenZip/Compression/LZMA/Encoder$Optimal;

    invoke-direct {v2, p0}, LSevenZip/Compression/LZMA/Encoder$Optimal;-><init>(LSevenZip/Compression/LZMA/Encoder;)V

    aput-object v2, v1, v0

    .line 384
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 386
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_1

    .line 387
    iget-object v1, p0, LSevenZip/Compression/LZMA/Encoder;->_posSlotEncoder:[LSevenZip/Compression/RangeCoder/BitTreeEncoder;

    new-instance v2, LSevenZip/Compression/RangeCoder/BitTreeEncoder;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, LSevenZip/Compression/RangeCoder/BitTreeEncoder;-><init>(I)V

    aput-object v2, v1, v0

    .line 386
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 388
    :cond_1
    return-void
.end method

.method static GetPosSlot(I)I
    .locals 2
    .param p0, "pos"    # I

    .prologue
    .line 37
    const/16 v0, 0x800

    if-ge p0, v0, :cond_0

    .line 38
    sget-object v0, LSevenZip/Compression/LZMA/Encoder;->g_FastPos:[B

    aget-byte v0, v0, p0

    .line 41
    :goto_0
    return v0

    .line 39
    :cond_0
    const/high16 v0, 0x200000

    if-ge p0, v0, :cond_1

    .line 40
    sget-object v0, LSevenZip/Compression/LZMA/Encoder;->g_FastPos:[B

    shr-int/lit8 v1, p0, 0xa

    aget-byte v0, v0, v1

    add-int/lit8 v0, v0, 0x14

    goto :goto_0

    .line 41
    :cond_1
    sget-object v0, LSevenZip/Compression/LZMA/Encoder;->g_FastPos:[B

    shr-int/lit8 v1, p0, 0x14

    aget-byte v0, v0, v1

    add-int/lit8 v0, v0, 0x28

    goto :goto_0
.end method

.method static GetPosSlot2(I)I
    .locals 2
    .param p0, "pos"    # I

    .prologue
    .line 46
    const/high16 v0, 0x20000

    if-ge p0, v0, :cond_0

    .line 47
    sget-object v0, LSevenZip/Compression/LZMA/Encoder;->g_FastPos:[B

    shr-int/lit8 v1, p0, 0x6

    aget-byte v0, v0, v1

    add-int/lit8 v0, v0, 0xc

    .line 50
    :goto_0
    return v0

    .line 48
    :cond_0
    const/high16 v0, 0x8000000

    if-ge p0, v0, :cond_1

    .line 49
    sget-object v0, LSevenZip/Compression/LZMA/Encoder;->g_FastPos:[B

    shr-int/lit8 v1, p0, 0x10

    aget-byte v0, v0, v1

    add-int/lit8 v0, v0, 0x20

    goto :goto_0

    .line 50
    :cond_1
    sget-object v0, LSevenZip/Compression/LZMA/Encoder;->g_FastPos:[B

    shr-int/lit8 v1, p0, 0x1a

    aget-byte v0, v0, v1

    add-int/lit8 v0, v0, 0x34

    goto :goto_0
.end method


# virtual methods
.method Backward(I)I
    .locals 7
    .param p1, "cur"    # I

    .prologue
    const/4 v6, 0x0

    .line 503
    iput p1, p0, LSevenZip/Compression/LZMA/Encoder;->_optimumEndIndex:I

    .line 504
    iget-object v4, p0, LSevenZip/Compression/LZMA/Encoder;->_optimum:[LSevenZip/Compression/LZMA/Encoder$Optimal;

    aget-object v4, v4, p1

    iget v2, v4, LSevenZip/Compression/LZMA/Encoder$Optimal;->PosPrev:I

    .line 505
    .local v2, "posMem":I
    iget-object v4, p0, LSevenZip/Compression/LZMA/Encoder;->_optimum:[LSevenZip/Compression/LZMA/Encoder$Optimal;

    aget-object v4, v4, p1

    iget v1, v4, LSevenZip/Compression/LZMA/Encoder$Optimal;->BackPrev:I

    .line 508
    .local v1, "backMem":I
    :cond_0
    iget-object v4, p0, LSevenZip/Compression/LZMA/Encoder;->_optimum:[LSevenZip/Compression/LZMA/Encoder$Optimal;

    aget-object v4, v4, p1

    iget-boolean v4, v4, LSevenZip/Compression/LZMA/Encoder$Optimal;->Prev1IsChar:Z

    if-eqz v4, :cond_1

    .line 510
    iget-object v4, p0, LSevenZip/Compression/LZMA/Encoder;->_optimum:[LSevenZip/Compression/LZMA/Encoder$Optimal;

    aget-object v4, v4, v2

    invoke-virtual {v4}, LSevenZip/Compression/LZMA/Encoder$Optimal;->MakeAsChar()V

    .line 511
    iget-object v4, p0, LSevenZip/Compression/LZMA/Encoder;->_optimum:[LSevenZip/Compression/LZMA/Encoder$Optimal;

    aget-object v4, v4, v2

    add-int/lit8 v5, v2, -0x1

    iput v5, v4, LSevenZip/Compression/LZMA/Encoder$Optimal;->PosPrev:I

    .line 512
    iget-object v4, p0, LSevenZip/Compression/LZMA/Encoder;->_optimum:[LSevenZip/Compression/LZMA/Encoder$Optimal;

    aget-object v4, v4, p1

    iget-boolean v4, v4, LSevenZip/Compression/LZMA/Encoder$Optimal;->Prev2:Z

    if-eqz v4, :cond_1

    .line 514
    iget-object v4, p0, LSevenZip/Compression/LZMA/Encoder;->_optimum:[LSevenZip/Compression/LZMA/Encoder$Optimal;

    add-int/lit8 v5, v2, -0x1

    aget-object v4, v4, v5

    iput-boolean v6, v4, LSevenZip/Compression/LZMA/Encoder$Optimal;->Prev1IsChar:Z

    .line 515
    iget-object v4, p0, LSevenZip/Compression/LZMA/Encoder;->_optimum:[LSevenZip/Compression/LZMA/Encoder$Optimal;

    add-int/lit8 v5, v2, -0x1

    aget-object v4, v4, v5

    iget-object v5, p0, LSevenZip/Compression/LZMA/Encoder;->_optimum:[LSevenZip/Compression/LZMA/Encoder$Optimal;

    aget-object v5, v5, p1

    iget v5, v5, LSevenZip/Compression/LZMA/Encoder$Optimal;->PosPrev2:I

    iput v5, v4, LSevenZip/Compression/LZMA/Encoder$Optimal;->PosPrev:I

    .line 516
    iget-object v4, p0, LSevenZip/Compression/LZMA/Encoder;->_optimum:[LSevenZip/Compression/LZMA/Encoder$Optimal;

    add-int/lit8 v5, v2, -0x1

    aget-object v4, v4, v5

    iget-object v5, p0, LSevenZip/Compression/LZMA/Encoder;->_optimum:[LSevenZip/Compression/LZMA/Encoder$Optimal;

    aget-object v5, v5, p1

    iget v5, v5, LSevenZip/Compression/LZMA/Encoder$Optimal;->BackPrev2:I

    iput v5, v4, LSevenZip/Compression/LZMA/Encoder$Optimal;->BackPrev:I

    .line 519
    :cond_1
    move v3, v2

    .line 520
    .local v3, "posPrev":I
    move v0, v1

    .line 522
    .local v0, "backCur":I
    iget-object v4, p0, LSevenZip/Compression/LZMA/Encoder;->_optimum:[LSevenZip/Compression/LZMA/Encoder$Optimal;

    aget-object v4, v4, v3

    iget v1, v4, LSevenZip/Compression/LZMA/Encoder$Optimal;->BackPrev:I

    .line 523
    iget-object v4, p0, LSevenZip/Compression/LZMA/Encoder;->_optimum:[LSevenZip/Compression/LZMA/Encoder$Optimal;

    aget-object v4, v4, v3

    iget v2, v4, LSevenZip/Compression/LZMA/Encoder$Optimal;->PosPrev:I

    .line 525
    iget-object v4, p0, LSevenZip/Compression/LZMA/Encoder;->_optimum:[LSevenZip/Compression/LZMA/Encoder$Optimal;

    aget-object v4, v4, v3

    iput v0, v4, LSevenZip/Compression/LZMA/Encoder$Optimal;->BackPrev:I

    .line 526
    iget-object v4, p0, LSevenZip/Compression/LZMA/Encoder;->_optimum:[LSevenZip/Compression/LZMA/Encoder$Optimal;

    aget-object v4, v4, v3

    iput p1, v4, LSevenZip/Compression/LZMA/Encoder$Optimal;->PosPrev:I

    .line 527
    move p1, v3

    .line 529
    if-gtz p1, :cond_0

    .line 530
    iget-object v4, p0, LSevenZip/Compression/LZMA/Encoder;->_optimum:[LSevenZip/Compression/LZMA/Encoder$Optimal;

    aget-object v4, v4, v6

    iget v4, v4, LSevenZip/Compression/LZMA/Encoder$Optimal;->BackPrev:I

    iput v4, p0, LSevenZip/Compression/LZMA/Encoder;->backRes:I

    .line 531
    iget-object v4, p0, LSevenZip/Compression/LZMA/Encoder;->_optimum:[LSevenZip/Compression/LZMA/Encoder$Optimal;

    aget-object v4, v4, v6

    iget v4, v4, LSevenZip/Compression/LZMA/Encoder$Optimal;->PosPrev:I

    iput v4, p0, LSevenZip/Compression/LZMA/Encoder;->_optimumCurrentIndex:I

    .line 532
    iget v4, p0, LSevenZip/Compression/LZMA/Encoder;->_optimumCurrentIndex:I

    return v4
.end method

.method BaseInit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 59
    invoke-static {}, LSevenZip/Compression/LZMA/Base;->StateInit()I

    move-result v1

    iput v1, p0, LSevenZip/Compression/LZMA/Encoder;->_state:I

    .line 60
    iput-byte v2, p0, LSevenZip/Compression/LZMA/Encoder;->_previousByte:B

    .line 61
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 62
    iget-object v1, p0, LSevenZip/Compression/LZMA/Encoder;->_repDistances:[I

    aput v2, v1, v0

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :cond_0
    return-void
.end method

.method ChangePair(II)Z
    .locals 2
    .param p1, "smallDist"    # I
    .param p2, "bigDist"    # I

    .prologue
    .line 1032
    const/4 v0, 0x7

    .line 1033
    .local v0, "kDif":I
    const/high16 v1, 0x2000000

    if-ge p1, v1, :cond_0

    shl-int v1, p1, v0

    if-lt p2, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public Code(Ljava/io/InputStream;Ljava/io/OutputStream;JJLSevenZip/ICodeProgress;)V
    .locals 5
    .param p1, "inStream"    # Ljava/io/InputStream;
    .param p2, "outStream"    # Ljava/io/OutputStream;
    .param p3, "inSize"    # J
    .param p5, "outSize"    # J
    .param p7, "progress"    # LSevenZip/ICodeProgress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1276
    iput-boolean v0, p0, LSevenZip/Compression/LZMA/Encoder;->_needReleaseMFStream:Z

    .line 1279
    :try_start_0
    invoke-virtual/range {p0 .. p6}, LSevenZip/Compression/LZMA/Encoder;->SetStreams(Ljava/io/InputStream;Ljava/io/OutputStream;JJ)V

    .line 1285
    :cond_0
    :goto_0
    iget-object v0, p0, LSevenZip/Compression/LZMA/Encoder;->processedInSize:[J

    iget-object v1, p0, LSevenZip/Compression/LZMA/Encoder;->processedOutSize:[J

    iget-object v2, p0, LSevenZip/Compression/LZMA/Encoder;->finished:[Z

    invoke-virtual {p0, v0, v1, v2}, LSevenZip/Compression/LZMA/Encoder;->CodeOneBlock([J[J[Z)V

    .line 1286
    iget-object v0, p0, LSevenZip/Compression/LZMA/Encoder;->finished:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 1296
    invoke-virtual {p0}, LSevenZip/Compression/LZMA/Encoder;->ReleaseStreams()V

    return-void

    .line 1288
    :cond_1
    if-eqz p7, :cond_0

    .line 1290
    :try_start_1
    iget-object v0, p0, LSevenZip/Compression/LZMA/Encoder;->processedInSize:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    iget-object v2, p0, LSevenZip/Compression/LZMA/Encoder;->processedOutSize:[J

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    invoke-interface {p7, v0, v1, v2, v3}, LSevenZip/ICodeProgress;->SetProgress(JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1296
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, LSevenZip/Compression/LZMA/Encoder;->ReleaseStreams()V

    throw v0
.end method

.method public CodeOneBlock([J[J[Z)V
    .locals 24
    .param p1, "inSize"    # [J
    .param p2, "outSize"    # [J
    .param p3, "finished"    # [Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1065
    const/16 v20, 0x0

    const-wide/16 v22, 0x0

    aput-wide v22, p1, v20

    .line 1066
    const/16 v20, 0x0

    const-wide/16 v22, 0x0

    aput-wide v22, p2, v20

    .line 1067
    const/16 v20, 0x0

    const/16 v21, 0x1

    aput-boolean v21, p3, v20

    .line 1069
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_inStream:Ljava/io/InputStream;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 1071
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_matchFinder:LSevenZip/Compression/LZ/BinTree;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_inStream:Ljava/io/InputStream;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, LSevenZip/Compression/LZ/BinTree;->SetStream(Ljava/io/InputStream;)V

    .line 1072
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_matchFinder:LSevenZip/Compression/LZ/BinTree;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, LSevenZip/Compression/LZ/BinTree;->Init()V

    .line 1073
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, LSevenZip/Compression/LZMA/Encoder;->_needReleaseMFStream:Z

    .line 1074
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, LSevenZip/Compression/LZMA/Encoder;->_inStream:Ljava/io/InputStream;

    .line 1077
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, LSevenZip/Compression/LZMA/Encoder;->_finished:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1

    .line 1223
    :goto_0
    return-void

    .line 1079
    :cond_1
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, LSevenZip/Compression/LZMA/Encoder;->_finished:Z

    .line 1082
    move-object/from16 v0, p0

    iget-wide v0, v0, LSevenZip/Compression/LZMA/Encoder;->nowPos64:J

    move-wide/from16 v18, v0

    .line 1083
    .local v18, "progressPosValuePrev":J
    move-object/from16 v0, p0

    iget-wide v0, v0, LSevenZip/Compression/LZMA/Encoder;->nowPos64:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-nez v20, :cond_3

    .line 1085
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_matchFinder:LSevenZip/Compression/LZ/BinTree;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, LSevenZip/Compression/LZ/BinTree;->GetNumAvailableBytes()I

    move-result v20

    if-nez v20, :cond_2

    .line 1087
    move-object/from16 v0, p0

    iget-wide v0, v0, LSevenZip/Compression/LZMA/Encoder;->nowPos64:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, LSevenZip/Compression/LZMA/Encoder;->Flush(I)V

    goto :goto_0

    .line 1091
    :cond_2
    invoke-virtual/range {p0 .. p0}, LSevenZip/Compression/LZMA/Encoder;->ReadMatchDistances()I

    .line 1092
    move-object/from16 v0, p0

    iget-wide v0, v0, LSevenZip/Compression/LZMA/Encoder;->nowPos64:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder;->_posStateMask:I

    move/from16 v21, v0

    and-int v16, v20, v21

    .line 1093
    .local v16, "posState":I
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_rangeEncoder:LSevenZip/Compression/RangeCoder/Encoder;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_isMatch:[S

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder;->_state:I

    move/from16 v22, v0

    shl-int/lit8 v22, v22, 0x4

    add-int v22, v22, v16

    const/16 v23, 0x0

    invoke-virtual/range {v20 .. v23}, LSevenZip/Compression/RangeCoder/Encoder;->Encode([SII)V

    .line 1094
    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder;->_state:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, LSevenZip/Compression/LZMA/Base;->StateUpdateChar(I)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, LSevenZip/Compression/LZMA/Encoder;->_state:I

    .line 1095
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_matchFinder:LSevenZip/Compression/LZ/BinTree;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder;->_additionalOffset:I

    move/from16 v21, v0

    rsub-int/lit8 v21, v21, 0x0

    invoke-virtual/range {v20 .. v21}, LSevenZip/Compression/LZ/BinTree;->GetIndexByte(I)B

    move-result v6

    .line 1096
    .local v6, "curByte":B
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_literalEncoder:LSevenZip/Compression/LZMA/Encoder$LiteralEncoder;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, LSevenZip/Compression/LZMA/Encoder;->nowPos64:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, LSevenZip/Compression/LZMA/Encoder;->_previousByte:B

    move/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, LSevenZip/Compression/LZMA/Encoder$LiteralEncoder;->GetSubCoder(IB)LSevenZip/Compression/LZMA/Encoder$LiteralEncoder$Encoder2;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_rangeEncoder:LSevenZip/Compression/RangeCoder/Encoder;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v6}, LSevenZip/Compression/LZMA/Encoder$LiteralEncoder$Encoder2;->Encode(LSevenZip/Compression/RangeCoder/Encoder;B)V

    .line 1097
    move-object/from16 v0, p0

    iput-byte v6, v0, LSevenZip/Compression/LZMA/Encoder;->_previousByte:B

    .line 1098
    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder;->_additionalOffset:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, LSevenZip/Compression/LZMA/Encoder;->_additionalOffset:I

    .line 1099
    move-object/from16 v0, p0

    iget-wide v0, v0, LSevenZip/Compression/LZMA/Encoder;->nowPos64:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x1

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, LSevenZip/Compression/LZMA/Encoder;->nowPos64:J

    .line 1101
    .end local v6    # "curByte":B
    .end local v16    # "posState":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_matchFinder:LSevenZip/Compression/LZ/BinTree;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, LSevenZip/Compression/LZ/BinTree;->GetNumAvailableBytes()I

    move-result v20

    if-nez v20, :cond_4

    .line 1103
    move-object/from16 v0, p0

    iget-wide v0, v0, LSevenZip/Compression/LZMA/Encoder;->nowPos64:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, LSevenZip/Compression/LZMA/Encoder;->Flush(I)V

    goto/16 :goto_0

    .line 1109
    :cond_4
    move-object/from16 v0, p0

    iget-wide v0, v0, LSevenZip/Compression/LZMA/Encoder;->nowPos64:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, LSevenZip/Compression/LZMA/Encoder;->GetOptimum(I)I

    move-result v10

    .line 1110
    .local v10, "len":I
    move-object/from16 v0, p0

    iget v13, v0, LSevenZip/Compression/LZMA/Encoder;->backRes:I

    .line 1111
    .local v13, "pos":I
    move-object/from16 v0, p0

    iget-wide v0, v0, LSevenZip/Compression/LZMA/Encoder;->nowPos64:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder;->_posStateMask:I

    move/from16 v21, v0

    and-int v16, v20, v21

    .line 1112
    .restart local v16    # "posState":I
    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder;->_state:I

    move/from16 v20, v0

    shl-int/lit8 v20, v20, 0x4

    add-int v5, v20, v16

    .line 1113
    .local v5, "complexState":I
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v10, v0, :cond_8

    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v13, v0, :cond_8

    .line 1115
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_rangeEncoder:LSevenZip/Compression/RangeCoder/Encoder;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_isMatch:[S

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v5, v2}, LSevenZip/Compression/RangeCoder/Encoder;->Encode([SII)V

    .line 1116
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_matchFinder:LSevenZip/Compression/LZ/BinTree;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder;->_additionalOffset:I

    move/from16 v21, v0

    rsub-int/lit8 v21, v21, 0x0

    invoke-virtual/range {v20 .. v21}, LSevenZip/Compression/LZ/BinTree;->GetIndexByte(I)B

    move-result v6

    .line 1117
    .restart local v6    # "curByte":B
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_literalEncoder:LSevenZip/Compression/LZMA/Encoder$LiteralEncoder;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, LSevenZip/Compression/LZMA/Encoder;->nowPos64:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, LSevenZip/Compression/LZMA/Encoder;->_previousByte:B

    move/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, LSevenZip/Compression/LZMA/Encoder$LiteralEncoder;->GetSubCoder(IB)LSevenZip/Compression/LZMA/Encoder$LiteralEncoder$Encoder2;

    move-result-object v17

    .line 1118
    .local v17, "subCoder":LSevenZip/Compression/LZMA/Encoder$LiteralEncoder$Encoder2;
    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder;->_state:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, LSevenZip/Compression/LZMA/Base;->StateIsCharState(I)Z

    move-result v20

    if-nez v20, :cond_7

    .line 1120
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_matchFinder:LSevenZip/Compression/LZ/BinTree;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_repDistances:[I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget v21, v21, v22

    rsub-int/lit8 v21, v21, 0x0

    add-int/lit8 v21, v21, -0x1

    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder;->_additionalOffset:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    invoke-virtual/range {v20 .. v21}, LSevenZip/Compression/LZ/BinTree;->GetIndexByte(I)B

    move-result v12

    .line 1121
    .local v12, "matchByte":B
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_rangeEncoder:LSevenZip/Compression/RangeCoder/Encoder;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v12, v6}, LSevenZip/Compression/LZMA/Encoder$LiteralEncoder$Encoder2;->EncodeMatched(LSevenZip/Compression/RangeCoder/Encoder;BB)V

    .line 1125
    .end local v12    # "matchByte":B
    :goto_1
    move-object/from16 v0, p0

    iput-byte v6, v0, LSevenZip/Compression/LZMA/Encoder;->_previousByte:B

    .line 1126
    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder;->_state:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, LSevenZip/Compression/LZMA/Base;->StateUpdateChar(I)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, LSevenZip/Compression/LZMA/Encoder;->_state:I

    .line 1202
    .end local v6    # "curByte":B
    .end local v17    # "subCoder":LSevenZip/Compression/LZMA/Encoder$LiteralEncoder$Encoder2;
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder;->_additionalOffset:I

    move/from16 v20, v0

    sub-int v20, v20, v10

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, LSevenZip/Compression/LZMA/Encoder;->_additionalOffset:I

    .line 1203
    move-object/from16 v0, p0

    iget-wide v0, v0, LSevenZip/Compression/LZMA/Encoder;->nowPos64:J

    move-wide/from16 v20, v0

    int-to-long v0, v10

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, LSevenZip/Compression/LZMA/Encoder;->nowPos64:J

    .line 1204
    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder;->_additionalOffset:I

    move/from16 v20, v0

    if-nez v20, :cond_4

    .line 1207
    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder;->_matchPriceCount:I

    move/from16 v20, v0

    const/16 v21, 0x80

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_5

    .line 1208
    invoke-virtual/range {p0 .. p0}, LSevenZip/Compression/LZMA/Encoder;->FillDistancesPrices()V

    .line 1209
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder;->_alignPriceCount:I

    move/from16 v20, v0

    const/16 v21, 0x10

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_6

    .line 1210
    invoke-virtual/range {p0 .. p0}, LSevenZip/Compression/LZMA/Encoder;->FillAlignPrices()V

    .line 1211
    :cond_6
    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, LSevenZip/Compression/LZMA/Encoder;->nowPos64:J

    move-wide/from16 v22, v0

    aput-wide v22, p1, v20

    .line 1212
    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_rangeEncoder:LSevenZip/Compression/RangeCoder/Encoder;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, LSevenZip/Compression/RangeCoder/Encoder;->GetProcessedSizeAdd()J

    move-result-wide v22

    aput-wide v22, p2, v20

    .line 1213
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_matchFinder:LSevenZip/Compression/LZ/BinTree;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, LSevenZip/Compression/LZ/BinTree;->GetNumAvailableBytes()I

    move-result v20

    if-nez v20, :cond_13

    .line 1215
    move-object/from16 v0, p0

    iget-wide v0, v0, LSevenZip/Compression/LZMA/Encoder;->nowPos64:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, LSevenZip/Compression/LZMA/Encoder;->Flush(I)V

    goto/16 :goto_0

    .line 1124
    .restart local v6    # "curByte":B
    .restart local v17    # "subCoder":LSevenZip/Compression/LZMA/Encoder$LiteralEncoder$Encoder2;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_rangeEncoder:LSevenZip/Compression/RangeCoder/Encoder;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v6}, LSevenZip/Compression/LZMA/Encoder$LiteralEncoder$Encoder2;->Encode(LSevenZip/Compression/RangeCoder/Encoder;B)V

    goto/16 :goto_1

    .line 1130
    .end local v6    # "curByte":B
    .end local v17    # "subCoder":LSevenZip/Compression/LZMA/Encoder$LiteralEncoder$Encoder2;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_rangeEncoder:LSevenZip/Compression/RangeCoder/Encoder;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_isMatch:[S

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v5, v2}, LSevenZip/Compression/RangeCoder/Encoder;->Encode([SII)V

    .line 1131
    const/16 v20, 0x4

    move/from16 v0, v20

    if-ge v13, v0, :cond_f

    .line 1133
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_rangeEncoder:LSevenZip/Compression/RangeCoder/Encoder;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_isRep:[S

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder;->_state:I

    move/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v20 .. v23}, LSevenZip/Compression/RangeCoder/Encoder;->Encode([SII)V

    .line 1134
    if-nez v13, :cond_a

    .line 1136
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_rangeEncoder:LSevenZip/Compression/RangeCoder/Encoder;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_isRepG0:[S

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder;->_state:I

    move/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v20 .. v23}, LSevenZip/Compression/RangeCoder/Encoder;->Encode([SII)V

    .line 1137
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v10, v0, :cond_9

    .line 1138
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_rangeEncoder:LSevenZip/Compression/RangeCoder/Encoder;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_isRep0Long:[S

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v5, v2}, LSevenZip/Compression/RangeCoder/Encoder;->Encode([SII)V

    .line 1153
    :goto_3
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v10, v0, :cond_c

    .line 1154
    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder;->_state:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, LSevenZip/Compression/LZMA/Base;->StateUpdateShortRep(I)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, LSevenZip/Compression/LZMA/Encoder;->_state:I

    .line 1160
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_repDistances:[I

    move-object/from16 v20, v0

    aget v7, v20, v13

    .line 1161
    .local v7, "distance":I
    if-eqz v13, :cond_e

    .line 1163
    move v9, v13

    .local v9, "i":I
    :goto_5
    const/16 v20, 0x1

    move/from16 v0, v20

    if-lt v9, v0, :cond_d

    .line 1164
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_repDistances:[I

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_repDistances:[I

    move-object/from16 v21, v0

    add-int/lit8 v22, v9, -0x1

    aget v21, v21, v22

    aput v21, v20, v9

    .line 1163
    add-int/lit8 v9, v9, -0x1

    goto :goto_5

    .line 1140
    .end local v7    # "distance":I
    .end local v9    # "i":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_rangeEncoder:LSevenZip/Compression/RangeCoder/Encoder;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_isRep0Long:[S

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v5, v2}, LSevenZip/Compression/RangeCoder/Encoder;->Encode([SII)V

    goto :goto_3

    .line 1144
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_rangeEncoder:LSevenZip/Compression/RangeCoder/Encoder;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_isRepG0:[S

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder;->_state:I

    move/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v20 .. v23}, LSevenZip/Compression/RangeCoder/Encoder;->Encode([SII)V

    .line 1145
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v13, v0, :cond_b

    .line 1146
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_rangeEncoder:LSevenZip/Compression/RangeCoder/Encoder;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_isRepG1:[S

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder;->_state:I

    move/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v20 .. v23}, LSevenZip/Compression/RangeCoder/Encoder;->Encode([SII)V

    goto/16 :goto_3

    .line 1149
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_rangeEncoder:LSevenZip/Compression/RangeCoder/Encoder;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_isRepG1:[S

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder;->_state:I

    move/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v20 .. v23}, LSevenZip/Compression/RangeCoder/Encoder;->Encode([SII)V

    .line 1150
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_rangeEncoder:LSevenZip/Compression/RangeCoder/Encoder;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_isRepG2:[S

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder;->_state:I

    move/from16 v22, v0

    add-int/lit8 v23, v13, -0x2

    invoke-virtual/range {v20 .. v23}, LSevenZip/Compression/RangeCoder/Encoder;->Encode([SII)V

    goto/16 :goto_3

    .line 1157
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_repMatchLenEncoder:LSevenZip/Compression/LZMA/Encoder$LenPriceTableEncoder;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_rangeEncoder:LSevenZip/Compression/RangeCoder/Encoder;

    move-object/from16 v21, v0

    add-int/lit8 v22, v10, -0x2

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, LSevenZip/Compression/LZMA/Encoder$LenPriceTableEncoder;->Encode(LSevenZip/Compression/RangeCoder/Encoder;II)V

    .line 1158
    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder;->_state:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, LSevenZip/Compression/LZMA/Base;->StateUpdateRep(I)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, LSevenZip/Compression/LZMA/Encoder;->_state:I

    goto/16 :goto_4

    .line 1165
    .restart local v7    # "distance":I
    .restart local v9    # "i":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_repDistances:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v7, v20, v21

    .line 1200
    .end local v9    # "i":I
    :cond_e
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_matchFinder:LSevenZip/Compression/LZ/BinTree;

    move-object/from16 v20, v0

    add-int/lit8 v21, v10, -0x1

    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder;->_additionalOffset:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    invoke-virtual/range {v20 .. v21}, LSevenZip/Compression/LZ/BinTree;->GetIndexByte(I)B

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-byte v0, v1, LSevenZip/Compression/LZMA/Encoder;->_previousByte:B

    goto/16 :goto_2

    .line 1170
    .end local v7    # "distance":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_rangeEncoder:LSevenZip/Compression/RangeCoder/Encoder;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_isRep:[S

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder;->_state:I

    move/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v20 .. v23}, LSevenZip/Compression/RangeCoder/Encoder;->Encode([SII)V

    .line 1171
    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder;->_state:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, LSevenZip/Compression/LZMA/Base;->StateUpdateMatch(I)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, LSevenZip/Compression/LZMA/Encoder;->_state:I

    .line 1172
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_lenEncoder:LSevenZip/Compression/LZMA/Encoder$LenPriceTableEncoder;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_rangeEncoder:LSevenZip/Compression/RangeCoder/Encoder;

    move-object/from16 v21, v0

    add-int/lit8 v22, v10, -0x2

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, LSevenZip/Compression/LZMA/Encoder$LenPriceTableEncoder;->Encode(LSevenZip/Compression/RangeCoder/Encoder;II)V

    .line 1173
    add-int/lit8 v13, v13, -0x4

    .line 1174
    invoke-static {v13}, LSevenZip/Compression/LZMA/Encoder;->GetPosSlot(I)I

    move-result v15

    .line 1175
    .local v15, "posSlot":I
    invoke-static {v10}, LSevenZip/Compression/LZMA/Base;->GetLenToPosState(I)I

    move-result v11

    .line 1176
    .local v11, "lenToPosState":I
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_posSlotEncoder:[LSevenZip/Compression/RangeCoder/BitTreeEncoder;

    move-object/from16 v20, v0

    aget-object v20, v20, v11

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_rangeEncoder:LSevenZip/Compression/RangeCoder/Encoder;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v15}, LSevenZip/Compression/RangeCoder/BitTreeEncoder;->Encode(LSevenZip/Compression/RangeCoder/Encoder;I)V

    .line 1178
    const/16 v20, 0x4

    move/from16 v0, v20

    if-lt v15, v0, :cond_10

    .line 1180
    shr-int/lit8 v20, v15, 0x1

    add-int/lit8 v8, v20, -0x1

    .line 1181
    .local v8, "footerBits":I
    and-int/lit8 v20, v15, 0x1

    or-int/lit8 v20, v20, 0x2

    shl-int v4, v20, v8

    .line 1182
    .local v4, "baseVal":I
    sub-int v14, v13, v4

    .line 1184
    .local v14, "posReduced":I
    const/16 v20, 0xe

    move/from16 v0, v20

    if-ge v15, v0, :cond_11

    .line 1185
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_posEncoders:[S

    move-object/from16 v20, v0

    sub-int v21, v4, v15

    add-int/lit8 v21, v21, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_rangeEncoder:LSevenZip/Compression/RangeCoder/Encoder;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2, v8, v14}, LSevenZip/Compression/RangeCoder/BitTreeEncoder;->ReverseEncode([SILSevenZip/Compression/RangeCoder/Encoder;II)V

    .line 1194
    .end local v4    # "baseVal":I
    .end local v8    # "footerBits":I
    .end local v14    # "posReduced":I
    :cond_10
    :goto_7
    move v7, v13

    .line 1195
    .restart local v7    # "distance":I
    const/4 v9, 0x3

    .restart local v9    # "i":I
    :goto_8
    const/16 v20, 0x1

    move/from16 v0, v20

    if-lt v9, v0, :cond_12

    .line 1196
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_repDistances:[I

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_repDistances:[I

    move-object/from16 v21, v0

    add-int/lit8 v22, v9, -0x1

    aget v21, v21, v22

    aput v21, v20, v9

    .line 1195
    add-int/lit8 v9, v9, -0x1

    goto :goto_8

    .line 1189
    .end local v7    # "distance":I
    .end local v9    # "i":I
    .restart local v4    # "baseVal":I
    .restart local v8    # "footerBits":I
    .restart local v14    # "posReduced":I
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_rangeEncoder:LSevenZip/Compression/RangeCoder/Encoder;

    move-object/from16 v20, v0

    shr-int/lit8 v21, v14, 0x4

    add-int/lit8 v22, v8, -0x4

    invoke-virtual/range {v20 .. v22}, LSevenZip/Compression/RangeCoder/Encoder;->EncodeDirectBits(II)V

    .line 1190
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_posAlignEncoder:LSevenZip/Compression/RangeCoder/BitTreeEncoder;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_rangeEncoder:LSevenZip/Compression/RangeCoder/Encoder;

    move-object/from16 v21, v0

    and-int/lit8 v22, v14, 0xf

    invoke-virtual/range {v20 .. v22}, LSevenZip/Compression/RangeCoder/BitTreeEncoder;->ReverseEncode(LSevenZip/Compression/RangeCoder/Encoder;I)V

    .line 1191
    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder;->_alignPriceCount:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, LSevenZip/Compression/LZMA/Encoder;->_alignPriceCount:I

    goto :goto_7

    .line 1197
    .end local v4    # "baseVal":I
    .end local v8    # "footerBits":I
    .end local v14    # "posReduced":I
    .restart local v7    # "distance":I
    .restart local v9    # "i":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_repDistances:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v7, v20, v21

    .line 1198
    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder;->_matchPriceCount:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, LSevenZip/Compression/LZMA/Encoder;->_matchPriceCount:I

    goto/16 :goto_6

    .line 1219
    .end local v7    # "distance":I
    .end local v9    # "i":I
    .end local v11    # "lenToPosState":I
    .end local v15    # "posSlot":I
    :cond_13
    move-object/from16 v0, p0

    iget-wide v0, v0, LSevenZip/Compression/LZMA/Encoder;->nowPos64:J

    move-wide/from16 v20, v0

    sub-long v20, v20, v18

    const-wide/16 v22, 0x1000

    cmp-long v20, v20, v22

    if-ltz v20, :cond_4

    .line 1221
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, LSevenZip/Compression/LZMA/Encoder;->_finished:Z

    .line 1222
    const/16 v20, 0x0

    const/16 v21, 0x0

    aput-boolean v21, p3, v20

    goto/16 :goto_0
.end method

.method Create()V
    .locals 7

    .prologue
    .line 364
    iget-object v2, p0, LSevenZip/Compression/LZMA/Encoder;->_matchFinder:LSevenZip/Compression/LZ/BinTree;

    if-nez v2, :cond_1

    .line 366
    new-instance v0, LSevenZip/Compression/LZ/BinTree;

    invoke-direct {v0}, LSevenZip/Compression/LZ/BinTree;-><init>()V

    .line 367
    .local v0, "bt":LSevenZip/Compression/LZ/BinTree;
    const/4 v1, 0x4

    .line 368
    .local v1, "numHashBytes":I
    iget v2, p0, LSevenZip/Compression/LZMA/Encoder;->_matchFinderType:I

    if-nez v2, :cond_0

    .line 369
    const/4 v1, 0x2

    .line 370
    :cond_0
    invoke-virtual {v0, v1}, LSevenZip/Compression/LZ/BinTree;->SetType(I)V

    .line 371
    iput-object v0, p0, LSevenZip/Compression/LZMA/Encoder;->_matchFinder:LSevenZip/Compression/LZ/BinTree;

    .line 373
    .end local v0    # "bt":LSevenZip/Compression/LZ/BinTree;
    .end local v1    # "numHashBytes":I
    :cond_1
    iget-object v2, p0, LSevenZip/Compression/LZMA/Encoder;->_literalEncoder:LSevenZip/Compression/LZMA/Encoder$LiteralEncoder;

    iget v3, p0, LSevenZip/Compression/LZMA/Encoder;->_numLiteralPosStateBits:I

    iget v4, p0, LSevenZip/Compression/LZMA/Encoder;->_numLiteralContextBits:I

    invoke-virtual {v2, v3, v4}, LSevenZip/Compression/LZMA/Encoder$LiteralEncoder;->Create(II)V

    .line 375
    iget v2, p0, LSevenZip/Compression/LZMA/Encoder;->_dictionarySize:I

    iget v3, p0, LSevenZip/Compression/LZMA/Encoder;->_dictionarySizePrev:I

    if-ne v2, v3, :cond_2

    iget v2, p0, LSevenZip/Compression/LZMA/Encoder;->_numFastBytesPrev:I

    iget v3, p0, LSevenZip/Compression/LZMA/Encoder;->_numFastBytes:I

    if-ne v2, v3, :cond_2

    .line 380
    :goto_0
    return-void

    .line 377
    :cond_2
    iget-object v2, p0, LSevenZip/Compression/LZMA/Encoder;->_matchFinder:LSevenZip/Compression/LZ/BinTree;

    iget v3, p0, LSevenZip/Compression/LZMA/Encoder;->_dictionarySize:I

    const/16 v4, 0x1000

    iget v5, p0, LSevenZip/Compression/LZMA/Encoder;->_numFastBytes:I

    const/16 v6, 0x112

    invoke-virtual {v2, v3, v4, v5, v6}, LSevenZip/Compression/LZ/BinTree;->Create(IIII)Z

    .line 378
    iget v2, p0, LSevenZip/Compression/LZMA/Encoder;->_dictionarySize:I

    iput v2, p0, LSevenZip/Compression/LZMA/Encoder;->_dictionarySizePrev:I

    .line 379
    iget v2, p0, LSevenZip/Compression/LZMA/Encoder;->_numFastBytes:I

    iput v2, p0, LSevenZip/Compression/LZMA/Encoder;->_numFastBytesPrev:I

    goto :goto_0
.end method

.method FillAlignPrices()V
    .locals 3

    .prologue
    .line 1348
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 1349
    iget-object v1, p0, LSevenZip/Compression/LZMA/Encoder;->_alignPrices:[I

    iget-object v2, p0, LSevenZip/Compression/LZMA/Encoder;->_posAlignEncoder:LSevenZip/Compression/RangeCoder/BitTreeEncoder;

    invoke-virtual {v2, v0}, LSevenZip/Compression/RangeCoder/BitTreeEncoder;->ReverseGetPrice(I)I

    move-result v2

    aput v2, v1, v0

    .line 1348
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1350
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, LSevenZip/Compression/LZMA/Encoder;->_alignPriceCount:I

    .line 1351
    return-void
.end method

.method FillDistancesPrices()V
    .locals 14

    .prologue
    const/16 v13, 0x80

    const/4 v12, 0x4

    .line 1316
    const/4 v3, 0x4

    .local v3, "i":I
    :goto_0
    if-ge v3, v13, :cond_0

    .line 1318
    invoke-static {v3}, LSevenZip/Compression/LZMA/Encoder;->GetPosSlot(I)I

    move-result v5

    .line 1319
    .local v5, "posSlot":I
    shr-int/lit8 v8, v5, 0x1

    add-int/lit8 v2, v8, -0x1

    .line 1320
    .local v2, "footerBits":I
    and-int/lit8 v8, v5, 0x1

    or-int/lit8 v8, v8, 0x2

    shl-int v0, v8, v2

    .line 1321
    .local v0, "baseVal":I
    iget-object v8, p0, LSevenZip/Compression/LZMA/Encoder;->tempPrices:[I

    iget-object v9, p0, LSevenZip/Compression/LZMA/Encoder;->_posEncoders:[S

    sub-int v10, v0, v5

    add-int/lit8 v10, v10, -0x1

    sub-int v11, v3, v0

    invoke-static {v9, v10, v2, v11}, LSevenZip/Compression/RangeCoder/BitTreeEncoder;->ReverseGetPrice([SIII)I

    move-result v9

    aput v9, v8, v3

    .line 1316
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1325
    .end local v0    # "baseVal":I
    .end local v2    # "footerBits":I
    .end local v5    # "posSlot":I
    :cond_0
    const/4 v4, 0x0

    .local v4, "lenToPosState":I
    :goto_1
    if-ge v4, v12, :cond_5

    .line 1328
    iget-object v8, p0, LSevenZip/Compression/LZMA/Encoder;->_posSlotEncoder:[LSevenZip/Compression/RangeCoder/BitTreeEncoder;

    aget-object v1, v8, v4

    .line 1330
    .local v1, "encoder":LSevenZip/Compression/RangeCoder/BitTreeEncoder;
    shl-int/lit8 v6, v4, 0x6

    .line 1331
    .local v6, "st":I
    const/4 v5, 0x0

    .restart local v5    # "posSlot":I
    :goto_2
    iget v8, p0, LSevenZip/Compression/LZMA/Encoder;->_distTableSize:I

    if-ge v5, v8, :cond_1

    .line 1332
    iget-object v8, p0, LSevenZip/Compression/LZMA/Encoder;->_posSlotPrices:[I

    add-int v9, v6, v5

    invoke-virtual {v1, v5}, LSevenZip/Compression/RangeCoder/BitTreeEncoder;->GetPrice(I)I

    move-result v10

    aput v10, v8, v9

    .line 1331
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1333
    :cond_1
    const/16 v5, 0xe

    :goto_3
    iget v8, p0, LSevenZip/Compression/LZMA/Encoder;->_distTableSize:I

    if-ge v5, v8, :cond_2

    .line 1334
    iget-object v8, p0, LSevenZip/Compression/LZMA/Encoder;->_posSlotPrices:[I

    add-int v9, v6, v5

    aget v10, v8, v9

    shr-int/lit8 v11, v5, 0x1

    add-int/lit8 v11, v11, -0x1

    add-int/lit8 v11, v11, -0x4

    shl-int/lit8 v11, v11, 0x6

    add-int/2addr v10, v11

    aput v10, v8, v9

    .line 1333
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1336
    :cond_2
    mul-int/lit16 v7, v4, 0x80

    .line 1338
    .local v7, "st2":I
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v12, :cond_3

    .line 1339
    iget-object v8, p0, LSevenZip/Compression/LZMA/Encoder;->_distancesPrices:[I

    add-int v9, v7, v3

    iget-object v10, p0, LSevenZip/Compression/LZMA/Encoder;->_posSlotPrices:[I

    add-int v11, v6, v3

    aget v10, v10, v11

    aput v10, v8, v9

    .line 1338
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1340
    :cond_3
    :goto_5
    if-ge v3, v13, :cond_4

    .line 1341
    iget-object v8, p0, LSevenZip/Compression/LZMA/Encoder;->_distancesPrices:[I

    add-int v9, v7, v3

    iget-object v10, p0, LSevenZip/Compression/LZMA/Encoder;->_posSlotPrices:[I

    invoke-static {v3}, LSevenZip/Compression/LZMA/Encoder;->GetPosSlot(I)I

    move-result v11

    add-int/2addr v11, v6

    aget v10, v10, v11

    iget-object v11, p0, LSevenZip/Compression/LZMA/Encoder;->tempPrices:[I

    aget v11, v11, v3

    add-int/2addr v10, v11

    aput v10, v8, v9

    .line 1340
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1325
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1343
    .end local v1    # "encoder":LSevenZip/Compression/RangeCoder/BitTreeEncoder;
    .end local v5    # "posSlot":I
    .end local v6    # "st":I
    .end local v7    # "st2":I
    :cond_5
    const/4 v8, 0x0

    iput v8, p0, LSevenZip/Compression/LZMA/Encoder;->_matchPriceCount:I

    .line 1344
    return-void
.end method

.method Flush(I)V
    .locals 1
    .param p1, "nowPos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1057
    invoke-virtual {p0}, LSevenZip/Compression/LZMA/Encoder;->ReleaseMFStream()V

    .line 1058
    iget v0, p0, LSevenZip/Compression/LZMA/Encoder;->_posStateMask:I

    and-int/2addr v0, p1

    invoke-virtual {p0, v0}, LSevenZip/Compression/LZMA/Encoder;->WriteEndMarker(I)V

    .line 1059
    iget-object v0, p0, LSevenZip/Compression/LZMA/Encoder;->_rangeEncoder:LSevenZip/Compression/RangeCoder/Encoder;

    invoke-virtual {v0}, LSevenZip/Compression/RangeCoder/Encoder;->FlushData()V

    .line 1060
    iget-object v0, p0, LSevenZip/Compression/LZMA/Encoder;->_rangeEncoder:LSevenZip/Compression/RangeCoder/Encoder;

    invoke-virtual {v0}, LSevenZip/Compression/RangeCoder/Encoder;->FlushStream()V

    .line 1061
    return-void
.end method

.method GetOptimum(I)I
    .locals 57
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 541
    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder;->_optimumEndIndex:I

    move/from16 v51, v0

    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder;->_optimumCurrentIndex:I

    move/from16 v52, v0

    move/from16 v0, v51

    move/from16 v1, v52

    if-eq v0, v1, :cond_0

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_optimum:[LSevenZip/Compression/LZMA/Encoder$Optimal;

    move-object/from16 v51, v0

    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder;->_optimumCurrentIndex:I

    move/from16 v52, v0

    aget-object v51, v51, v52

    move-object/from16 v0, v51

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder$Optimal;->PosPrev:I

    move/from16 v51, v0

    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder;->_optimumCurrentIndex:I

    move/from16 v52, v0

    sub-int v18, v51, v52

    .line 544
    .local v18, "lenRes":I
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_optimum:[LSevenZip/Compression/LZMA/Encoder$Optimal;

    move-object/from16 v51, v0

    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder;->_optimumCurrentIndex:I

    move/from16 v52, v0

    aget-object v51, v51, v52

    move-object/from16 v0, v51

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder$Optimal;->BackPrev:I

    move/from16 v51, v0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, LSevenZip/Compression/LZMA/Encoder;->backRes:I

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_optimum:[LSevenZip/Compression/LZMA/Encoder$Optimal;

    move-object/from16 v51, v0

    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder;->_optimumCurrentIndex:I

    move/from16 v52, v0

    aget-object v51, v51, v52

    move-object/from16 v0, v51

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder$Optimal;->PosPrev:I

    move/from16 v51, v0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, LSevenZip/Compression/LZMA/Encoder;->_optimumCurrentIndex:I

    .line 709
    .end local v18    # "lenRes":I
    :goto_0
    return v18

    .line 548
    :cond_0
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, LSevenZip/Compression/LZMA/Encoder;->_optimumEndIndex:I

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, LSevenZip/Compression/LZMA/Encoder;->_optimumCurrentIndex:I

    .line 551
    move-object/from16 v0, p0

    iget-boolean v0, v0, LSevenZip/Compression/LZMA/Encoder;->_longestMatchWasFound:Z

    move/from16 v51, v0

    if-nez v51, :cond_1

    .line 553
    invoke-virtual/range {p0 .. p0}, LSevenZip/Compression/LZMA/Encoder;->ReadMatchDistances()I

    move-result v17

    .line 560
    .local v17, "lenMain":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder;->_numDistancePairs:I

    move/from16 v32, v0

    .line 562
    .local v32, "numDistancePairs":I
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_matchFinder:LSevenZip/Compression/LZ/BinTree;

    move-object/from16 v51, v0

    invoke-virtual/range {v51 .. v51}, LSevenZip/Compression/LZ/BinTree;->GetNumAvailableBytes()I

    move-result v51

    add-int/lit8 v30, v51, 0x1

    .line 563
    .local v30, "numAvailableBytes":I
    const/16 v51, 0x2

    move/from16 v0, v30

    move/from16 v1, v51

    if-ge v0, v1, :cond_2

    .line 565
    const/16 v51, -0x1

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, LSevenZip/Compression/LZMA/Encoder;->backRes:I

    .line 566
    const/16 v18, 0x1

    goto :goto_0

    .line 557
    .end local v17    # "lenMain":I
    .end local v30    # "numAvailableBytes":I
    .end local v32    # "numDistancePairs":I
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder;->_longestMatchLength:I

    move/from16 v17, v0

    .line 558
    .restart local v17    # "lenMain":I
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, LSevenZip/Compression/LZMA/Encoder;->_longestMatchWasFound:Z

    goto :goto_1

    .line 568
    .restart local v30    # "numAvailableBytes":I
    .restart local v32    # "numDistancePairs":I
    :cond_2
    const/16 v51, 0x111

    move/from16 v0, v30

    move/from16 v1, v51

    if-le v0, v1, :cond_3

    .line 569
    const/16 v30, 0x111

    .line 571
    :cond_3
    const/16 v45, 0x0

    .line 573
    .local v45, "repMaxIndex":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    const/16 v51, 0x4

    move/from16 v0, v51

    if-ge v13, v0, :cond_5

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->reps:[I

    move-object/from16 v51, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_repDistances:[I

    move-object/from16 v52, v0

    aget v52, v52, v13

    aput v52, v51, v13

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->repLens:[I

    move-object/from16 v51, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_matchFinder:LSevenZip/Compression/LZ/BinTree;

    move-object/from16 v52, v0

    const/16 v53, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->reps:[I

    move-object/from16 v54, v0

    aget v54, v54, v13

    const/16 v55, 0x111

    invoke-virtual/range {v52 .. v55}, LSevenZip/Compression/LZ/BinTree;->GetMatchLen(III)I

    move-result v52

    aput v52, v51, v13

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->repLens:[I

    move-object/from16 v51, v0

    aget v51, v51, v13

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->repLens:[I

    move-object/from16 v52, v0

    aget v52, v52, v45

    move/from16 v0, v51

    move/from16 v1, v52

    if-le v0, v1, :cond_4

    .line 578
    move/from16 v45, v13

    .line 573
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 580
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->repLens:[I

    move-object/from16 v51, v0

    aget v51, v51, v45

    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder;->_numFastBytes:I

    move/from16 v52, v0

    move/from16 v0, v51

    move/from16 v1, v52

    if-lt v0, v1, :cond_6

    .line 582
    move/from16 v0, v45

    move-object/from16 v1, p0

    iput v0, v1, LSevenZip/Compression/LZMA/Encoder;->backRes:I

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->repLens:[I

    move-object/from16 v51, v0

    aget v18, v51, v45

    .line 584
    .restart local v18    # "lenRes":I
    add-int/lit8 v51, v18, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, LSevenZip/Compression/LZMA/Encoder;->MovePos(I)V

    goto/16 :goto_0

    .line 588
    .end local v18    # "lenRes":I
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder;->_numFastBytes:I

    move/from16 v51, v0

    move/from16 v0, v17

    move/from16 v1, v51

    if-lt v0, v1, :cond_7

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_matchDistances:[I

    move-object/from16 v51, v0

    add-int/lit8 v52, v32, -0x1

    aget v51, v51, v52

    add-int/lit8 v51, v51, 0x4

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, LSevenZip/Compression/LZMA/Encoder;->backRes:I

    .line 591
    add-int/lit8 v51, v17, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, LSevenZip/Compression/LZMA/Encoder;->MovePos(I)V

    move/from16 v18, v17

    .line 592
    goto/16 :goto_0

    .line 595
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_matchFinder:LSevenZip/Compression/LZ/BinTree;

    move-object/from16 v51, v0

    const/16 v52, -0x1

    invoke-virtual/range {v51 .. v52}, LSevenZip/Compression/LZ/BinTree;->GetIndexByte(I)B

    move-result v11

    .line 596
    .local v11, "currentByte":B
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_matchFinder:LSevenZip/Compression/LZ/BinTree;

    move-object/from16 v51, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_repDistances:[I

    move-object/from16 v52, v0

    const/16 v53, 0x0

    aget v52, v52, v53

    rsub-int/lit8 v52, v52, 0x0

    add-int/lit8 v52, v52, -0x1

    add-int/lit8 v52, v52, -0x1

    invoke-virtual/range {v51 .. v52}, LSevenZip/Compression/LZ/BinTree;->GetIndexByte(I)B

    move-result v22

    .line 598
    .local v22, "matchByte":B
    const/16 v51, 0x2

    move/from16 v0, v17

    move/from16 v1, v51

    if-ge v0, v1, :cond_8

    move/from16 v0, v22

    if-eq v11, v0, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->repLens:[I

    move-object/from16 v51, v0

    aget v51, v51, v45

    const/16 v52, 0x2

    move/from16 v0, v51

    move/from16 v1, v52

    if-ge v0, v1, :cond_8

    .line 600
    const/16 v51, -0x1

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, LSevenZip/Compression/LZMA/Encoder;->backRes:I

    .line 601
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 604
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_optimum:[LSevenZip/Compression/LZMA/Encoder$Optimal;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    aget-object v51, v51, v52

    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder;->_state:I

    move/from16 v52, v0

    move/from16 v0, v52

    move-object/from16 v1, v51

    iput v0, v1, LSevenZip/Compression/LZMA/Encoder$Optimal;->State:I

    .line 606
    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder;->_posStateMask:I

    move/from16 v51, v0

    and-int v39, p1, v51

    .line 608
    .local v39, "posState":I
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_optimum:[LSevenZip/Compression/LZMA/Encoder$Optimal;

    move-object/from16 v51, v0

    const/16 v52, 0x1

    aget-object v52, v51, v52

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_isMatch:[S

    move-object/from16 v51, v0

    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder;->_state:I

    move/from16 v53, v0

    shl-int/lit8 v53, v53, 0x4

    add-int v53, v53, v39

    aget-short v51, v51, v53

    invoke-static/range {v51 .. v51}, LSevenZip/Compression/RangeCoder/Encoder;->GetPrice0(I)I

    move-result v53

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_literalEncoder:LSevenZip/Compression/LZMA/Encoder$LiteralEncoder;

    move-object/from16 v51, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, LSevenZip/Compression/LZMA/Encoder;->_previousByte:B

    move/from16 v54, v0

    move-object/from16 v0, v51

    move/from16 v1, p1

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, LSevenZip/Compression/LZMA/Encoder$LiteralEncoder;->GetSubCoder(IB)LSevenZip/Compression/LZMA/Encoder$LiteralEncoder$Encoder2;

    move-result-object v54

    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder;->_state:I

    move/from16 v51, v0

    invoke-static/range {v51 .. v51}, LSevenZip/Compression/LZMA/Base;->StateIsCharState(I)Z

    move-result v51

    if-nez v51, :cond_a

    const/16 v51, 0x1

    :goto_3
    move-object/from16 v0, v54

    move/from16 v1, v51

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2, v11}, LSevenZip/Compression/LZMA/Encoder$LiteralEncoder$Encoder2;->GetPrice(ZBB)I

    move-result v51

    add-int v51, v51, v53

    move/from16 v0, v51

    move-object/from16 v1, v52

    iput v0, v1, LSevenZip/Compression/LZMA/Encoder$Optimal;->Price:I

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_optimum:[LSevenZip/Compression/LZMA/Encoder$Optimal;

    move-object/from16 v51, v0

    const/16 v52, 0x1

    aget-object v51, v51, v52

    invoke-virtual/range {v51 .. v51}, LSevenZip/Compression/LZMA/Encoder$Optimal;->MakeAsChar()V

    .line 612
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_isMatch:[S

    move-object/from16 v51, v0

    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder;->_state:I

    move/from16 v52, v0

    shl-int/lit8 v52, v52, 0x4

    add-int v52, v52, v39

    aget-short v51, v51, v52

    invoke-static/range {v51 .. v51}, LSevenZip/Compression/RangeCoder/Encoder;->GetPrice1(I)I

    move-result v23

    .line 613
    .local v23, "matchPrice":I
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_isRep:[S

    move-object/from16 v51, v0

    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder;->_state:I

    move/from16 v52, v0

    aget-short v51, v51, v52

    invoke-static/range {v51 .. v51}, LSevenZip/Compression/RangeCoder/Encoder;->GetPrice1(I)I

    move-result v51

    add-int v44, v23, v51

    .line 615
    .local v44, "repMatchPrice":I
    move/from16 v0, v22

    if-ne v0, v11, :cond_9

    .line 617
    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder;->_state:I

    move/from16 v51, v0

    move-object/from16 v0, p0

    move/from16 v1, v51

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, LSevenZip/Compression/LZMA/Encoder;->GetRepLen1Price(II)I

    move-result v51

    add-int v46, v44, v51

    .line 618
    .local v46, "shortRepPrice":I
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_optimum:[LSevenZip/Compression/LZMA/Encoder$Optimal;

    move-object/from16 v51, v0

    const/16 v52, 0x1

    aget-object v51, v51, v52

    move-object/from16 v0, v51

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder$Optimal;->Price:I

    move/from16 v51, v0

    move/from16 v0, v46

    move/from16 v1, v51

    if-ge v0, v1, :cond_9

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_optimum:[LSevenZip/Compression/LZMA/Encoder$Optimal;

    move-object/from16 v51, v0

    const/16 v52, 0x1

    aget-object v51, v51, v52

    move/from16 v0, v46

    move-object/from16 v1, v51

    iput v0, v1, LSevenZip/Compression/LZMA/Encoder$Optimal;->Price:I

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_optimum:[LSevenZip/Compression/LZMA/Encoder$Optimal;

    move-object/from16 v51, v0

    const/16 v52, 0x1

    aget-object v51, v51, v52

    invoke-virtual/range {v51 .. v51}, LSevenZip/Compression/LZMA/Encoder$Optimal;->MakeAsShortRep()V

    .line 625
    .end local v46    # "shortRepPrice":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->repLens:[I

    move-object/from16 v51, v0

    aget v51, v51, v45

    move/from16 v0, v17

    move/from16 v1, v51

    if-lt v0, v1, :cond_b

    move/from16 v16, v17

    .line 627
    .local v16, "lenEnd":I
    :goto_4
    const/16 v51, 0x2

    move/from16 v0, v16

    move/from16 v1, v51

    if-ge v0, v1, :cond_c

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_optimum:[LSevenZip/Compression/LZMA/Encoder$Optimal;

    move-object/from16 v51, v0

    const/16 v52, 0x1

    aget-object v51, v51, v52

    move-object/from16 v0, v51

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder$Optimal;->BackPrev:I

    move/from16 v51, v0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, LSevenZip/Compression/LZMA/Encoder;->backRes:I

    .line 630
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 608
    .end local v16    # "lenEnd":I
    .end local v23    # "matchPrice":I
    .end local v44    # "repMatchPrice":I
    :cond_a
    const/16 v51, 0x0

    goto/16 :goto_3

    .line 625
    .restart local v23    # "matchPrice":I
    .restart local v44    # "repMatchPrice":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->repLens:[I

    move-object/from16 v51, v0

    aget v16, v51, v45

    goto :goto_4

    .line 633
    .restart local v16    # "lenEnd":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_optimum:[LSevenZip/Compression/LZMA/Encoder$Optimal;

    move-object/from16 v51, v0

    const/16 v52, 0x1

    aget-object v51, v51, v52

    const/16 v52, 0x0

    move/from16 v0, v52

    move-object/from16 v1, v51

    iput v0, v1, LSevenZip/Compression/LZMA/Encoder$Optimal;->PosPrev:I

    .line 635
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_optimum:[LSevenZip/Compression/LZMA/Encoder$Optimal;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    aget-object v51, v51, v52

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->reps:[I

    move-object/from16 v52, v0

    const/16 v53, 0x0

    aget v52, v52, v53

    move/from16 v0, v52

    move-object/from16 v1, v51

    iput v0, v1, LSevenZip/Compression/LZMA/Encoder$Optimal;->Backs0:I

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_optimum:[LSevenZip/Compression/LZMA/Encoder$Optimal;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    aget-object v51, v51, v52

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->reps:[I

    move-object/from16 v52, v0

    const/16 v53, 0x1

    aget v52, v52, v53

    move/from16 v0, v52

    move-object/from16 v1, v51

    iput v0, v1, LSevenZip/Compression/LZMA/Encoder$Optimal;->Backs1:I

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_optimum:[LSevenZip/Compression/LZMA/Encoder$Optimal;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    aget-object v51, v51, v52

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->reps:[I

    move-object/from16 v52, v0

    const/16 v53, 0x2

    aget v52, v52, v53

    move/from16 v0, v52

    move-object/from16 v1, v51

    iput v0, v1, LSevenZip/Compression/LZMA/Encoder$Optimal;->Backs2:I

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_optimum:[LSevenZip/Compression/LZMA/Encoder$Optimal;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    aget-object v51, v51, v52

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->reps:[I

    move-object/from16 v52, v0

    const/16 v53, 0x3

    aget v52, v52, v53

    move/from16 v0, v52

    move-object/from16 v1, v51

    iput v0, v1, LSevenZip/Compression/LZMA/Encoder$Optimal;->Backs3:I

    .line 640
    move/from16 v14, v16

    .line 642
    .local v14, "len":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_optimum:[LSevenZip/Compression/LZMA/Encoder$Optimal;

    move-object/from16 v51, v0

    add-int/lit8 v15, v14, -0x1

    .end local v14    # "len":I
    .local v15, "len":I
    aget-object v51, v51, v14

    const v52, 0xfffffff

    move/from16 v0, v52

    move-object/from16 v1, v51

    iput v0, v1, LSevenZip/Compression/LZMA/Encoder$Optimal;->Price:I

    .line 643
    const/16 v51, 0x2

    move/from16 v0, v51

    if-ge v15, v0, :cond_3b

    .line 645
    const/4 v13, 0x0

    :goto_6
    const/16 v51, 0x4

    move/from16 v0, v51

    if-ge v13, v0, :cond_10

    .line 647
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->repLens:[I

    move-object/from16 v51, v0

    aget v43, v51, v13

    .line 648
    .local v43, "repLen":I
    const/16 v51, 0x2

    move/from16 v0, v43

    move/from16 v1, v51

    if-ge v0, v1, :cond_d

    .line 645
    :goto_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 650
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder;->_state:I

    move/from16 v51, v0

    move-object/from16 v0, p0

    move/from16 v1, v51

    move/from16 v2, v39

    invoke-virtual {v0, v13, v1, v2}, LSevenZip/Compression/LZMA/Encoder;->GetPureRepPrice(III)I

    move-result v51

    add-int v41, v44, v51

    .line 653
    .local v41, "price":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_repMatchLenEncoder:LSevenZip/Compression/LZMA/Encoder$LenPriceTableEncoder;

    move-object/from16 v51, v0

    add-int/lit8 v52, v43, -0x2

    move-object/from16 v0, v51

    move/from16 v1, v52

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, LSevenZip/Compression/LZMA/Encoder$LenPriceTableEncoder;->GetPrice(II)I

    move-result v51

    add-int v8, v41, v51

    .line 654
    .local v8, "curAndLenPrice":I
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_optimum:[LSevenZip/Compression/LZMA/Encoder$Optimal;

    move-object/from16 v51, v0

    aget-object v36, v51, v43

    .line 655
    .local v36, "optimum":LSevenZip/Compression/LZMA/Encoder$Optimal;
    move-object/from16 v0, v36

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder$Optimal;->Price:I

    move/from16 v51, v0

    move/from16 v0, v51

    if-ge v8, v0, :cond_f

    .line 657
    move-object/from16 v0, v36

    iput v8, v0, LSevenZip/Compression/LZMA/Encoder$Optimal;->Price:I

    .line 658
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, v36

    iput v0, v1, LSevenZip/Compression/LZMA/Encoder$Optimal;->PosPrev:I

    .line 659
    move-object/from16 v0, v36

    iput v13, v0, LSevenZip/Compression/LZMA/Encoder$Optimal;->BackPrev:I

    .line 660
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, v36

    iput-boolean v0, v1, LSevenZip/Compression/LZMA/Encoder$Optimal;->Prev1IsChar:Z

    .line 663
    :cond_f
    add-int/lit8 v43, v43, -0x1

    const/16 v51, 0x2

    move/from16 v0, v43

    move/from16 v1, v51

    if-ge v0, v1, :cond_e

    goto :goto_7

    .line 666
    .end local v8    # "curAndLenPrice":I
    .end local v36    # "optimum":LSevenZip/Compression/LZMA/Encoder$Optimal;
    .end local v41    # "price":I
    .end local v43    # "repLen":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_isRep:[S

    move-object/from16 v51, v0

    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder;->_state:I

    move/from16 v52, v0

    aget-short v51, v51, v52

    invoke-static/range {v51 .. v51}, LSevenZip/Compression/RangeCoder/Encoder;->GetPrice0(I)I

    move-result v51

    add-int v29, v23, v51

    .line 668
    .local v29, "normalMatchPrice":I
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->repLens:[I

    move-object/from16 v51, v0

    const/16 v52, 0x0

    aget v51, v51, v52

    const/16 v52, 0x2

    move/from16 v0, v51

    move/from16 v1, v52

    if-lt v0, v1, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->repLens:[I

    move-object/from16 v51, v0

    const/16 v52, 0x0

    aget v51, v51, v52

    add-int/lit8 v14, v51, 0x1

    .line 669
    .end local v15    # "len":I
    .restart local v14    # "len":I
    :goto_8
    move/from16 v0, v17

    if-gt v14, v0, :cond_15

    .line 671
    const/16 v33, 0x0

    .line 672
    .local v33, "offs":I
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_matchDistances:[I

    move-object/from16 v51, v0

    aget v51, v51, v33

    move/from16 v0, v51

    if-le v14, v0, :cond_13

    .line 673
    add-int/lit8 v33, v33, 0x2

    goto :goto_9

    .line 668
    .end local v14    # "len":I
    .end local v33    # "offs":I
    .restart local v15    # "len":I
    :cond_11
    const/4 v14, 0x2

    goto :goto_8

    .line 674
    .end local v15    # "len":I
    .restart local v8    # "curAndLenPrice":I
    .local v12, "distance":I
    .restart local v14    # "len":I
    .restart local v33    # "offs":I
    .restart local v36    # "optimum":LSevenZip/Compression/LZMA/Encoder$Optimal;
    :cond_12
    add-int/lit8 v14, v14, 0x1

    .line 676
    .end local v8    # "curAndLenPrice":I
    .end local v12    # "distance":I
    .end local v36    # "optimum":LSevenZip/Compression/LZMA/Encoder$Optimal;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_matchDistances:[I

    move-object/from16 v51, v0

    add-int/lit8 v52, v33, 0x1

    aget v12, v51, v52

    .line 677
    .restart local v12    # "distance":I
    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v12, v14, v1}, LSevenZip/Compression/LZMA/Encoder;->GetPosLenPrice(III)I

    move-result v51

    add-int v8, v29, v51

    .line 678
    .restart local v8    # "curAndLenPrice":I
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_optimum:[LSevenZip/Compression/LZMA/Encoder$Optimal;

    move-object/from16 v51, v0

    aget-object v36, v51, v14

    .line 679
    .restart local v36    # "optimum":LSevenZip/Compression/LZMA/Encoder$Optimal;
    move-object/from16 v0, v36

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder$Optimal;->Price:I

    move/from16 v51, v0

    move/from16 v0, v51

    if-ge v8, v0, :cond_14

    .line 681
    move-object/from16 v0, v36

    iput v8, v0, LSevenZip/Compression/LZMA/Encoder$Optimal;->Price:I

    .line 682
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, v36

    iput v0, v1, LSevenZip/Compression/LZMA/Encoder$Optimal;->PosPrev:I

    .line 683
    add-int/lit8 v51, v12, 0x4

    move/from16 v0, v51

    move-object/from16 v1, v36

    iput v0, v1, LSevenZip/Compression/LZMA/Encoder$Optimal;->BackPrev:I

    .line 684
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, v36

    iput-boolean v0, v1, LSevenZip/Compression/LZMA/Encoder$Optimal;->Prev1IsChar:Z

    .line 686
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_matchDistances:[I

    move-object/from16 v51, v0

    aget v51, v51, v33

    move/from16 v0, v51

    if-ne v14, v0, :cond_12

    .line 688
    add-int/lit8 v33, v33, 0x2

    .line 689
    move/from16 v0, v33

    move/from16 v1, v32

    if-ne v0, v1, :cond_12

    .line 695
    .end local v8    # "curAndLenPrice":I
    .end local v12    # "distance":I
    .end local v33    # "offs":I
    .end local v36    # "optimum":LSevenZip/Compression/LZMA/Encoder$Optimal;
    :cond_15
    const/4 v5, 0x0

    .line 699
    .local v5, "cur":I
    :cond_16
    add-int/lit8 v5, v5, 0x1

    .line 700
    move/from16 v0, v16

    if-ne v5, v0, :cond_17

    .line 701
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, LSevenZip/Compression/LZMA/Encoder;->Backward(I)I

    move-result v18

    goto/16 :goto_0

    .line 702
    :cond_17
    invoke-virtual/range {p0 .. p0}, LSevenZip/Compression/LZMA/Encoder;->ReadMatchDistances()I

    move-result v24

    .line 703
    .local v24, "newLen":I
    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder;->_numDistancePairs:I

    move/from16 v32, v0

    .line 704
    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder;->_numFastBytes:I

    move/from16 v51, v0

    move/from16 v0, v24

    move/from16 v1, v51

    if-lt v0, v1, :cond_18

    .line 707
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, LSevenZip/Compression/LZMA/Encoder;->_longestMatchLength:I

    .line 708
    const/16 v51, 0x1

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, LSevenZip/Compression/LZMA/Encoder;->_longestMatchWasFound:Z

    .line 709
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, LSevenZip/Compression/LZMA/Encoder;->Backward(I)I

    move-result v18

    goto/16 :goto_0

    .line 711
    :cond_18
    add-int/lit8 p1, p1, 0x1

    .line 712
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_optimum:[LSevenZip/Compression/LZMA/Encoder$Optimal;

    move-object/from16 v51, v0

    aget-object v51, v51, v5

    move-object/from16 v0, v51

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder$Optimal;->PosPrev:I

    move/from16 v38, v0

    .line 714
    .local v38, "posPrev":I
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_optimum:[LSevenZip/Compression/LZMA/Encoder$Optimal;

    move-object/from16 v51, v0

    aget-object v51, v51, v5

    move-object/from16 v0, v51

    iget-boolean v0, v0, LSevenZip/Compression/LZMA/Encoder$Optimal;->Prev1IsChar:Z

    move/from16 v51, v0

    if-eqz v51, :cond_1f

    .line 716
    add-int/lit8 v38, v38, -0x1

    .line 717
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_optimum:[LSevenZip/Compression/LZMA/Encoder$Optimal;

    move-object/from16 v51, v0

    aget-object v51, v51, v5

    move-object/from16 v0, v51

    iget-boolean v0, v0, LSevenZip/Compression/LZMA/Encoder$Optimal;->Prev2:Z

    move/from16 v51, v0

    if-eqz v51, :cond_1e

    .line 719
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_optimum:[LSevenZip/Compression/LZMA/Encoder$Optimal;

    move-object/from16 v51, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_optimum:[LSevenZip/Compression/LZMA/Encoder$Optimal;

    move-object/from16 v52, v0

    aget-object v52, v52, v5

    move-object/from16 v0, v52

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder$Optimal;->PosPrev2:I

    move/from16 v52, v0

    aget-object v51, v51, v52

    move-object/from16 v0, v51

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder$Optimal;->State:I

    move/from16 v48, v0

    .line 720
    .local v48, "state":I
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_optimum:[LSevenZip/Compression/LZMA/Encoder$Optimal;

    move-object/from16 v51, v0

    aget-object v51, v51, v5

    move-object/from16 v0, v51

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder$Optimal;->BackPrev2:I

    move/from16 v51, v0

    const/16 v52, 0x4

    move/from16 v0, v51

    move/from16 v1, v52

    if-ge v0, v1, :cond_1d

    .line 721
    invoke-static/range {v48 .. v48}, LSevenZip/Compression/LZMA/Base;->StateUpdateRep(I)I

    move-result v48

    .line 727
    :goto_a
    invoke-static/range {v48 .. v48}, LSevenZip/Compression/LZMA/Base;->StateUpdateChar(I)I

    move-result v48

    .line 731
    :goto_b
    add-int/lit8 v51, v5, -0x1

    move/from16 v0, v38

    move/from16 v1, v51

    if-ne v0, v1, :cond_21

    .line 733
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_optimum:[LSevenZip/Compression/LZMA/Encoder$Optimal;

    move-object/from16 v51, v0

    aget-object v51, v51, v5

    invoke-virtual/range {v51 .. v51}, LSevenZip/Compression/LZMA/Encoder$Optimal;->IsShortRep()Z

    move-result v51

    if-eqz v51, :cond_20

    .line 734
    invoke-static/range {v48 .. v48}, LSevenZip/Compression/LZMA/Base;->StateUpdateShortRep(I)I

    move-result v48

    .line 795
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_optimum:[LSevenZip/Compression/LZMA/Encoder$Optimal;

    move-object/from16 v51, v0

    aget-object v51, v51, v5

    move/from16 v0, v48

    move-object/from16 v1, v51

    iput v0, v1, LSevenZip/Compression/LZMA/Encoder$Optimal;->State:I

    .line 796
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_optimum:[LSevenZip/Compression/LZMA/Encoder$Optimal;

    move-object/from16 v51, v0

    aget-object v51, v51, v5

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->reps:[I

    move-object/from16 v52, v0

    const/16 v53, 0x0

    aget v52, v52, v53

    move/from16 v0, v52

    move-object/from16 v1, v51

    iput v0, v1, LSevenZip/Compression/LZMA/Encoder$Optimal;->Backs0:I

    .line 797
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_optimum:[LSevenZip/Compression/LZMA/Encoder$Optimal;

    move-object/from16 v51, v0

    aget-object v51, v51, v5

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->reps:[I

    move-object/from16 v52, v0

    const/16 v53, 0x1

    aget v52, v52, v53

    move/from16 v0, v52

    move-object/from16 v1, v51

    iput v0, v1, LSevenZip/Compression/LZMA/Encoder$Optimal;->Backs1:I

    .line 798
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_optimum:[LSevenZip/Compression/LZMA/Encoder$Optimal;

    move-object/from16 v51, v0

    aget-object v51, v51, v5

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->reps:[I

    move-object/from16 v52, v0

    const/16 v53, 0x2

    aget v52, v52, v53

    move/from16 v0, v52

    move-object/from16 v1, v51

    iput v0, v1, LSevenZip/Compression/LZMA/Encoder$Optimal;->Backs2:I

    .line 799
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_optimum:[LSevenZip/Compression/LZMA/Encoder$Optimal;

    move-object/from16 v51, v0

    aget-object v51, v51, v5

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->reps:[I

    move-object/from16 v52, v0

    const/16 v53, 0x3

    aget v52, v52, v53

    move/from16 v0, v52

    move-object/from16 v1, v51

    iput v0, v1, LSevenZip/Compression/LZMA/Encoder$Optimal;->Backs3:I

    .line 800
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_optimum:[LSevenZip/Compression/LZMA/Encoder$Optimal;

    move-object/from16 v51, v0

    aget-object v51, v51, v5

    move-object/from16 v0, v51

    iget v10, v0, LSevenZip/Compression/LZMA/Encoder$Optimal;->Price:I

    .line 802
    .local v10, "curPrice":I
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_matchFinder:LSevenZip/Compression/LZ/BinTree;

    move-object/from16 v51, v0

    const/16 v52, -0x1

    invoke-virtual/range {v51 .. v52}, LSevenZip/Compression/LZ/BinTree;->GetIndexByte(I)B

    move-result v11

    .line 803
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_matchFinder:LSevenZip/Compression/LZ/BinTree;

    move-object/from16 v51, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->reps:[I

    move-object/from16 v52, v0

    const/16 v53, 0x0

    aget v52, v52, v53

    rsub-int/lit8 v52, v52, 0x0

    add-int/lit8 v52, v52, -0x1

    add-int/lit8 v52, v52, -0x1

    invoke-virtual/range {v51 .. v52}, LSevenZip/Compression/LZ/BinTree;->GetIndexByte(I)B

    move-result v22

    .line 805
    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder;->_posStateMask:I

    move/from16 v51, v0

    and-int v39, p1, v51

    .line 807
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_isMatch:[S

    move-object/from16 v51, v0

    shl-int/lit8 v52, v48, 0x4

    add-int v52, v52, v39

    aget-short v51, v51, v52

    invoke-static/range {v51 .. v51}, LSevenZip/Compression/RangeCoder/Encoder;->GetPrice0(I)I

    move-result v51

    add-int v52, v10, v51

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_literalEncoder:LSevenZip/Compression/LZMA/Encoder$LiteralEncoder;

    move-object/from16 v51, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_matchFinder:LSevenZip/Compression/LZ/BinTree;

    move-object/from16 v53, v0

    const/16 v54, -0x2

    invoke-virtual/range {v53 .. v54}, LSevenZip/Compression/LZ/BinTree;->GetIndexByte(I)B

    move-result v53

    move-object/from16 v0, v51

    move/from16 v1, p1

    move/from16 v2, v53

    invoke-virtual {v0, v1, v2}, LSevenZip/Compression/LZMA/Encoder$LiteralEncoder;->GetSubCoder(IB)LSevenZip/Compression/LZMA/Encoder$LiteralEncoder$Encoder2;

    move-result-object v53

    invoke-static/range {v48 .. v48}, LSevenZip/Compression/LZMA/Base;->StateIsCharState(I)Z

    move-result v51

    if-nez v51, :cond_28

    const/16 v51, 0x1

    :goto_d
    move-object/from16 v0, v53

    move/from16 v1, v51

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2, v11}, LSevenZip/Compression/LZMA/Encoder$LiteralEncoder$Encoder2;->GetPrice(ZBB)I

    move-result v51

    add-int v6, v52, v51

    .line 812
    .local v6, "curAnd1Price":I
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_optimum:[LSevenZip/Compression/LZMA/Encoder$Optimal;

    move-object/from16 v51, v0

    add-int/lit8 v52, v5, 0x1

    aget-object v27, v51, v52

    .line 814
    .local v27, "nextOptimum":LSevenZip/Compression/LZMA/Encoder$Optimal;
    const/16 v25, 0x0

    .line 815
    .local v25, "nextIsChar":Z
    move-object/from16 v0, v27

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder$Optimal;->Price:I

    move/from16 v51, v0

    move/from16 v0, v51

    if-ge v6, v0, :cond_19

    .line 817
    move-object/from16 v0, v27

    iput v6, v0, LSevenZip/Compression/LZMA/Encoder$Optimal;->Price:I

    .line 818
    move-object/from16 v0, v27

    iput v5, v0, LSevenZip/Compression/LZMA/Encoder$Optimal;->PosPrev:I

    .line 819
    invoke-virtual/range {v27 .. v27}, LSevenZip/Compression/LZMA/Encoder$Optimal;->MakeAsChar()V

    .line 820
    const/16 v25, 0x1

    .line 823
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_isMatch:[S

    move-object/from16 v51, v0

    shl-int/lit8 v52, v48, 0x4

    add-int v52, v52, v39

    aget-short v51, v51, v52

    invoke-static/range {v51 .. v51}, LSevenZip/Compression/RangeCoder/Encoder;->GetPrice1(I)I

    move-result v51

    add-int v23, v10, v51

    .line 824
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_isRep:[S

    move-object/from16 v51, v0

    aget-short v51, v51, v48

    invoke-static/range {v51 .. v51}, LSevenZip/Compression/RangeCoder/Encoder;->GetPrice1(I)I

    move-result v51

    add-int v44, v23, v51

    .line 826
    move/from16 v0, v22

    if-ne v0, v11, :cond_1b

    move-object/from16 v0, v27

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder$Optimal;->PosPrev:I

    move/from16 v51, v0

    move/from16 v0, v51

    if-ge v0, v5, :cond_1a

    move-object/from16 v0, v27

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder$Optimal;->BackPrev:I

    move/from16 v51, v0

    if-eqz v51, :cond_1b

    .line 829
    :cond_1a
    move-object/from16 v0, p0

    move/from16 v1, v48

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, LSevenZip/Compression/LZMA/Encoder;->GetRepLen1Price(II)I

    move-result v51

    add-int v46, v44, v51

    .line 830
    .restart local v46    # "shortRepPrice":I
    move-object/from16 v0, v27

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder$Optimal;->Price:I

    move/from16 v51, v0

    move/from16 v0, v46

    move/from16 v1, v51

    if-gt v0, v1, :cond_1b

    .line 832
    move/from16 v0, v46

    move-object/from16 v1, v27

    iput v0, v1, LSevenZip/Compression/LZMA/Encoder$Optimal;->Price:I

    .line 833
    move-object/from16 v0, v27

    iput v5, v0, LSevenZip/Compression/LZMA/Encoder$Optimal;->PosPrev:I

    .line 834
    invoke-virtual/range {v27 .. v27}, LSevenZip/Compression/LZMA/Encoder$Optimal;->MakeAsShortRep()V

    .line 835
    const/16 v25, 0x1

    .line 839
    .end local v46    # "shortRepPrice":I
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_matchFinder:LSevenZip/Compression/LZ/BinTree;

    move-object/from16 v51, v0

    invoke-virtual/range {v51 .. v51}, LSevenZip/Compression/LZ/BinTree;->GetNumAvailableBytes()I

    move-result v51

    add-int/lit8 v31, v51, 0x1

    .line 840
    .local v31, "numAvailableBytesFull":I
    rsub-int v0, v5, 0xfff

    move/from16 v51, v0

    move/from16 v0, v51

    move/from16 v1, v31

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v31

    .line 841
    move/from16 v30, v31

    .line 843
    const/16 v51, 0x2

    move/from16 v0, v30

    move/from16 v1, v51

    if-lt v0, v1, :cond_16

    .line 845
    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder;->_numFastBytes:I

    move/from16 v51, v0

    move/from16 v0, v30

    move/from16 v1, v51

    if-le v0, v1, :cond_1c

    .line 846
    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder;->_numFastBytes:I

    move/from16 v30, v0

    .line 847
    :cond_1c
    if-nez v25, :cond_2a

    move/from16 v0, v22

    if-eq v0, v11, :cond_2a

    .line 850
    add-int/lit8 v51, v31, -0x1

    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder;->_numFastBytes:I

    move/from16 v52, v0

    invoke-static/range {v51 .. v52}, Ljava/lang/Math;->min(II)I

    move-result v50

    .line 851
    .local v50, "t":I
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_matchFinder:LSevenZip/Compression/LZ/BinTree;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->reps:[I

    move-object/from16 v53, v0

    const/16 v54, 0x0

    aget v53, v53, v54

    move-object/from16 v0, v51

    move/from16 v1, v52

    move/from16 v2, v53

    move/from16 v3, v50

    invoke-virtual {v0, v1, v2, v3}, LSevenZip/Compression/LZ/BinTree;->GetMatchLen(III)I

    move-result v20

    .line 852
    .local v20, "lenTest2":I
    const/16 v51, 0x2

    move/from16 v0, v20

    move/from16 v1, v51

    if-lt v0, v1, :cond_2a

    .line 854
    invoke-static/range {v48 .. v48}, LSevenZip/Compression/LZMA/Base;->StateUpdateChar(I)I

    move-result v49

    .line 856
    .local v49, "state2":I
    add-int/lit8 v51, p1, 0x1

    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder;->_posStateMask:I

    move/from16 v52, v0

    and-int v40, v51, v52

    .line 857
    .local v40, "posStateNext":I
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_isMatch:[S

    move-object/from16 v51, v0

    shl-int/lit8 v52, v49, 0x4

    add-int v52, v52, v40

    aget-short v51, v51, v52

    invoke-static/range {v51 .. v51}, LSevenZip/Compression/RangeCoder/Encoder;->GetPrice1(I)I

    move-result v51

    add-int v51, v51, v6

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_isRep:[S

    move-object/from16 v52, v0

    aget-short v52, v52, v49

    invoke-static/range {v52 .. v52}, LSevenZip/Compression/RangeCoder/Encoder;->GetPrice1(I)I

    move-result v52

    add-int v28, v51, v52

    .line 861
    .local v28, "nextRepMatchPrice":I
    add-int/lit8 v51, v5, 0x1

    add-int v34, v51, v20

    .line 862
    .local v34, "offset":I
    :goto_e
    move/from16 v0, v16

    move/from16 v1, v34

    if-ge v0, v1, :cond_29

    .line 863
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_optimum:[LSevenZip/Compression/LZMA/Encoder$Optimal;

    move-object/from16 v51, v0

    add-int/lit8 v16, v16, 0x1

    aget-object v51, v51, v16

    const v52, 0xfffffff

    move/from16 v0, v52

    move-object/from16 v1, v51

    iput v0, v1, LSevenZip/Compression/LZMA/Encoder$Optimal;->Price:I

    goto :goto_e

    .line 723
    .end local v6    # "curAnd1Price":I
    .end local v10    # "curPrice":I
    .end local v20    # "lenTest2":I
    .end local v25    # "nextIsChar":Z
    .end local v27    # "nextOptimum":LSevenZip/Compression/LZMA/Encoder$Optimal;
    .end local v28    # "nextRepMatchPrice":I
    .end local v31    # "numAvailableBytesFull":I
    .end local v34    # "offset":I
    .end local v40    # "posStateNext":I
    .end local v49    # "state2":I
    .end local v50    # "t":I
    :cond_1d
    invoke-static/range {v48 .. v48}, LSevenZip/Compression/LZMA/Base;->StateUpdateMatch(I)I

    move-result v48

    goto/16 :goto_a

    .line 726
    .end local v48    # "state":I
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_optimum:[LSevenZip/Compression/LZMA/Encoder$Optimal;

    move-object/from16 v51, v0

    aget-object v51, v51, v38

    move-object/from16 v0, v51

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder$Optimal;->State:I

    move/from16 v48, v0

    .restart local v48    # "state":I
    goto/16 :goto_a

    .line 730
    .end local v48    # "state":I
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_optimum:[LSevenZip/Compression/LZMA/Encoder$Optimal;

    move-object/from16 v51, v0

    aget-object v51, v51, v38

    move-object/from16 v0, v51

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder$Optimal;->State:I

    move/from16 v48, v0

    .restart local v48    # "state":I
    goto/16 :goto_b

    .line 736
    :cond_20
    invoke-static/range {v48 .. v48}, LSevenZip/Compression/LZMA/Base;->StateUpdateChar(I)I

    move-result v48

    goto/16 :goto_c

    .line 741
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_optimum:[LSevenZip/Compression/LZMA/Encoder$Optimal;

    move-object/from16 v51, v0

    aget-object v51, v51, v5

    move-object/from16 v0, v51

    iget-boolean v0, v0, LSevenZip/Compression/LZMA/Encoder$Optimal;->Prev1IsChar:Z

    move/from16 v51, v0

    if-eqz v51, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_optimum:[LSevenZip/Compression/LZMA/Encoder$Optimal;

    move-object/from16 v51, v0

    aget-object v51, v51, v5

    move-object/from16 v0, v51

    iget-boolean v0, v0, LSevenZip/Compression/LZMA/Encoder$Optimal;->Prev2:Z

    move/from16 v51, v0

    if-eqz v51, :cond_22

    .line 743
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_optimum:[LSevenZip/Compression/LZMA/Encoder$Optimal;

    move-object/from16 v51, v0

    aget-object v51, v51, v5

    move-object/from16 v0, v51

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder$Optimal;->PosPrev2:I

    move/from16 v38, v0

    .line 744
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_optimum:[LSevenZip/Compression/LZMA/Encoder$Optimal;

    move-object/from16 v51, v0

    aget-object v51, v51, v5

    move-object/from16 v0, v51

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder$Optimal;->BackPrev2:I

    move/from16 v37, v0

    .line 745
    .local v37, "pos":I
    invoke-static/range {v48 .. v48}, LSevenZip/Compression/LZMA/Base;->StateUpdateRep(I)I

    move-result v48

    .line 755
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_optimum:[LSevenZip/Compression/LZMA/Encoder$Optimal;

    move-object/from16 v51, v0

    aget-object v35, v51, v38

    .line 756
    .local v35, "opt":LSevenZip/Compression/LZMA/Encoder$Optimal;
    const/16 v51, 0x4

    move/from16 v0, v37

    move/from16 v1, v51

    if-ge v0, v1, :cond_27

    .line 758
    if-nez v37, :cond_24

    .line 760
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->reps:[I

    move-object/from16 v51, v0

    const/16 v52, 0x0

    move-object/from16 v0, v35

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder$Optimal;->Backs0:I

    move/from16 v53, v0

    aput v53, v51, v52

    .line 761
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->reps:[I

    move-object/from16 v51, v0

    const/16 v52, 0x1

    move-object/from16 v0, v35

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder$Optimal;->Backs1:I

    move/from16 v53, v0

    aput v53, v51, v52

    .line 762
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->reps:[I

    move-object/from16 v51, v0

    const/16 v52, 0x2

    move-object/from16 v0, v35

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder$Optimal;->Backs2:I

    move/from16 v53, v0

    aput v53, v51, v52

    .line 763
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->reps:[I

    move-object/from16 v51, v0

    const/16 v52, 0x3

    move-object/from16 v0, v35

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder$Optimal;->Backs3:I

    move/from16 v53, v0

    aput v53, v51, v52

    goto/16 :goto_c

    .line 749
    .end local v35    # "opt":LSevenZip/Compression/LZMA/Encoder$Optimal;
    .end local v37    # "pos":I
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_optimum:[LSevenZip/Compression/LZMA/Encoder$Optimal;

    move-object/from16 v51, v0

    aget-object v51, v51, v5

    move-object/from16 v0, v51

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder$Optimal;->BackPrev:I

    move/from16 v37, v0

    .line 750
    .restart local v37    # "pos":I
    const/16 v51, 0x4

    move/from16 v0, v37

    move/from16 v1, v51

    if-ge v0, v1, :cond_23

    .line 751
    invoke-static/range {v48 .. v48}, LSevenZip/Compression/LZMA/Base;->StateUpdateRep(I)I

    move-result v48

    goto :goto_f

    .line 753
    :cond_23
    invoke-static/range {v48 .. v48}, LSevenZip/Compression/LZMA/Base;->StateUpdateMatch(I)I

    move-result v48

    goto :goto_f

    .line 765
    .restart local v35    # "opt":LSevenZip/Compression/LZMA/Encoder$Optimal;
    :cond_24
    const/16 v51, 0x1

    move/from16 v0, v37

    move/from16 v1, v51

    if-ne v0, v1, :cond_25

    .line 767
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->reps:[I

    move-object/from16 v51, v0

    const/16 v52, 0x0

    move-object/from16 v0, v35

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder$Optimal;->Backs1:I

    move/from16 v53, v0

    aput v53, v51, v52

    .line 768
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->reps:[I

    move-object/from16 v51, v0

    const/16 v52, 0x1

    move-object/from16 v0, v35

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder$Optimal;->Backs0:I

    move/from16 v53, v0

    aput v53, v51, v52

    .line 769
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->reps:[I

    move-object/from16 v51, v0

    const/16 v52, 0x2

    move-object/from16 v0, v35

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder$Optimal;->Backs2:I

    move/from16 v53, v0

    aput v53, v51, v52

    .line 770
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->reps:[I

    move-object/from16 v51, v0

    const/16 v52, 0x3

    move-object/from16 v0, v35

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder$Optimal;->Backs3:I

    move/from16 v53, v0

    aput v53, v51, v52

    goto/16 :goto_c

    .line 772
    :cond_25
    const/16 v51, 0x2

    move/from16 v0, v37

    move/from16 v1, v51

    if-ne v0, v1, :cond_26

    .line 774
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->reps:[I

    move-object/from16 v51, v0

    const/16 v52, 0x0

    move-object/from16 v0, v35

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder$Optimal;->Backs2:I

    move/from16 v53, v0

    aput v53, v51, v52

    .line 775
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->reps:[I

    move-object/from16 v51, v0

    const/16 v52, 0x1

    move-object/from16 v0, v35

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder$Optimal;->Backs0:I

    move/from16 v53, v0

    aput v53, v51, v52

    .line 776
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->reps:[I

    move-object/from16 v51, v0

    const/16 v52, 0x2

    move-object/from16 v0, v35

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder$Optimal;->Backs1:I

    move/from16 v53, v0

    aput v53, v51, v52

    .line 777
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->reps:[I

    move-object/from16 v51, v0

    const/16 v52, 0x3

    move-object/from16 v0, v35

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder$Optimal;->Backs3:I

    move/from16 v53, v0

    aput v53, v51, v52

    goto/16 :goto_c

    .line 781
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->reps:[I

    move-object/from16 v51, v0

    const/16 v52, 0x0

    move-object/from16 v0, v35

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder$Optimal;->Backs3:I

    move/from16 v53, v0

    aput v53, v51, v52

    .line 782
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->reps:[I

    move-object/from16 v51, v0

    const/16 v52, 0x1

    move-object/from16 v0, v35

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder$Optimal;->Backs0:I

    move/from16 v53, v0

    aput v53, v51, v52

    .line 783
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->reps:[I

    move-object/from16 v51, v0

    const/16 v52, 0x2

    move-object/from16 v0, v35

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder$Optimal;->Backs1:I

    move/from16 v53, v0

    aput v53, v51, v52

    .line 784
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->reps:[I

    move-object/from16 v51, v0

    const/16 v52, 0x3

    move-object/from16 v0, v35

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder$Optimal;->Backs2:I

    move/from16 v53, v0

    aput v53, v51, v52

    goto/16 :goto_c

    .line 789
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->reps:[I

    move-object/from16 v51, v0

    const/16 v52, 0x0

    add-int/lit8 v53, v37, -0x4

    aput v53, v51, v52

    .line 790
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->reps:[I

    move-object/from16 v51, v0

    const/16 v52, 0x1

    move-object/from16 v0, v35

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder$Optimal;->Backs0:I

    move/from16 v53, v0

    aput v53, v51, v52

    .line 791
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->reps:[I

    move-object/from16 v51, v0

    const/16 v52, 0x2

    move-object/from16 v0, v35

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder$Optimal;->Backs1:I

    move/from16 v53, v0

    aput v53, v51, v52

    .line 792
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->reps:[I

    move-object/from16 v51, v0

    const/16 v52, 0x3

    move-object/from16 v0, v35

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder$Optimal;->Backs2:I

    move/from16 v53, v0

    aput v53, v51, v52

    goto/16 :goto_c

    .line 807
    .end local v35    # "opt":LSevenZip/Compression/LZMA/Encoder$Optimal;
    .end local v37    # "pos":I
    .restart local v10    # "curPrice":I
    :cond_28
    const/16 v51, 0x0

    goto/16 :goto_d

    .line 864
    .restart local v6    # "curAnd1Price":I
    .restart local v20    # "lenTest2":I
    .restart local v25    # "nextIsChar":Z
    .restart local v27    # "nextOptimum":LSevenZip/Compression/LZMA/Encoder$Optimal;
    .restart local v28    # "nextRepMatchPrice":I
    .restart local v31    # "numAvailableBytesFull":I
    .restart local v34    # "offset":I
    .restart local v40    # "posStateNext":I
    .restart local v49    # "state2":I
    .restart local v50    # "t":I
    :cond_29
    const/16 v51, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v51

    move/from16 v2, v20

    move/from16 v3, v49

    move/from16 v4, v40

    invoke-virtual {v0, v1, v2, v3, v4}, LSevenZip/Compression/LZMA/Encoder;->GetRepPrice(IIII)I

    move-result v51

    add-int v8, v28, v51

    .line 866
    .restart local v8    # "curAndLenPrice":I
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_optimum:[LSevenZip/Compression/LZMA/Encoder$Optimal;

    move-object/from16 v51, v0

    aget-object v36, v51, v34

    .line 867
    .restart local v36    # "optimum":LSevenZip/Compression/LZMA/Encoder$Optimal;
    move-object/from16 v0, v36

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder$Optimal;->Price:I

    move/from16 v51, v0

    move/from16 v0, v51

    if-ge v8, v0, :cond_2a

    .line 869
    move-object/from16 v0, v36

    iput v8, v0, LSevenZip/Compression/LZMA/Encoder$Optimal;->Price:I

    .line 870
    add-int/lit8 v51, v5, 0x1

    move/from16 v0, v51

    move-object/from16 v1, v36

    iput v0, v1, LSevenZip/Compression/LZMA/Encoder$Optimal;->PosPrev:I

    .line 871
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, v36

    iput v0, v1, LSevenZip/Compression/LZMA/Encoder$Optimal;->BackPrev:I

    .line 872
    const/16 v51, 0x1

    move/from16 v0, v51

    move-object/from16 v1, v36

    iput-boolean v0, v1, LSevenZip/Compression/LZMA/Encoder$Optimal;->Prev1IsChar:Z

    .line 873
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, v36

    iput-boolean v0, v1, LSevenZip/Compression/LZMA/Encoder$Optimal;->Prev2:Z

    .line 879
    .end local v8    # "curAndLenPrice":I
    .end local v20    # "lenTest2":I
    .end local v28    # "nextRepMatchPrice":I
    .end local v34    # "offset":I
    .end local v36    # "optimum":LSevenZip/Compression/LZMA/Encoder$Optimal;
    .end local v40    # "posStateNext":I
    .end local v49    # "state2":I
    .end local v50    # "t":I
    :cond_2a
    const/16 v47, 0x2

    .line 881
    .local v47, "startLen":I
    const/16 v42, 0x0

    .local v42, "repIndex":I
    :goto_10
    const/16 v51, 0x4

    move/from16 v0, v42

    move/from16 v1, v51

    if-ge v0, v1, :cond_32

    .line 883
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_matchFinder:LSevenZip/Compression/LZ/BinTree;

    move-object/from16 v51, v0

    const/16 v52, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->reps:[I

    move-object/from16 v53, v0

    aget v53, v53, v42

    move-object/from16 v0, v51

    move/from16 v1, v52

    move/from16 v2, v53

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, LSevenZip/Compression/LZ/BinTree;->GetMatchLen(III)I

    move-result v19

    .line 884
    .local v19, "lenTest":I
    const/16 v51, 0x2

    move/from16 v0, v19

    move/from16 v1, v51

    if-ge v0, v1, :cond_2c

    .line 881
    :cond_2b
    :goto_11
    add-int/lit8 v42, v42, 0x1

    goto :goto_10

    .line 886
    :cond_2c
    move/from16 v21, v19

    .line 889
    .local v21, "lenTestTemp":I
    :cond_2d
    :goto_12
    add-int v51, v5, v19

    move/from16 v0, v16

    move/from16 v1, v51

    if-ge v0, v1, :cond_2e

    .line 890
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_optimum:[LSevenZip/Compression/LZMA/Encoder$Optimal;

    move-object/from16 v51, v0

    add-int/lit8 v16, v16, 0x1

    aget-object v51, v51, v16

    const v52, 0xfffffff

    move/from16 v0, v52

    move-object/from16 v1, v51

    iput v0, v1, LSevenZip/Compression/LZMA/Encoder$Optimal;->Price:I

    goto :goto_12

    .line 891
    :cond_2e
    move-object/from16 v0, p0

    move/from16 v1, v42

    move/from16 v2, v19

    move/from16 v3, v48

    move/from16 v4, v39

    invoke-virtual {v0, v1, v2, v3, v4}, LSevenZip/Compression/LZMA/Encoder;->GetRepPrice(IIII)I

    move-result v51

    add-int v8, v44, v51

    .line 892
    .restart local v8    # "curAndLenPrice":I
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_optimum:[LSevenZip/Compression/LZMA/Encoder$Optimal;

    move-object/from16 v51, v0

    add-int v52, v5, v19

    aget-object v36, v51, v52

    .line 893
    .restart local v36    # "optimum":LSevenZip/Compression/LZMA/Encoder$Optimal;
    move-object/from16 v0, v36

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder$Optimal;->Price:I

    move/from16 v51, v0

    move/from16 v0, v51

    if-ge v8, v0, :cond_2f

    .line 895
    move-object/from16 v0, v36

    iput v8, v0, LSevenZip/Compression/LZMA/Encoder$Optimal;->Price:I

    .line 896
    move-object/from16 v0, v36

    iput v5, v0, LSevenZip/Compression/LZMA/Encoder$Optimal;->PosPrev:I

    .line 897
    move/from16 v0, v42

    move-object/from16 v1, v36

    iput v0, v1, LSevenZip/Compression/LZMA/Encoder$Optimal;->BackPrev:I

    .line 898
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, v36

    iput-boolean v0, v1, LSevenZip/Compression/LZMA/Encoder$Optimal;->Prev1IsChar:Z

    .line 901
    :cond_2f
    add-int/lit8 v19, v19, -0x1

    const/16 v51, 0x2

    move/from16 v0, v19

    move/from16 v1, v51

    if-ge v0, v1, :cond_2d

    .line 902
    move/from16 v19, v21

    .line 904
    if-nez v42, :cond_30

    .line 905
    add-int/lit8 v47, v19, 0x1

    .line 908
    :cond_30
    move/from16 v0, v19

    move/from16 v1, v31

    if-ge v0, v1, :cond_2b

    .line 910
    add-int/lit8 v51, v31, -0x1

    sub-int v51, v51, v19

    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder;->_numFastBytes:I

    move/from16 v52, v0

    invoke-static/range {v51 .. v52}, Ljava/lang/Math;->min(II)I

    move-result v50

    .line 911
    .restart local v50    # "t":I
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_matchFinder:LSevenZip/Compression/LZ/BinTree;

    move-object/from16 v51, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->reps:[I

    move-object/from16 v52, v0

    aget v52, v52, v42

    move-object/from16 v0, v51

    move/from16 v1, v19

    move/from16 v2, v52

    move/from16 v3, v50

    invoke-virtual {v0, v1, v2, v3}, LSevenZip/Compression/LZ/BinTree;->GetMatchLen(III)I

    move-result v20

    .line 912
    .restart local v20    # "lenTest2":I
    const/16 v51, 0x2

    move/from16 v0, v20

    move/from16 v1, v51

    if-lt v0, v1, :cond_2b

    .line 914
    invoke-static/range {v48 .. v48}, LSevenZip/Compression/LZMA/Base;->StateUpdateRep(I)I

    move-result v49

    .line 916
    .restart local v49    # "state2":I
    add-int v51, p1, v19

    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder;->_posStateMask:I

    move/from16 v52, v0

    and-int v40, v51, v52

    .line 917
    .restart local v40    # "posStateNext":I
    move-object/from16 v0, p0

    move/from16 v1, v42

    move/from16 v2, v19

    move/from16 v3, v48

    move/from16 v4, v39

    invoke-virtual {v0, v1, v2, v3, v4}, LSevenZip/Compression/LZMA/Encoder;->GetRepPrice(IIII)I

    move-result v51

    add-int v51, v51, v44

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_isMatch:[S

    move-object/from16 v52, v0

    shl-int/lit8 v53, v49, 0x4

    add-int v53, v53, v40

    aget-short v52, v52, v53

    invoke-static/range {v52 .. v52}, LSevenZip/Compression/RangeCoder/Encoder;->GetPrice0(I)I

    move-result v52

    add-int v51, v51, v52

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_literalEncoder:LSevenZip/Compression/LZMA/Encoder$LiteralEncoder;

    move-object/from16 v52, v0

    add-int v53, p1, v19

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_matchFinder:LSevenZip/Compression/LZ/BinTree;

    move-object/from16 v54, v0

    add-int/lit8 v55, v19, -0x1

    add-int/lit8 v55, v55, -0x1

    invoke-virtual/range {v54 .. v55}, LSevenZip/Compression/LZ/BinTree;->GetIndexByte(I)B

    move-result v54

    invoke-virtual/range {v52 .. v54}, LSevenZip/Compression/LZMA/Encoder$LiteralEncoder;->GetSubCoder(IB)LSevenZip/Compression/LZMA/Encoder$LiteralEncoder$Encoder2;

    move-result-object v52

    const/16 v53, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_matchFinder:LSevenZip/Compression/LZ/BinTree;

    move-object/from16 v54, v0

    add-int/lit8 v55, v19, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->reps:[I

    move-object/from16 v56, v0

    aget v56, v56, v42

    add-int/lit8 v56, v56, 0x1

    sub-int v55, v55, v56

    invoke-virtual/range {v54 .. v55}, LSevenZip/Compression/LZ/BinTree;->GetIndexByte(I)B

    move-result v54

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_matchFinder:LSevenZip/Compression/LZ/BinTree;

    move-object/from16 v55, v0

    add-int/lit8 v56, v19, -0x1

    invoke-virtual/range {v55 .. v56}, LSevenZip/Compression/LZ/BinTree;->GetIndexByte(I)B

    move-result v55

    invoke-virtual/range {v52 .. v55}, LSevenZip/Compression/LZMA/Encoder$LiteralEncoder$Encoder2;->GetPrice(ZBB)I

    move-result v52

    add-int v7, v51, v52

    .line 924
    .local v7, "curAndLenCharPrice":I
    invoke-static/range {v49 .. v49}, LSevenZip/Compression/LZMA/Base;->StateUpdateChar(I)I

    move-result v49

    .line 925
    add-int v51, p1, v19

    add-int/lit8 v51, v51, 0x1

    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder;->_posStateMask:I

    move/from16 v52, v0

    and-int v40, v51, v52

    .line 926
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_isMatch:[S

    move-object/from16 v51, v0

    shl-int/lit8 v52, v49, 0x4

    add-int v52, v52, v40

    aget-short v51, v51, v52

    invoke-static/range {v51 .. v51}, LSevenZip/Compression/RangeCoder/Encoder;->GetPrice1(I)I

    move-result v51

    add-int v26, v7, v51

    .line 927
    .local v26, "nextMatchPrice":I
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_isRep:[S

    move-object/from16 v51, v0

    aget-short v51, v51, v49

    invoke-static/range {v51 .. v51}, LSevenZip/Compression/RangeCoder/Encoder;->GetPrice1(I)I

    move-result v51

    add-int v28, v26, v51

    .line 931
    .restart local v28    # "nextRepMatchPrice":I
    add-int/lit8 v51, v19, 0x1

    add-int v34, v51, v20

    .line 932
    .restart local v34    # "offset":I
    :goto_13
    add-int v51, v5, v34

    move/from16 v0, v16

    move/from16 v1, v51

    if-ge v0, v1, :cond_31

    .line 933
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_optimum:[LSevenZip/Compression/LZMA/Encoder$Optimal;

    move-object/from16 v51, v0

    add-int/lit8 v16, v16, 0x1

    aget-object v51, v51, v16

    const v52, 0xfffffff

    move/from16 v0, v52

    move-object/from16 v1, v51

    iput v0, v1, LSevenZip/Compression/LZMA/Encoder$Optimal;->Price:I

    goto :goto_13

    .line 934
    :cond_31
    const/16 v51, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v51

    move/from16 v2, v20

    move/from16 v3, v49

    move/from16 v4, v40

    invoke-virtual {v0, v1, v2, v3, v4}, LSevenZip/Compression/LZMA/Encoder;->GetRepPrice(IIII)I

    move-result v51

    add-int v8, v28, v51

    .line 935
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_optimum:[LSevenZip/Compression/LZMA/Encoder$Optimal;

    move-object/from16 v51, v0

    add-int v52, v5, v34

    aget-object v36, v51, v52

    .line 936
    move-object/from16 v0, v36

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder$Optimal;->Price:I

    move/from16 v51, v0

    move/from16 v0, v51

    if-ge v8, v0, :cond_2b

    .line 938
    move-object/from16 v0, v36

    iput v8, v0, LSevenZip/Compression/LZMA/Encoder$Optimal;->Price:I

    .line 939
    add-int v51, v5, v19

    add-int/lit8 v51, v51, 0x1

    move/from16 v0, v51

    move-object/from16 v1, v36

    iput v0, v1, LSevenZip/Compression/LZMA/Encoder$Optimal;->PosPrev:I

    .line 940
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, v36

    iput v0, v1, LSevenZip/Compression/LZMA/Encoder$Optimal;->BackPrev:I

    .line 941
    const/16 v51, 0x1

    move/from16 v0, v51

    move-object/from16 v1, v36

    iput-boolean v0, v1, LSevenZip/Compression/LZMA/Encoder$Optimal;->Prev1IsChar:Z

    .line 942
    const/16 v51, 0x1

    move/from16 v0, v51

    move-object/from16 v1, v36

    iput-boolean v0, v1, LSevenZip/Compression/LZMA/Encoder$Optimal;->Prev2:Z

    .line 943
    move-object/from16 v0, v36

    iput v5, v0, LSevenZip/Compression/LZMA/Encoder$Optimal;->PosPrev2:I

    .line 944
    move/from16 v0, v42

    move-object/from16 v1, v36

    iput v0, v1, LSevenZip/Compression/LZMA/Encoder$Optimal;->BackPrev2:I

    goto/16 :goto_11

    .line 951
    .end local v7    # "curAndLenCharPrice":I
    .end local v8    # "curAndLenPrice":I
    .end local v19    # "lenTest":I
    .end local v20    # "lenTest2":I
    .end local v21    # "lenTestTemp":I
    .end local v26    # "nextMatchPrice":I
    .end local v28    # "nextRepMatchPrice":I
    .end local v34    # "offset":I
    .end local v36    # "optimum":LSevenZip/Compression/LZMA/Encoder$Optimal;
    .end local v40    # "posStateNext":I
    .end local v49    # "state2":I
    .end local v50    # "t":I
    :cond_32
    move/from16 v0, v24

    move/from16 v1, v30

    if-le v0, v1, :cond_34

    .line 953
    move/from16 v24, v30

    .line 954
    const/16 v32, 0x0

    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_matchDistances:[I

    move-object/from16 v51, v0

    aget v51, v51, v32

    move/from16 v0, v24

    move/from16 v1, v51

    if-le v0, v1, :cond_33

    add-int/lit8 v32, v32, 0x2

    goto :goto_14

    .line 955
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_matchDistances:[I

    move-object/from16 v51, v0

    aput v24, v51, v32

    .line 956
    add-int/lit8 v32, v32, 0x2

    .line 958
    :cond_34
    move/from16 v0, v24

    move/from16 v1, v47

    if-lt v0, v1, :cond_16

    .line 960
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_isRep:[S

    move-object/from16 v51, v0

    aget-short v51, v51, v48

    invoke-static/range {v51 .. v51}, LSevenZip/Compression/RangeCoder/Encoder;->GetPrice0(I)I

    move-result v51

    add-int v29, v23, v51

    .line 961
    :goto_15
    add-int v51, v5, v24

    move/from16 v0, v16

    move/from16 v1, v51

    if-ge v0, v1, :cond_35

    .line 962
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_optimum:[LSevenZip/Compression/LZMA/Encoder$Optimal;

    move-object/from16 v51, v0

    add-int/lit8 v16, v16, 0x1

    aget-object v51, v51, v16

    const v52, 0xfffffff

    move/from16 v0, v52

    move-object/from16 v1, v51

    iput v0, v1, LSevenZip/Compression/LZMA/Encoder$Optimal;->Price:I

    goto :goto_15

    .line 964
    :cond_35
    const/16 v33, 0x0

    .line 965
    .restart local v33    # "offs":I
    :goto_16
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_matchDistances:[I

    move-object/from16 v51, v0

    aget v51, v51, v33

    move/from16 v0, v47

    move/from16 v1, v51

    if-le v0, v1, :cond_36

    .line 966
    add-int/lit8 v33, v33, 0x2

    goto :goto_16

    .line 968
    :cond_36
    move/from16 v19, v47

    .line 970
    .restart local v19    # "lenTest":I
    :goto_17
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_matchDistances:[I

    move-object/from16 v51, v0

    add-int/lit8 v52, v33, 0x1

    aget v9, v51, v52

    .line 971
    .local v9, "curBack":I
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v39

    invoke-virtual {v0, v9, v1, v2}, LSevenZip/Compression/LZMA/Encoder;->GetPosLenPrice(III)I

    move-result v51

    add-int v8, v29, v51

    .line 972
    .restart local v8    # "curAndLenPrice":I
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_optimum:[LSevenZip/Compression/LZMA/Encoder$Optimal;

    move-object/from16 v51, v0

    add-int v52, v5, v19

    aget-object v36, v51, v52

    .line 973
    .restart local v36    # "optimum":LSevenZip/Compression/LZMA/Encoder$Optimal;
    move-object/from16 v0, v36

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder$Optimal;->Price:I

    move/from16 v51, v0

    move/from16 v0, v51

    if-ge v8, v0, :cond_37

    .line 975
    move-object/from16 v0, v36

    iput v8, v0, LSevenZip/Compression/LZMA/Encoder$Optimal;->Price:I

    .line 976
    move-object/from16 v0, v36

    iput v5, v0, LSevenZip/Compression/LZMA/Encoder$Optimal;->PosPrev:I

    .line 977
    add-int/lit8 v51, v9, 0x4

    move/from16 v0, v51

    move-object/from16 v1, v36

    iput v0, v1, LSevenZip/Compression/LZMA/Encoder$Optimal;->BackPrev:I

    .line 978
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, v36

    iput-boolean v0, v1, LSevenZip/Compression/LZMA/Encoder$Optimal;->Prev1IsChar:Z

    .line 981
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_matchDistances:[I

    move-object/from16 v51, v0

    aget v51, v51, v33

    move/from16 v0, v19

    move/from16 v1, v51

    if-ne v0, v1, :cond_3a

    .line 983
    move/from16 v0, v19

    move/from16 v1, v31

    if-ge v0, v1, :cond_39

    .line 985
    add-int/lit8 v51, v31, -0x1

    sub-int v51, v51, v19

    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder;->_numFastBytes:I

    move/from16 v52, v0

    invoke-static/range {v51 .. v52}, Ljava/lang/Math;->min(II)I

    move-result v50

    .line 986
    .restart local v50    # "t":I
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_matchFinder:LSevenZip/Compression/LZ/BinTree;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    move/from16 v1, v19

    move/from16 v2, v50

    invoke-virtual {v0, v1, v9, v2}, LSevenZip/Compression/LZ/BinTree;->GetMatchLen(III)I

    move-result v20

    .line 987
    .restart local v20    # "lenTest2":I
    const/16 v51, 0x2

    move/from16 v0, v20

    move/from16 v1, v51

    if-lt v0, v1, :cond_39

    .line 989
    invoke-static/range {v48 .. v48}, LSevenZip/Compression/LZMA/Base;->StateUpdateMatch(I)I

    move-result v49

    .line 991
    .restart local v49    # "state2":I
    add-int v51, p1, v19

    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder;->_posStateMask:I

    move/from16 v52, v0

    and-int v40, v51, v52

    .line 992
    .restart local v40    # "posStateNext":I
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_isMatch:[S

    move-object/from16 v51, v0

    shl-int/lit8 v52, v49, 0x4

    add-int v52, v52, v40

    aget-short v51, v51, v52

    invoke-static/range {v51 .. v51}, LSevenZip/Compression/RangeCoder/Encoder;->GetPrice0(I)I

    move-result v51

    add-int v51, v51, v8

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_literalEncoder:LSevenZip/Compression/LZMA/Encoder$LiteralEncoder;

    move-object/from16 v52, v0

    add-int v53, p1, v19

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_matchFinder:LSevenZip/Compression/LZ/BinTree;

    move-object/from16 v54, v0

    add-int/lit8 v55, v19, -0x1

    add-int/lit8 v55, v55, -0x1

    invoke-virtual/range {v54 .. v55}, LSevenZip/Compression/LZ/BinTree;->GetIndexByte(I)B

    move-result v54

    invoke-virtual/range {v52 .. v54}, LSevenZip/Compression/LZMA/Encoder$LiteralEncoder;->GetSubCoder(IB)LSevenZip/Compression/LZMA/Encoder$LiteralEncoder$Encoder2;

    move-result-object v52

    const/16 v53, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_matchFinder:LSevenZip/Compression/LZ/BinTree;

    move-object/from16 v54, v0

    add-int/lit8 v55, v9, 0x1

    sub-int v55, v19, v55

    add-int/lit8 v55, v55, -0x1

    invoke-virtual/range {v54 .. v55}, LSevenZip/Compression/LZ/BinTree;->GetIndexByte(I)B

    move-result v54

    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_matchFinder:LSevenZip/Compression/LZ/BinTree;

    move-object/from16 v55, v0

    add-int/lit8 v56, v19, -0x1

    invoke-virtual/range {v55 .. v56}, LSevenZip/Compression/LZ/BinTree;->GetIndexByte(I)B

    move-result v55

    invoke-virtual/range {v52 .. v55}, LSevenZip/Compression/LZMA/Encoder$LiteralEncoder$Encoder2;->GetPrice(ZBB)I

    move-result v52

    add-int v7, v51, v52

    .line 999
    .restart local v7    # "curAndLenCharPrice":I
    invoke-static/range {v49 .. v49}, LSevenZip/Compression/LZMA/Base;->StateUpdateChar(I)I

    move-result v49

    .line 1000
    add-int v51, p1, v19

    add-int/lit8 v51, v51, 0x1

    move-object/from16 v0, p0

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder;->_posStateMask:I

    move/from16 v52, v0

    and-int v40, v51, v52

    .line 1001
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_isMatch:[S

    move-object/from16 v51, v0

    shl-int/lit8 v52, v49, 0x4

    add-int v52, v52, v40

    aget-short v51, v51, v52

    invoke-static/range {v51 .. v51}, LSevenZip/Compression/RangeCoder/Encoder;->GetPrice1(I)I

    move-result v51

    add-int v26, v7, v51

    .line 1002
    .restart local v26    # "nextMatchPrice":I
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_isRep:[S

    move-object/from16 v51, v0

    aget-short v51, v51, v49

    invoke-static/range {v51 .. v51}, LSevenZip/Compression/RangeCoder/Encoder;->GetPrice1(I)I

    move-result v51

    add-int v28, v26, v51

    .line 1004
    .restart local v28    # "nextRepMatchPrice":I
    add-int/lit8 v51, v19, 0x1

    add-int v34, v51, v20

    .line 1005
    .restart local v34    # "offset":I
    :goto_18
    add-int v51, v5, v34

    move/from16 v0, v16

    move/from16 v1, v51

    if-ge v0, v1, :cond_38

    .line 1006
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_optimum:[LSevenZip/Compression/LZMA/Encoder$Optimal;

    move-object/from16 v51, v0

    add-int/lit8 v16, v16, 0x1

    aget-object v51, v51, v16

    const v52, 0xfffffff

    move/from16 v0, v52

    move-object/from16 v1, v51

    iput v0, v1, LSevenZip/Compression/LZMA/Encoder$Optimal;->Price:I

    goto :goto_18

    .line 1007
    :cond_38
    const/16 v51, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v51

    move/from16 v2, v20

    move/from16 v3, v49

    move/from16 v4, v40

    invoke-virtual {v0, v1, v2, v3, v4}, LSevenZip/Compression/LZMA/Encoder;->GetRepPrice(IIII)I

    move-result v51

    add-int v8, v28, v51

    .line 1008
    move-object/from16 v0, p0

    iget-object v0, v0, LSevenZip/Compression/LZMA/Encoder;->_optimum:[LSevenZip/Compression/LZMA/Encoder$Optimal;

    move-object/from16 v51, v0

    add-int v52, v5, v34

    aget-object v36, v51, v52

    .line 1009
    move-object/from16 v0, v36

    iget v0, v0, LSevenZip/Compression/LZMA/Encoder$Optimal;->Price:I

    move/from16 v51, v0

    move/from16 v0, v51

    if-ge v8, v0, :cond_39

    .line 1011
    move-object/from16 v0, v36

    iput v8, v0, LSevenZip/Compression/LZMA/Encoder$Optimal;->Price:I

    .line 1012
    add-int v51, v5, v19

    add-int/lit8 v51, v51, 0x1

    move/from16 v0, v51

    move-object/from16 v1, v36

    iput v0, v1, LSevenZip/Compression/LZMA/Encoder$Optimal;->PosPrev:I

    .line 1013
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, v36

    iput v0, v1, LSevenZip/Compression/LZMA/Encoder$Optimal;->BackPrev:I

    .line 1014
    const/16 v51, 0x1

    move/from16 v0, v51

    move-object/from16 v1, v36

    iput-boolean v0, v1, LSevenZip/Compression/LZMA/Encoder$Optimal;->Prev1IsChar:Z

    .line 1015
    const/16 v51, 0x1

    move/from16 v0, v51

    move-object/from16 v1, v36

    iput-boolean v0, v1, LSevenZip/Compression/LZMA/Encoder$Optimal;->Prev2:Z

    .line 1016
    move-object/from16 v0, v36

    iput v5, v0, LSevenZip/Compression/LZMA/Encoder$Optimal;->PosPrev2:I

    .line 1017
    add-int/lit8 v51, v9, 0x4

    move/from16 v0, v51

    move-object/from16 v1, v36

    iput v0, v1, LSevenZip/Compression/LZMA/Encoder$Optimal;->BackPrev2:I

    .line 1021
    .end local v7    # "curAndLenCharPrice":I
    .end local v20    # "lenTest2":I
    .end local v26    # "nextMatchPrice":I
    .end local v28    # "nextRepMatchPrice":I
    .end local v34    # "offset":I
    .end local v40    # "posStateNext":I
    .end local v49    # "state2":I
    .end local v50    # "t":I
    :cond_39
    add-int/lit8 v33, v33, 0x2

    .line 1022
    move/from16 v0, v33

    move/from16 v1, v32

    if-eq v0, v1, :cond_16

    .line 968
    :cond_3a
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_17

    .end local v5    # "cur":I
    .end local v6    # "curAnd1Price":I
    .end local v8    # "curAndLenPrice":I
    .end local v9    # "curBack":I
    .end local v10    # "curPrice":I
    .end local v14    # "len":I
    .end local v19    # "lenTest":I
    .end local v24    # "newLen":I
    .end local v25    # "nextIsChar":Z
    .end local v27    # "nextOptimum":LSevenZip/Compression/LZMA/Encoder$Optimal;
    .end local v29    # "normalMatchPrice":I
    .end local v31    # "numAvailableBytesFull":I
    .end local v33    # "offs":I
    .end local v36    # "optimum":LSevenZip/Compression/LZMA/Encoder$Optimal;
    .end local v38    # "posPrev":I
    .end local v42    # "repIndex":I
    .end local v47    # "startLen":I
    .end local v48    # "state":I
    .restart local v15    # "len":I
    :cond_3b
    move v14, v15

    .end local v15    # "len":I
    .restart local v14    # "len":I
    goto/16 :goto_5
.end method

.method GetPosLenPrice(III)I
    .locals 5
    .param p1, "pos"    # I
    .param p2, "len"    # I
    .param p3, "posState"    # I

    .prologue
    .line 492
    invoke-static {p2}, LSevenZip/Compression/LZMA/Base;->GetLenToPosState(I)I

    move-result v0

    .line 493
    .local v0, "lenToPosState":I
    const/16 v2, 0x80

    if-ge p1, v2, :cond_0

    .line 494
    iget-object v2, p0, LSevenZip/Compression/LZMA/Encoder;->_distancesPrices:[I

    mul-int/lit16 v3, v0, 0x80

    add-int/2addr v3, p1

    aget v1, v2, v3

    .line 498
    .local v1, "price":I
    :goto_0
    iget-object v2, p0, LSevenZip/Compression/LZMA/Encoder;->_lenEncoder:LSevenZip/Compression/LZMA/Encoder$LenPriceTableEncoder;

    add-int/lit8 v3, p2, -0x2

    invoke-virtual {v2, v3, p3}, LSevenZip/Compression/LZMA/Encoder$LenPriceTableEncoder;->GetPrice(II)I

    move-result v2

    add-int/2addr v2, v1

    return v2

    .line 496
    .end local v1    # "price":I
    :cond_0
    iget-object v2, p0, LSevenZip/Compression/LZMA/Encoder;->_posSlotPrices:[I

    shl-int/lit8 v3, v0, 0x6

    invoke-static {p1}, LSevenZip/Compression/LZMA/Encoder;->GetPosSlot2(I)I

    move-result v4

    add-int/2addr v3, v4

    aget v2, v2, v3

    iget-object v3, p0, LSevenZip/Compression/LZMA/Encoder;->_alignPrices:[I

    and-int/lit8 v4, p1, 0xf

    aget v3, v3, v4

    add-int v1, v2, v3

    .restart local v1    # "price":I
    goto :goto_0
.end method

.method GetPureRepPrice(III)I
    .locals 3
    .param p1, "repIndex"    # I
    .param p2, "state"    # I
    .param p3, "posState"    # I

    .prologue
    .line 464
    if-nez p1, :cond_0

    .line 466
    iget-object v1, p0, LSevenZip/Compression/LZMA/Encoder;->_isRepG0:[S

    aget-short v1, v1, p2

    invoke-static {v1}, LSevenZip/Compression/RangeCoder/Encoder;->GetPrice0(I)I

    move-result v0

    .line 467
    .local v0, "price":I
    iget-object v1, p0, LSevenZip/Compression/LZMA/Encoder;->_isRep0Long:[S

    shl-int/lit8 v2, p2, 0x4

    add-int/2addr v2, p3

    aget-short v1, v1, v2

    invoke-static {v1}, LSevenZip/Compression/RangeCoder/Encoder;->GetPrice1(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 480
    :goto_0
    return v0

    .line 471
    .end local v0    # "price":I
    :cond_0
    iget-object v1, p0, LSevenZip/Compression/LZMA/Encoder;->_isRepG0:[S

    aget-short v1, v1, p2

    invoke-static {v1}, LSevenZip/Compression/RangeCoder/Encoder;->GetPrice1(I)I

    move-result v0

    .line 472
    .restart local v0    # "price":I
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 473
    iget-object v1, p0, LSevenZip/Compression/LZMA/Encoder;->_isRepG1:[S

    aget-short v1, v1, p2

    invoke-static {v1}, LSevenZip/Compression/RangeCoder/Encoder;->GetPrice0(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 476
    :cond_1
    iget-object v1, p0, LSevenZip/Compression/LZMA/Encoder;->_isRepG1:[S

    aget-short v1, v1, p2

    invoke-static {v1}, LSevenZip/Compression/RangeCoder/Encoder;->GetPrice1(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 477
    iget-object v1, p0, LSevenZip/Compression/LZMA/Encoder;->_isRepG2:[S

    aget-short v1, v1, p2

    add-int/lit8 v2, p1, -0x2

    invoke-static {v1, v2}, LSevenZip/Compression/RangeCoder/Encoder;->GetPrice(II)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method GetRepLen1Price(II)I
    .locals 3
    .param p1, "state"    # I
    .param p2, "posState"    # I

    .prologue
    .line 457
    iget-object v0, p0, LSevenZip/Compression/LZMA/Encoder;->_isRepG0:[S

    aget-short v0, v0, p1

    invoke-static {v0}, LSevenZip/Compression/RangeCoder/Encoder;->GetPrice0(I)I

    move-result v0

    iget-object v1, p0, LSevenZip/Compression/LZMA/Encoder;->_isRep0Long:[S

    shl-int/lit8 v2, p1, 0x4

    add-int/2addr v2, p2

    aget-short v1, v1, v2

    invoke-static {v1}, LSevenZip/Compression/RangeCoder/Encoder;->GetPrice0(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method GetRepPrice(IIII)I
    .locals 3
    .param p1, "repIndex"    # I
    .param p2, "len"    # I
    .param p3, "state"    # I
    .param p4, "posState"    # I

    .prologue
    .line 485
    iget-object v1, p0, LSevenZip/Compression/LZMA/Encoder;->_repMatchLenEncoder:LSevenZip/Compression/LZMA/Encoder$LenPriceTableEncoder;

    add-int/lit8 v2, p2, -0x2

    invoke-virtual {v1, v2, p4}, LSevenZip/Compression/LZMA/Encoder$LenPriceTableEncoder;->GetPrice(II)I

    move-result v0

    .line 486
    .local v0, "price":I
    invoke-virtual {p0, p1, p3, p4}, LSevenZip/Compression/LZMA/Encoder;->GetPureRepPrice(III)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method Init()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 397
    invoke-virtual {p0}, LSevenZip/Compression/LZMA/Encoder;->BaseInit()V

    .line 398
    iget-object v1, p0, LSevenZip/Compression/LZMA/Encoder;->_rangeEncoder:LSevenZip/Compression/RangeCoder/Encoder;

    invoke-virtual {v1}, LSevenZip/Compression/RangeCoder/Encoder;->Init()V

    .line 400
    iget-object v1, p0, LSevenZip/Compression/LZMA/Encoder;->_isMatch:[S

    invoke-static {v1}, LSevenZip/Compression/RangeCoder/Encoder;->InitBitModels([S)V

    .line 401
    iget-object v1, p0, LSevenZip/Compression/LZMA/Encoder;->_isRep0Long:[S

    invoke-static {v1}, LSevenZip/Compression/RangeCoder/Encoder;->InitBitModels([S)V

    .line 402
    iget-object v1, p0, LSevenZip/Compression/LZMA/Encoder;->_isRep:[S

    invoke-static {v1}, LSevenZip/Compression/RangeCoder/Encoder;->InitBitModels([S)V

    .line 403
    iget-object v1, p0, LSevenZip/Compression/LZMA/Encoder;->_isRepG0:[S

    invoke-static {v1}, LSevenZip/Compression/RangeCoder/Encoder;->InitBitModels([S)V

    .line 404
    iget-object v1, p0, LSevenZip/Compression/LZMA/Encoder;->_isRepG1:[S

    invoke-static {v1}, LSevenZip/Compression/RangeCoder/Encoder;->InitBitModels([S)V

    .line 405
    iget-object v1, p0, LSevenZip/Compression/LZMA/Encoder;->_isRepG2:[S

    invoke-static {v1}, LSevenZip/Compression/RangeCoder/Encoder;->InitBitModels([S)V

    .line 406
    iget-object v1, p0, LSevenZip/Compression/LZMA/Encoder;->_posEncoders:[S

    invoke-static {v1}, LSevenZip/Compression/RangeCoder/Encoder;->InitBitModels([S)V

    .line 414
    iget-object v1, p0, LSevenZip/Compression/LZMA/Encoder;->_literalEncoder:LSevenZip/Compression/LZMA/Encoder$LiteralEncoder;

    invoke-virtual {v1}, LSevenZip/Compression/LZMA/Encoder$LiteralEncoder;->Init()V

    .line 415
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 416
    iget-object v1, p0, LSevenZip/Compression/LZMA/Encoder;->_posSlotEncoder:[LSevenZip/Compression/RangeCoder/BitTreeEncoder;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LSevenZip/Compression/RangeCoder/BitTreeEncoder;->Init()V

    .line 415
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 420
    :cond_0
    iget-object v1, p0, LSevenZip/Compression/LZMA/Encoder;->_lenEncoder:LSevenZip/Compression/LZMA/Encoder$LenPriceTableEncoder;

    iget v2, p0, LSevenZip/Compression/LZMA/Encoder;->_posStateBits:I

    shl-int v2, v4, v2

    invoke-virtual {v1, v2}, LSevenZip/Compression/LZMA/Encoder$LenPriceTableEncoder;->Init(I)V

    .line 421
    iget-object v1, p0, LSevenZip/Compression/LZMA/Encoder;->_repMatchLenEncoder:LSevenZip/Compression/LZMA/Encoder$LenPriceTableEncoder;

    iget v2, p0, LSevenZip/Compression/LZMA/Encoder;->_posStateBits:I

    shl-int v2, v4, v2

    invoke-virtual {v1, v2}, LSevenZip/Compression/LZMA/Encoder$LenPriceTableEncoder;->Init(I)V

    .line 423
    iget-object v1, p0, LSevenZip/Compression/LZMA/Encoder;->_posAlignEncoder:LSevenZip/Compression/RangeCoder/BitTreeEncoder;

    invoke-virtual {v1}, LSevenZip/Compression/RangeCoder/BitTreeEncoder;->Init()V

    .line 425
    iput-boolean v3, p0, LSevenZip/Compression/LZMA/Encoder;->_longestMatchWasFound:Z

    .line 426
    iput v3, p0, LSevenZip/Compression/LZMA/Encoder;->_optimumEndIndex:I

    .line 427
    iput v3, p0, LSevenZip/Compression/LZMA/Encoder;->_optimumCurrentIndex:I

    .line 428
    iput v3, p0, LSevenZip/Compression/LZMA/Encoder;->_additionalOffset:I

    .line 429
    return-void
.end method

.method MovePos(I)V
    .locals 1
    .param p1, "num"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 448
    if-lez p1, :cond_0

    .line 450
    iget-object v0, p0, LSevenZip/Compression/LZMA/Encoder;->_matchFinder:LSevenZip/Compression/LZ/BinTree;

    invoke-virtual {v0, p1}, LSevenZip/Compression/LZ/BinTree;->Skip(I)V

    .line 451
    iget v0, p0, LSevenZip/Compression/LZMA/Encoder;->_additionalOffset:I

    add-int/2addr v0, p1

    iput v0, p0, LSevenZip/Compression/LZMA/Encoder;->_additionalOffset:I

    .line 453
    :cond_0
    return-void
.end method

.method ReadMatchDistances()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 433
    const/4 v0, 0x0

    .line 434
    .local v0, "lenRes":I
    iget-object v1, p0, LSevenZip/Compression/LZMA/Encoder;->_matchFinder:LSevenZip/Compression/LZ/BinTree;

    iget-object v2, p0, LSevenZip/Compression/LZMA/Encoder;->_matchDistances:[I

    invoke-virtual {v1, v2}, LSevenZip/Compression/LZ/BinTree;->GetMatches([I)I

    move-result v1

    iput v1, p0, LSevenZip/Compression/LZMA/Encoder;->_numDistancePairs:I

    .line 435
    iget v1, p0, LSevenZip/Compression/LZMA/Encoder;->_numDistancePairs:I

    if-lez v1, :cond_0

    .line 437
    iget-object v1, p0, LSevenZip/Compression/LZMA/Encoder;->_matchDistances:[I

    iget v2, p0, LSevenZip/Compression/LZMA/Encoder;->_numDistancePairs:I

    add-int/lit8 v2, v2, -0x2

    aget v0, v1, v2

    .line 438
    iget v1, p0, LSevenZip/Compression/LZMA/Encoder;->_numFastBytes:I

    if-ne v0, v1, :cond_0

    .line 439
    iget-object v1, p0, LSevenZip/Compression/LZMA/Encoder;->_matchFinder:LSevenZip/Compression/LZ/BinTree;

    add-int/lit8 v2, v0, -0x1

    iget-object v3, p0, LSevenZip/Compression/LZMA/Encoder;->_matchDistances:[I

    iget v4, p0, LSevenZip/Compression/LZMA/Encoder;->_numDistancePairs:I

    add-int/lit8 v4, v4, -0x1

    aget v3, v3, v4

    rsub-int v4, v0, 0x111

    invoke-virtual {v1, v2, v3, v4}, LSevenZip/Compression/LZ/BinTree;->GetMatchLen(III)I

    move-result v1

    add-int/2addr v0, v1

    .line 442
    :cond_0
    iget v1, p0, LSevenZip/Compression/LZMA/Encoder;->_additionalOffset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LSevenZip/Compression/LZMA/Encoder;->_additionalOffset:I

    .line 443
    return v0
.end method

.method ReleaseMFStream()V
    .locals 1

    .prologue
    .line 1231
    iget-object v0, p0, LSevenZip/Compression/LZMA/Encoder;->_matchFinder:LSevenZip/Compression/LZ/BinTree;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, LSevenZip/Compression/LZMA/Encoder;->_needReleaseMFStream:Z

    if-eqz v0, :cond_0

    .line 1233
    iget-object v0, p0, LSevenZip/Compression/LZMA/Encoder;->_matchFinder:LSevenZip/Compression/LZ/BinTree;

    invoke-virtual {v0}, LSevenZip/Compression/LZ/BinTree;->ReleaseStream()V

    .line 1234
    const/4 v0, 0x0

    iput-boolean v0, p0, LSevenZip/Compression/LZMA/Encoder;->_needReleaseMFStream:Z

    .line 1236
    :cond_0
    return-void
.end method

.method ReleaseOutStream()V
    .locals 1

    .prologue
    .line 1241
    iget-object v0, p0, LSevenZip/Compression/LZMA/Encoder;->_rangeEncoder:LSevenZip/Compression/RangeCoder/Encoder;

    invoke-virtual {v0}, LSevenZip/Compression/RangeCoder/Encoder;->ReleaseStream()V

    return-void
.end method

.method ReleaseStreams()V
    .locals 0

    .prologue
    .line 1245
    invoke-virtual {p0}, LSevenZip/Compression/LZMA/Encoder;->ReleaseMFStream()V

    .line 1246
    invoke-virtual {p0}, LSevenZip/Compression/LZMA/Encoder;->ReleaseOutStream()V

    .line 1247
    return-void
.end method

.method public SetAlgorithm(I)Z
    .locals 1
    .param p1, "algorithm"    # I

    .prologue
    .line 1360
    const/4 v0, 0x1

    return v0
.end method

.method public SetDictionarySize(I)Z
    .locals 4
    .param p1, "dictionarySize"    # I

    .prologue
    const/4 v2, 0x1

    .line 1365
    const/16 v1, 0x1d

    .line 1366
    .local v1, "kDicLogSizeMaxCompress":I
    if-lt p1, v2, :cond_0

    const/high16 v3, 0x20000000

    if-le p1, v3, :cond_1

    .line 1367
    :cond_0
    const/4 v2, 0x0

    .line 1372
    :goto_0
    return v2

    .line 1368
    :cond_1
    iput p1, p0, LSevenZip/Compression/LZMA/Encoder;->_dictionarySize:I

    .line 1370
    const/4 v0, 0x0

    .local v0, "dicLogSize":I
    :goto_1
    shl-int v3, v2, v0

    if-le p1, v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1371
    :cond_2
    mul-int/lit8 v3, v0, 0x2

    iput v3, p0, LSevenZip/Compression/LZMA/Encoder;->_distTableSize:I

    goto :goto_0
.end method

.method public SetEndMarkerMode(Z)V
    .locals 0
    .param p1, "endMarkerMode"    # Z

    .prologue
    .line 1413
    iput-boolean p1, p0, LSevenZip/Compression/LZMA/Encoder;->_writeEndMark:Z

    .line 1414
    return-void
.end method

.method public SetLcLpPb(III)Z
    .locals 3
    .param p1, "lc"    # I
    .param p2, "lp"    # I
    .param p3, "pb"    # I

    .prologue
    const/4 v2, 0x4

    const/4 v0, 0x1

    .line 1399
    if-ltz p2, :cond_0

    if-gt p2, v2, :cond_0

    if-ltz p1, :cond_0

    const/16 v1, 0x8

    if-gt p1, v1, :cond_0

    if-ltz p3, :cond_0

    if-le p3, v2, :cond_1

    .line 1403
    :cond_0
    const/4 v0, 0x0

    .line 1408
    :goto_0
    return v0

    .line 1404
    :cond_1
    iput p2, p0, LSevenZip/Compression/LZMA/Encoder;->_numLiteralPosStateBits:I

    .line 1405
    iput p1, p0, LSevenZip/Compression/LZMA/Encoder;->_numLiteralContextBits:I

    .line 1406
    iput p3, p0, LSevenZip/Compression/LZMA/Encoder;->_posStateBits:I

    .line 1407
    iget v1, p0, LSevenZip/Compression/LZMA/Encoder;->_posStateBits:I

    shl-int v1, v0, v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, LSevenZip/Compression/LZMA/Encoder;->_posStateMask:I

    goto :goto_0
.end method

.method public SetMatchFinder(I)Z
    .locals 2
    .param p1, "matchFinderIndex"    # I

    .prologue
    .line 1385
    if-ltz p1, :cond_0

    const/4 v1, 0x2

    if-le p1, v1, :cond_1

    .line 1386
    :cond_0
    const/4 v1, 0x0

    .line 1394
    :goto_0
    return v1

    .line 1387
    :cond_1
    iget v0, p0, LSevenZip/Compression/LZMA/Encoder;->_matchFinderType:I

    .line 1388
    .local v0, "matchFinderIndexPrev":I
    iput p1, p0, LSevenZip/Compression/LZMA/Encoder;->_matchFinderType:I

    .line 1389
    iget-object v1, p0, LSevenZip/Compression/LZMA/Encoder;->_matchFinder:LSevenZip/Compression/LZ/BinTree;

    if-eqz v1, :cond_2

    iget v1, p0, LSevenZip/Compression/LZMA/Encoder;->_matchFinderType:I

    if-eq v0, v1, :cond_2

    .line 1391
    const/4 v1, -0x1

    iput v1, p0, LSevenZip/Compression/LZMA/Encoder;->_dictionarySizePrev:I

    .line 1392
    const/4 v1, 0x0

    iput-object v1, p0, LSevenZip/Compression/LZMA/Encoder;->_matchFinder:LSevenZip/Compression/LZ/BinTree;

    .line 1394
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public SetNumFastBytes(I)Z
    .locals 1
    .param p1, "numFastBytes"    # I

    .prologue
    .line 1377
    const/4 v0, 0x5

    if-lt p1, v0, :cond_0

    const/16 v0, 0x111

    if-le p1, v0, :cond_1

    .line 1378
    :cond_0
    const/4 v0, 0x0

    .line 1380
    :goto_0
    return v0

    .line 1379
    :cond_1
    iput p1, p0, LSevenZip/Compression/LZMA/Encoder;->_numFastBytes:I

    .line 1380
    const/4 v0, 0x1

    goto :goto_0
.end method

.method SetOutStream(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "outStream"    # Ljava/io/OutputStream;

    .prologue
    .line 1239
    iget-object v0, p0, LSevenZip/Compression/LZMA/Encoder;->_rangeEncoder:LSevenZip/Compression/RangeCoder/Encoder;

    invoke-virtual {v0, p1}, LSevenZip/Compression/RangeCoder/Encoder;->SetStream(Ljava/io/OutputStream;)V

    return-void
.end method

.method SetStreams(Ljava/io/InputStream;Ljava/io/OutputStream;JJ)V
    .locals 3
    .param p1, "inStream"    # Ljava/io/InputStream;
    .param p2, "outStream"    # Ljava/io/OutputStream;
    .param p3, "inSize"    # J
    .param p5, "outSize"    # J

    .prologue
    const/4 v2, 0x1

    .line 1252
    iput-object p1, p0, LSevenZip/Compression/LZMA/Encoder;->_inStream:Ljava/io/InputStream;

    .line 1253
    const/4 v0, 0x0

    iput-boolean v0, p0, LSevenZip/Compression/LZMA/Encoder;->_finished:Z

    .line 1254
    invoke-virtual {p0}, LSevenZip/Compression/LZMA/Encoder;->Create()V

    .line 1255
    invoke-virtual {p0, p2}, LSevenZip/Compression/LZMA/Encoder;->SetOutStream(Ljava/io/OutputStream;)V

    .line 1256
    invoke-virtual {p0}, LSevenZip/Compression/LZMA/Encoder;->Init()V

    .line 1260
    invoke-virtual {p0}, LSevenZip/Compression/LZMA/Encoder;->FillDistancesPrices()V

    .line 1261
    invoke-virtual {p0}, LSevenZip/Compression/LZMA/Encoder;->FillAlignPrices()V

    .line 1264
    iget-object v0, p0, LSevenZip/Compression/LZMA/Encoder;->_lenEncoder:LSevenZip/Compression/LZMA/Encoder$LenPriceTableEncoder;

    iget v1, p0, LSevenZip/Compression/LZMA/Encoder;->_numFastBytes:I

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, LSevenZip/Compression/LZMA/Encoder$LenPriceTableEncoder;->SetTableSize(I)V

    .line 1265
    iget-object v0, p0, LSevenZip/Compression/LZMA/Encoder;->_lenEncoder:LSevenZip/Compression/LZMA/Encoder$LenPriceTableEncoder;

    iget v1, p0, LSevenZip/Compression/LZMA/Encoder;->_posStateBits:I

    shl-int v1, v2, v1

    invoke-virtual {v0, v1}, LSevenZip/Compression/LZMA/Encoder$LenPriceTableEncoder;->UpdateTables(I)V

    .line 1266
    iget-object v0, p0, LSevenZip/Compression/LZMA/Encoder;->_repMatchLenEncoder:LSevenZip/Compression/LZMA/Encoder$LenPriceTableEncoder;

    iget v1, p0, LSevenZip/Compression/LZMA/Encoder;->_numFastBytes:I

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, LSevenZip/Compression/LZMA/Encoder$LenPriceTableEncoder;->SetTableSize(I)V

    .line 1267
    iget-object v0, p0, LSevenZip/Compression/LZMA/Encoder;->_repMatchLenEncoder:LSevenZip/Compression/LZMA/Encoder$LenPriceTableEncoder;

    iget v1, p0, LSevenZip/Compression/LZMA/Encoder;->_posStateBits:I

    shl-int v1, v2, v1

    invoke-virtual {v0, v1}, LSevenZip/Compression/LZMA/Encoder$LenPriceTableEncoder;->UpdateTables(I)V

    .line 1269
    const-wide/16 v0, 0x0

    iput-wide v0, p0, LSevenZip/Compression/LZMA/Encoder;->nowPos64:J

    .line 1270
    return-void
.end method

.method SetWriteEndMarkerMode(Z)V
    .locals 0
    .param p1, "writeEndMarker"    # Z

    .prologue
    .line 392
    iput-boolean p1, p0, LSevenZip/Compression/LZMA/Encoder;->_writeEndMark:Z

    .line 393
    return-void
.end method

.method public WriteCoderProperties(Ljava/io/OutputStream;)V
    .locals 6
    .param p1, "outStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1305
    iget-object v1, p0, LSevenZip/Compression/LZMA/Encoder;->properties:[B

    iget v2, p0, LSevenZip/Compression/LZMA/Encoder;->_posStateBits:I

    mul-int/lit8 v2, v2, 0x5

    iget v3, p0, LSevenZip/Compression/LZMA/Encoder;->_numLiteralPosStateBits:I

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x9

    iget v3, p0, LSevenZip/Compression/LZMA/Encoder;->_numLiteralContextBits:I

    add-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v5

    .line 1306
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 1307
    iget-object v1, p0, LSevenZip/Compression/LZMA/Encoder;->properties:[B

    add-int/lit8 v2, v0, 0x1

    iget v3, p0, LSevenZip/Compression/LZMA/Encoder;->_dictionarySize:I

    mul-int/lit8 v4, v0, 0x8

    shr-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1306
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1308
    :cond_0
    iget-object v1, p0, LSevenZip/Compression/LZMA/Encoder;->properties:[B

    const/4 v2, 0x5

    invoke-virtual {p1, v1, v5, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 1309
    return-void
.end method

.method WriteEndMarker(I)V
    .locals 10
    .param p1, "posState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 1038
    iget-boolean v5, p0, LSevenZip/Compression/LZMA/Encoder;->_writeEndMark:Z

    if-nez v5, :cond_0

    .line 1053
    :goto_0
    return-void

    .line 1041
    :cond_0
    iget-object v5, p0, LSevenZip/Compression/LZMA/Encoder;->_rangeEncoder:LSevenZip/Compression/RangeCoder/Encoder;

    iget-object v6, p0, LSevenZip/Compression/LZMA/Encoder;->_isMatch:[S

    iget v7, p0, LSevenZip/Compression/LZMA/Encoder;->_state:I

    shl-int/lit8 v7, v7, 0x4

    add-int/2addr v7, p1

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, LSevenZip/Compression/RangeCoder/Encoder;->Encode([SII)V

    .line 1042
    iget-object v5, p0, LSevenZip/Compression/LZMA/Encoder;->_rangeEncoder:LSevenZip/Compression/RangeCoder/Encoder;

    iget-object v6, p0, LSevenZip/Compression/LZMA/Encoder;->_isRep:[S

    iget v7, p0, LSevenZip/Compression/LZMA/Encoder;->_state:I

    invoke-virtual {v5, v6, v7, v9}, LSevenZip/Compression/RangeCoder/Encoder;->Encode([SII)V

    .line 1043
    iget v5, p0, LSevenZip/Compression/LZMA/Encoder;->_state:I

    invoke-static {v5}, LSevenZip/Compression/LZMA/Base;->StateUpdateMatch(I)I

    move-result v5

    iput v5, p0, LSevenZip/Compression/LZMA/Encoder;->_state:I

    .line 1044
    const/4 v1, 0x2

    .line 1045
    .local v1, "len":I
    iget-object v5, p0, LSevenZip/Compression/LZMA/Encoder;->_lenEncoder:LSevenZip/Compression/LZMA/Encoder$LenPriceTableEncoder;

    iget-object v6, p0, LSevenZip/Compression/LZMA/Encoder;->_rangeEncoder:LSevenZip/Compression/RangeCoder/Encoder;

    invoke-virtual {v5, v6, v9, p1}, LSevenZip/Compression/LZMA/Encoder$LenPriceTableEncoder;->Encode(LSevenZip/Compression/RangeCoder/Encoder;II)V

    .line 1046
    const/16 v4, 0x3f

    .line 1047
    .local v4, "posSlot":I
    invoke-static {v1}, LSevenZip/Compression/LZMA/Base;->GetLenToPosState(I)I

    move-result v2

    .line 1048
    .local v2, "lenToPosState":I
    iget-object v5, p0, LSevenZip/Compression/LZMA/Encoder;->_posSlotEncoder:[LSevenZip/Compression/RangeCoder/BitTreeEncoder;

    aget-object v5, v5, v2

    iget-object v6, p0, LSevenZip/Compression/LZMA/Encoder;->_rangeEncoder:LSevenZip/Compression/RangeCoder/Encoder;

    invoke-virtual {v5, v6, v4}, LSevenZip/Compression/RangeCoder/BitTreeEncoder;->Encode(LSevenZip/Compression/RangeCoder/Encoder;I)V

    .line 1049
    const/16 v0, 0x1e

    .line 1050
    .local v0, "footerBits":I
    const/high16 v5, 0x40000000    # 2.0f

    add-int/lit8 v3, v5, -0x1

    .line 1051
    .local v3, "posReduced":I
    iget-object v5, p0, LSevenZip/Compression/LZMA/Encoder;->_rangeEncoder:LSevenZip/Compression/RangeCoder/Encoder;

    const v6, 0x3ffffff

    const/16 v7, 0x1a

    invoke-virtual {v5, v6, v7}, LSevenZip/Compression/RangeCoder/Encoder;->EncodeDirectBits(II)V

    .line 1052
    iget-object v5, p0, LSevenZip/Compression/LZMA/Encoder;->_posAlignEncoder:LSevenZip/Compression/RangeCoder/BitTreeEncoder;

    iget-object v6, p0, LSevenZip/Compression/LZMA/Encoder;->_rangeEncoder:LSevenZip/Compression/RangeCoder/Encoder;

    const/16 v7, 0xf

    invoke-virtual {v5, v6, v7}, LSevenZip/Compression/RangeCoder/BitTreeEncoder;->ReverseEncode(LSevenZip/Compression/RangeCoder/Encoder;I)V

    goto :goto_0
.end method
