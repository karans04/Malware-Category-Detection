.class public Lorg/chromium/base/metrics/RecordHistogram;
.super Ljava/lang/Object;
.source "RecordHistogram.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "base::android"
.end annotation


# static fields
.field private static sCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static sIsDisabledForTests:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-boolean v0, Lorg/chromium/base/metrics/RecordHistogram;->sIsDisabledForTests:Z

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/chromium/base/metrics/RecordHistogram;->sCache:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clampToInt(J)I
    .locals 2
    .param p0, "value"    # J

    .prologue
    .line 222
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    const v0, 0x7fffffff

    .line 226
    :goto_0
    return v0

    .line 225
    :cond_0
    const-wide/32 v0, -0x80000000

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    const/high16 v0, -0x80000000

    goto :goto_0

    .line 226
    :cond_1
    long-to-int v0, p0

    goto :goto_0
.end method

.method public static disableForTests()V
    .locals 1
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 37
    const/4 v0, 0x1

    sput-boolean v0, Lorg/chromium/base/metrics/RecordHistogram;->sIsDisabledForTests:Z

    .line 38
    return-void
.end method

.method private static getCachedHistogramKey(Ljava/lang/String;)J
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    sget-object v1, Lorg/chromium/base/metrics/RecordHistogram;->sCache:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 46
    .local v0, "key":Ljava/lang/Long;
    if-nez v0, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0
.end method

.method public static getHistogramValueCountForTesting(Ljava/lang/String;I)I
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "sample"    # I
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 249
    invoke-static {p0, p1}, Lorg/chromium/base/metrics/RecordHistogram;->nativeGetHistogramValueCountForTesting(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static initialize()V
    .locals 1

    .prologue
    .line 256
    sget-boolean v0, Lorg/chromium/base/metrics/RecordHistogram;->sIsDisabledForTests:Z

    if-eqz v0, :cond_0

    .line 258
    :goto_0
    return-void

    .line 257
    :cond_0
    invoke-static {}, Lorg/chromium/base/metrics/RecordHistogram;->nativeInitialize()V

    goto :goto_0
.end method

.method private static native nativeGetHistogramValueCountForTesting(Ljava/lang/String;I)I
.end method

.method private static native nativeInitialize()V
.end method

.method private static native nativeRecordBooleanHistogram(Ljava/lang/String;JZ)J
.end method

.method private static native nativeRecordCustomCountHistogram(Ljava/lang/String;JIIII)J
.end method

.method private static native nativeRecordCustomTimesHistogramMilliseconds(Ljava/lang/String;JIIII)J
.end method

.method private static native nativeRecordEnumeratedHistogram(Ljava/lang/String;JII)J
.end method

.method private static native nativeRecordLinearCountHistogram(Ljava/lang/String;JIIII)J
.end method

.method private static native nativeRecordSparseHistogram(Ljava/lang/String;JI)J
.end method

.method public static recordBooleanHistogram(Ljava/lang/String;Z)V
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "sample"    # Z

    .prologue
    .line 57
    sget-boolean v4, Lorg/chromium/base/metrics/RecordHistogram;->sIsDisabledForTests:Z

    if-eqz v4, :cond_1

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    invoke-static {p0}, Lorg/chromium/base/metrics/RecordHistogram;->getCachedHistogramKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 59
    .local v0, "key":J
    invoke-static {p0, v0, v1, p1}, Lorg/chromium/base/metrics/RecordHistogram;->nativeRecordBooleanHistogram(Ljava/lang/String;JZ)J

    move-result-wide v2

    .line 60
    .local v2, "result":J
    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    sget-object v4, Lorg/chromium/base/metrics/RecordHistogram;->sCache:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, p0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static recordCount1000Histogram(Ljava/lang/String;I)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "sample"    # I

    .prologue
    .line 106
    const/4 v0, 0x1

    const/16 v1, 0x3e8

    const/16 v2, 0x32

    invoke-static {p0, p1, v0, v1, v2}, Lorg/chromium/base/metrics/RecordHistogram;->recordCustomCountHistogram(Ljava/lang/String;IIII)V

    .line 107
    return-void
.end method

.method public static recordCount100Histogram(Ljava/lang/String;I)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "sample"    # I

    .prologue
    .line 96
    const/4 v0, 0x1

    const/16 v1, 0x64

    const/16 v2, 0x32

    invoke-static {p0, p1, v0, v1, v2}, Lorg/chromium/base/metrics/RecordHistogram;->recordCustomCountHistogram(Ljava/lang/String;IIII)V

    .line 97
    return-void
.end method

.method public static recordCountHistogram(Ljava/lang/String;I)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "sample"    # I

    .prologue
    .line 86
    const/4 v0, 0x1

    const v1, 0xf4240

    const/16 v2, 0x32

    invoke-static {p0, p1, v0, v1, v2}, Lorg/chromium/base/metrics/RecordHistogram;->recordCustomCountHistogram(Ljava/lang/String;IIII)V

    .line 87
    return-void
.end method

.method public static recordCustomCountHistogram(Ljava/lang/String;IIII)V
    .locals 10
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "sample"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I
    .param p4, "numBuckets"    # I

    .prologue
    .line 120
    sget-boolean v0, Lorg/chromium/base/metrics/RecordHistogram;->sIsDisabledForTests:Z

    if-eqz v0, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    invoke-static {p0}, Lorg/chromium/base/metrics/RecordHistogram;->getCachedHistogramKey(Ljava/lang/String;)J

    move-result-wide v2

    .local v2, "key":J
    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    .line 122
    invoke-static/range {v1 .. v7}, Lorg/chromium/base/metrics/RecordHistogram;->nativeRecordCustomCountHistogram(Ljava/lang/String;JIIII)J

    move-result-wide v8

    .line 123
    .local v8, "result":J
    cmp-long v0, v8, v2

    if-eqz v0, :cond_0

    sget-object v0, Lorg/chromium/base/metrics/RecordHistogram;->sCache:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static recordCustomTimesHistogram(Ljava/lang/String;JJJLjava/util/concurrent/TimeUnit;I)V
    .locals 13
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "duration"    # J
    .param p3, "min"    # J
    .param p5, "max"    # J
    .param p7, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .param p8, "numBuckets"    # I

    .prologue
    .line 217
    move-object/from16 v0, p7

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    move-object/from16 v0, p7

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    move-object/from16 v0, p7

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v10

    move-object v5, p0

    move/from16 v12, p8

    invoke-static/range {v5 .. v12}, Lorg/chromium/base/metrics/RecordHistogram;->recordCustomTimesHistogramMilliseconds(Ljava/lang/String;JJJI)V

    .line 219
    return-void
.end method

.method private static recordCustomTimesHistogramMilliseconds(Ljava/lang/String;JJJI)V
    .locals 11
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "duration"    # J
    .param p3, "min"    # J
    .param p5, "max"    # J
    .param p7, "numBuckets"    # I

    .prologue
    .line 231
    sget-boolean v0, Lorg/chromium/base/metrics/RecordHistogram;->sIsDisabledForTests:Z

    if-eqz v0, :cond_1

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    invoke-static {p0}, Lorg/chromium/base/metrics/RecordHistogram;->getCachedHistogramKey(Ljava/lang/String;)J

    move-result-wide v2

    .line 237
    .local v2, "key":J
    invoke-static {p1, p2}, Lorg/chromium/base/metrics/RecordHistogram;->clampToInt(J)I

    move-result v4

    invoke-static {p3, p4}, Lorg/chromium/base/metrics/RecordHistogram;->clampToInt(J)I

    move-result v5

    invoke-static/range {p5 .. p6}, Lorg/chromium/base/metrics/RecordHistogram;->clampToInt(J)I

    move-result v6

    move-object v1, p0

    move/from16 v7, p7

    invoke-static/range {v1 .. v7}, Lorg/chromium/base/metrics/RecordHistogram;->nativeRecordCustomTimesHistogramMilliseconds(Ljava/lang/String;JIIII)J

    move-result-wide v8

    .line 239
    .local v8, "result":J
    cmp-long v0, v8, v2

    if-eqz v0, :cond_0

    sget-object v0, Lorg/chromium/base/metrics/RecordHistogram;->sCache:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static recordEnumeratedHistogram(Ljava/lang/String;II)V
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "sample"    # I
    .param p2, "boundary"    # I

    .prologue
    .line 73
    sget-boolean v4, Lorg/chromium/base/metrics/RecordHistogram;->sIsDisabledForTests:Z

    if-eqz v4, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    invoke-static {p0}, Lorg/chromium/base/metrics/RecordHistogram;->getCachedHistogramKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 75
    .local v0, "key":J
    invoke-static {p0, v0, v1, p1, p2}, Lorg/chromium/base/metrics/RecordHistogram;->nativeRecordEnumeratedHistogram(Ljava/lang/String;JII)J

    move-result-wide v2

    .line 76
    .local v2, "result":J
    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    sget-object v4, Lorg/chromium/base/metrics/RecordHistogram;->sCache:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, p0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static recordLinearCountHistogram(Ljava/lang/String;IIII)V
    .locals 10
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "sample"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I
    .param p4, "numBuckets"    # I

    .prologue
    .line 137
    sget-boolean v0, Lorg/chromium/base/metrics/RecordHistogram;->sIsDisabledForTests:Z

    if-eqz v0, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    invoke-static {p0}, Lorg/chromium/base/metrics/RecordHistogram;->getCachedHistogramKey(Ljava/lang/String;)J

    move-result-wide v2

    .local v2, "key":J
    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    .line 139
    invoke-static/range {v1 .. v7}, Lorg/chromium/base/metrics/RecordHistogram;->nativeRecordLinearCountHistogram(Ljava/lang/String;JIIII)J

    move-result-wide v8

    .line 140
    .local v8, "result":J
    cmp-long v0, v8, v2

    if-eqz v0, :cond_0

    sget-object v0, Lorg/chromium/base/metrics/RecordHistogram;->sCache:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static recordLongTimesHistogram(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V
    .locals 9
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "duration"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    const-wide/16 v4, 0x1

    .line 201
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    const/16 v8, 0x32

    move-object v1, p0

    invoke-static/range {v1 .. v8}, Lorg/chromium/base/metrics/RecordHistogram;->recordCustomTimesHistogramMilliseconds(Ljava/lang/String;JJJI)V

    .line 203
    return-void
.end method

.method public static recordMediumTimesHistogram(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V
    .locals 9
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "duration"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 189
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    const-wide/16 v4, 0xa

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x3

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    const/16 v8, 0x32

    move-object v1, p0

    invoke-static/range {v1 .. v8}, Lorg/chromium/base/metrics/RecordHistogram;->recordCustomTimesHistogramMilliseconds(Ljava/lang/String;JJJI)V

    .line 191
    return-void
.end method

.method public static recordPercentageHistogram(Ljava/lang/String;I)V
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "sample"    # I

    .prologue
    .line 150
    sget-boolean v4, Lorg/chromium/base/metrics/RecordHistogram;->sIsDisabledForTests:Z

    if-eqz v4, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    invoke-static {p0}, Lorg/chromium/base/metrics/RecordHistogram;->getCachedHistogramKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 152
    .local v0, "key":J
    const/16 v4, 0x65

    invoke-static {p0, v0, v1, p1, v4}, Lorg/chromium/base/metrics/RecordHistogram;->nativeRecordEnumeratedHistogram(Ljava/lang/String;JII)J

    move-result-wide v2

    .line 153
    .local v2, "result":J
    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    sget-object v4, Lorg/chromium/base/metrics/RecordHistogram;->sCache:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, p0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static recordSparseSlowlyHistogram(Ljava/lang/String;I)V
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "sample"    # I

    .prologue
    .line 163
    sget-boolean v4, Lorg/chromium/base/metrics/RecordHistogram;->sIsDisabledForTests:Z

    if-eqz v4, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    invoke-static {p0}, Lorg/chromium/base/metrics/RecordHistogram;->getCachedHistogramKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 165
    .local v0, "key":J
    invoke-static {p0, v0, v1, p1}, Lorg/chromium/base/metrics/RecordHistogram;->nativeRecordSparseHistogram(Ljava/lang/String;JI)J

    move-result-wide v2

    .line 166
    .local v2, "result":J
    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    sget-object v4, Lorg/chromium/base/metrics/RecordHistogram;->sCache:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, p0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static recordTimesHistogram(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V
    .locals 9
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "duration"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 177
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0xa

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    const/16 v8, 0x32

    move-object v1, p0

    invoke-static/range {v1 .. v8}, Lorg/chromium/base/metrics/RecordHistogram;->recordCustomTimesHistogramMilliseconds(Ljava/lang/String;JJJI)V

    .line 179
    return-void
.end method
