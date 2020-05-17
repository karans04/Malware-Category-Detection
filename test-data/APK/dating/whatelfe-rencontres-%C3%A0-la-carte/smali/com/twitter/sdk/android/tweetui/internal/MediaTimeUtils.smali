.class final Lcom/twitter/sdk/android/tweetui/internal/MediaTimeUtils;
.super Ljava/lang/Object;
.source "MediaTimeUtils.java"


# static fields
.field private static final TIME_FORMAT_LONG:Ljava/lang/String; = "%1$d:%2$02d:%3$02d"

.field private static final TIME_FORMAT_SHORT:Ljava/lang/String; = "%1$d:%2$02d"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getPlaybackTime(J)Ljava/lang/String;
    .locals 12
    .param p0, "timeMillis"    # J

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 29
    const-wide/16 v4, 0x3e8

    div-long v4, p0, v4

    long-to-int v3, v4

    .line 30
    .local v3, "timeSeconds":I
    rem-int/lit8 v2, v3, 0x3c

    .line 31
    .local v2, "seconds":I
    div-int/lit8 v4, v3, 0x3c

    rem-int/lit8 v1, v4, 0x3c

    .line 32
    .local v1, "minutes":I
    div-int/lit16 v0, v3, 0xe10

    .line 34
    .local v0, "hours":I
    if-lez v0, :cond_0

    .line 35
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "%1$d:%2$02d:%3$02d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 37
    :goto_0
    return-object v4

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "%1$d:%2$02d"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method
