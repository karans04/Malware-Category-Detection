.class public final Lde/appplant/cordova/plugin/notification/Request;
.super Ljava/lang/Object;
.source "Request.java"


# static fields
.field public static final EXTRA_LAST:Ljava/lang/String; = "NOTIFICATION_LAST"

.field static final EXTRA_OCCURRENCE:Ljava/lang/String; = "NOTIFICATION_OCCURRENCE"


# instance fields
.field private final count:I

.field private final options:Lde/appplant/cordova/plugin/notification/Options;

.field private final spec:Lorg/json/JSONObject;

.field private final trigger:Lde/appplant/cordova/plugin/notification/trigger/DateTrigger;

.field private triggerDate:Ljava/util/Date;


# direct methods
.method public constructor <init>(Lde/appplant/cordova/plugin/notification/Options;)V
    .locals 2
    .param p1, "options"    # Lde/appplant/cordova/plugin/notification/Options;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lde/appplant/cordova/plugin/notification/Request;->options:Lde/appplant/cordova/plugin/notification/Options;

    .line 73
    invoke-virtual {p1}, Lde/appplant/cordova/plugin/notification/Options;->getTrigger()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lde/appplant/cordova/plugin/notification/Request;->spec:Lorg/json/JSONObject;

    .line 74
    iget-object v0, p0, Lde/appplant/cordova/plugin/notification/Request;->spec:Lorg/json/JSONObject;

    const-string v1, "count"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lde/appplant/cordova/plugin/notification/Request;->count:I

    .line 75
    invoke-direct {p0}, Lde/appplant/cordova/plugin/notification/Request;->buildTrigger()Lde/appplant/cordova/plugin/notification/trigger/DateTrigger;

    move-result-object v0

    iput-object v0, p0, Lde/appplant/cordova/plugin/notification/Request;->trigger:Lde/appplant/cordova/plugin/notification/trigger/DateTrigger;

    .line 76
    iget-object v0, p0, Lde/appplant/cordova/plugin/notification/Request;->trigger:Lde/appplant/cordova/plugin/notification/trigger/DateTrigger;

    invoke-direct {p0}, Lde/appplant/cordova/plugin/notification/Request;->getBaseDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/appplant/cordova/plugin/notification/trigger/DateTrigger;->getNextTriggerDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lde/appplant/cordova/plugin/notification/Request;->triggerDate:Ljava/util/Date;

    .line 77
    return-void
.end method

.method private buildTrigger()Lde/appplant/cordova/plugin/notification/trigger/DateTrigger;
    .locals 7

    .prologue
    .line 155
    iget-object v5, p0, Lde/appplant/cordova/plugin/notification/Request;->spec:Lorg/json/JSONObject;

    const-string v6, "every"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 157
    .local v2, "every":Ljava/lang/Object;
    instance-of v5, v2, Lorg/json/JSONObject;

    if-eqz v5, :cond_0

    .line 158
    invoke-direct {p0}, Lde/appplant/cordova/plugin/notification/Request;->getMatchingComponents()Ljava/util/List;

    move-result-object v0

    .line 159
    .local v0, "cmp1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lde/appplant/cordova/plugin/notification/Request;->getSpecialMatchingComponents()Ljava/util/List;

    move-result-object v1

    .line 161
    .local v1, "cmp2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v5, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger;

    invoke-direct {v5, v0, v1}, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 167
    .end local v0    # "cmp1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v1    # "cmp2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_0
    return-object v5

    .line 164
    :cond_0
    invoke-direct {p0}, Lde/appplant/cordova/plugin/notification/Request;->getUnit()Lde/appplant/cordova/plugin/notification/trigger/DateTrigger$Unit;

    move-result-object v4

    .line 165
    .local v4, "unit":Lde/appplant/cordova/plugin/notification/trigger/DateTrigger$Unit;
    invoke-direct {p0}, Lde/appplant/cordova/plugin/notification/Request;->getTicks()I

    move-result v3

    .line 167
    .local v3, "ticks":I
    new-instance v5, Lde/appplant/cordova/plugin/notification/trigger/IntervalTrigger;

    invoke-direct {v5, v3, v4}, Lde/appplant/cordova/plugin/notification/trigger/IntervalTrigger;-><init>(ILde/appplant/cordova/plugin/notification/trigger/DateTrigger$Unit;)V

    goto :goto_0
.end method

.method private getBaseDate()Ljava/util/Date;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 247
    iget-object v0, p0, Lde/appplant/cordova/plugin/notification/Request;->spec:Lorg/json/JSONObject;

    const-string v1, "at"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lde/appplant/cordova/plugin/notification/Request;->spec:Lorg/json/JSONObject;

    const-string v2, "at"

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 256
    :goto_0
    return-object v0

    .line 250
    :cond_0
    iget-object v0, p0, Lde/appplant/cordova/plugin/notification/Request;->spec:Lorg/json/JSONObject;

    const-string v1, "firstAt"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lde/appplant/cordova/plugin/notification/Request;->spec:Lorg/json/JSONObject;

    const-string v2, "firstAt"

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    .line 253
    :cond_1
    iget-object v0, p0, Lde/appplant/cordova/plugin/notification/Request;->spec:Lorg/json/JSONObject;

    const-string v1, "after"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 254
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lde/appplant/cordova/plugin/notification/Request;->spec:Lorg/json/JSONObject;

    const-string v2, "after"

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    .line 256
    :cond_2
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    goto :goto_0
.end method

.method private getMatchingComponents()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    iget-object v1, p0, Lde/appplant/cordova/plugin/notification/Request;->spec:Lorg/json/JSONObject;

    const-string v2, "every"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 218
    .local v0, "every":Lorg/json/JSONObject;
    const/4 v1, 0x5

    new-array v2, v1, [Ljava/lang/Integer;

    const/4 v3, 0x0

    const-string v1, "minute"

    .line 219
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    aput-object v1, v2, v3

    const/4 v3, 0x1

    const-string v1, "hour"

    .line 220
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    aput-object v1, v2, v3

    const/4 v3, 0x2

    const-string v1, "day"

    .line 221
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    aput-object v1, v2, v3

    const/4 v3, 0x3

    const-string v1, "month"

    .line 222
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    aput-object v1, v2, v3

    const/4 v3, 0x4

    const-string v1, "year"

    .line 223
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    aput-object v1, v2, v3

    .line 218
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private getNextTriggerDate()Ljava/util/Date;
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lde/appplant/cordova/plugin/notification/Request;->trigger:Lde/appplant/cordova/plugin/notification/trigger/DateTrigger;

    iget-object v1, p0, Lde/appplant/cordova/plugin/notification/Request;->triggerDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lde/appplant/cordova/plugin/notification/trigger/DateTrigger;->getNextTriggerDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method private getSpecialMatchingComponents()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 233
    iget-object v1, p0, Lde/appplant/cordova/plugin/notification/Request;->spec:Lorg/json/JSONObject;

    const-string v2, "every"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 235
    .local v0, "every":Lorg/json/JSONObject;
    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/Integer;

    const/4 v3, 0x0

    const-string v1, "weekday"

    .line 236
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    aput-object v1, v2, v3

    const/4 v3, 0x1

    const-string v1, "weekdayOrdinal"

    .line 237
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    aput-object v1, v2, v3

    const/4 v3, 0x2

    const-string v1, "weekOfMonth"

    .line 238
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    aput-object v1, v2, v3

    const/4 v3, 0x3

    const-string v1, "quarter"

    .line 239
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    aput-object v1, v2, v3

    .line 235
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private getTicks()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 191
    iget-object v2, p0, Lde/appplant/cordova/plugin/notification/Request;->spec:Lorg/json/JSONObject;

    const-string v3, "every"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 192
    .local v0, "every":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 194
    .local v1, "ticks":I
    iget-object v2, p0, Lde/appplant/cordova/plugin/notification/Request;->spec:Lorg/json/JSONObject;

    const-string v3, "at"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 195
    const/4 v1, 0x0

    .line 207
    :cond_0
    :goto_0
    return v1

    .line 197
    :cond_1
    iget-object v2, p0, Lde/appplant/cordova/plugin/notification/Request;->spec:Lorg/json/JSONObject;

    const-string v3, "in"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 198
    iget-object v2, p0, Lde/appplant/cordova/plugin/notification/Request;->spec:Lorg/json/JSONObject;

    const-string v3, "in"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    .line 200
    :cond_2
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 201
    const/4 v1, 0x1

    goto :goto_0

    .line 203
    :cond_3
    instance-of v2, v0, Lorg/json/JSONObject;

    if-nez v2, :cond_0

    .line 204
    iget-object v2, p0, Lde/appplant/cordova/plugin/notification/Request;->spec:Lorg/json/JSONObject;

    const-string v3, "every"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0
.end method

.method private getUnit()Lde/appplant/cordova/plugin/notification/trigger/DateTrigger$Unit;
    .locals 5

    .prologue
    .line 174
    iget-object v2, p0, Lde/appplant/cordova/plugin/notification/Request;->spec:Lorg/json/JSONObject;

    const-string v3, "every"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 175
    .local v0, "every":Ljava/lang/Object;
    const-string v1, "SECOND"

    .line 177
    .local v1, "unit":Ljava/lang/String;
    iget-object v2, p0, Lde/appplant/cordova/plugin/notification/Request;->spec:Lorg/json/JSONObject;

    const-string v3, "unit"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 178
    iget-object v2, p0, Lde/appplant/cordova/plugin/notification/Request;->spec:Lorg/json/JSONObject;

    const-string v3, "unit"

    const-string v4, "second"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 184
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lde/appplant/cordova/plugin/notification/trigger/DateTrigger$Unit;->valueOf(Ljava/lang/String;)Lde/appplant/cordova/plugin/notification/trigger/DateTrigger$Unit;

    move-result-object v2

    return-object v2

    .line 180
    :cond_1
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 181
    iget-object v2, p0, Lde/appplant/cordova/plugin/notification/Request;->spec:Lorg/json/JSONObject;

    const-string v3, "every"

    const-string v4, "second"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private hasNext()Z
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lde/appplant/cordova/plugin/notification/Request;->triggerDate:Ljava/util/Date;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lde/appplant/cordova/plugin/notification/Request;->getOccurrence()I

    move-result v0

    iget v1, p0, Lde/appplant/cordova/plugin/notification/Request;->count:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method getIdentifier()Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lde/appplant/cordova/plugin/notification/Request;->options:Lde/appplant/cordova/plugin/notification/Options;

    invoke-virtual {v1}, Lde/appplant/cordova/plugin/notification/Options;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lde/appplant/cordova/plugin/notification/Request;->getOccurrence()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getOccurrence()I
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lde/appplant/cordova/plugin/notification/Request;->trigger:Lde/appplant/cordova/plugin/notification/trigger/DateTrigger;

    invoke-virtual {v0}, Lde/appplant/cordova/plugin/notification/trigger/DateTrigger;->getOccurrence()I

    move-result v0

    return v0
.end method

.method public getOptions()Lde/appplant/cordova/plugin/notification/Options;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lde/appplant/cordova/plugin/notification/Request;->options:Lde/appplant/cordova/plugin/notification/Options;

    return-object v0
.end method

.method getTriggerDate()Ljava/util/Date;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 128
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 130
    .local v0, "now":Ljava/util/Calendar;
    iget-object v4, p0, Lde/appplant/cordova/plugin/notification/Request;->triggerDate:Ljava/util/Date;

    if-nez v4, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-object v1

    .line 133
    :cond_1
    iget-object v4, p0, Lde/appplant/cordova/plugin/notification/Request;->triggerDate:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 135
    .local v2, "time":J
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/32 v6, 0xea60

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    .line 138
    iget-object v4, p0, Lde/appplant/cordova/plugin/notification/Request;->spec:Lorg/json/JSONObject;

    const-string v5, "before"

    const-wide/16 v6, 0x1

    add-long/2addr v6, v2

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 141
    iget-object v1, p0, Lde/appplant/cordova/plugin/notification/Request;->triggerDate:Ljava/util/Date;

    goto :goto_0
.end method

.method moveNext()Z
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Lde/appplant/cordova/plugin/notification/Request;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-direct {p0}, Lde/appplant/cordova/plugin/notification/Request;->getNextTriggerDate()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lde/appplant/cordova/plugin/notification/Request;->triggerDate:Ljava/util/Date;

    .line 119
    :goto_0
    iget-object v0, p0, Lde/appplant/cordova/plugin/notification/Request;->triggerDate:Ljava/util/Date;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 116
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lde/appplant/cordova/plugin/notification/Request;->triggerDate:Ljava/util/Date;

    goto :goto_0

    .line 119
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
