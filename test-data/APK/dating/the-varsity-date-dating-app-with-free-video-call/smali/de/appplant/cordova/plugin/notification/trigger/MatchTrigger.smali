.class public Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger;
.super Lde/appplant/cordova/plugin/notification/trigger/IntervalTrigger;
.source "MatchTrigger.java"


# static fields
.field private static INTERVALS:[Lde/appplant/cordova/plugin/notification/trigger/DateTrigger$Unit;

.field private static WEEKDAYS:[I

.field private static WEEKDAYS_REV:[I


# instance fields
.field private final matchers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final specials:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 44
    const/4 v0, 0x6

    new-array v0, v0, [Lde/appplant/cordova/plugin/notification/trigger/DateTrigger$Unit;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lde/appplant/cordova/plugin/notification/trigger/DateTrigger$Unit;->MINUTE:Lde/appplant/cordova/plugin/notification/trigger/DateTrigger$Unit;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lde/appplant/cordova/plugin/notification/trigger/DateTrigger$Unit;->HOUR:Lde/appplant/cordova/plugin/notification/trigger/DateTrigger$Unit;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lde/appplant/cordova/plugin/notification/trigger/DateTrigger$Unit;->DAY:Lde/appplant/cordova/plugin/notification/trigger/DateTrigger$Unit;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lde/appplant/cordova/plugin/notification/trigger/DateTrigger$Unit;->MONTH:Lde/appplant/cordova/plugin/notification/trigger/DateTrigger$Unit;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lde/appplant/cordova/plugin/notification/trigger/DateTrigger$Unit;->YEAR:Lde/appplant/cordova/plugin/notification/trigger/DateTrigger$Unit;

    aput-object v2, v0, v1

    sput-object v0, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger;->INTERVALS:[Lde/appplant/cordova/plugin/notification/trigger/DateTrigger$Unit;

    .line 47
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger;->WEEKDAYS:[I

    .line 50
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger;->WEEKDAYS_REV:[I

    return-void

    .line 47
    nop

    :array_0
    .array-data 4
        0x0
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x1
    .end array-data

    .line 50
    :array_1
    .array-data 4
        0x0
        0x7
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
    .end array-data
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "matchers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p2, "specials":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 80
    const/4 v0, 0x1

    invoke-static {p1, p2}, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger;->getUnit(Ljava/util/List;Ljava/util/List;)Lde/appplant/cordova/plugin/notification/trigger/DateTrigger$Unit;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lde/appplant/cordova/plugin/notification/trigger/IntervalTrigger;-><init>(ILde/appplant/cordova/plugin/notification/trigger/DateTrigger$Unit;)V

    .line 82
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    sget-object v1, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger;->WEEKDAYS:[I

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget v0, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 86
    :cond_0
    iput-object p1, p0, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger;->matchers:Ljava/util/List;

    .line 87
    iput-object p2, p0, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger;->specials:Ljava/util/List;

    .line 88
    return-void
.end method

.method private addToDate(Ljava/util/Calendar;Ljava/util/Calendar;II)V
    .locals 1
    .param p1, "cal"    # Ljava/util/Calendar;
    .param p2, "now"    # Ljava/util/Calendar;
    .param p3, "field"    # I
    .param p4, "count"    # I

    .prologue
    .line 268
    invoke-virtual {p2, p3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p1, p3, v0}, Ljava/util/Calendar;->set(II)V

    .line 269
    invoke-virtual {p1, p3, p4}, Ljava/util/Calendar;->add(II)V

    .line 270
    return-void
.end method

.method private applySpecials(Ljava/util/Calendar;)Ljava/util/Date;
    .locals 3
    .param p1, "cal"    # Ljava/util/Calendar;

    .prologue
    const/4 v0, 0x0

    .line 233
    iget-object v1, p0, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger;->specials:Ljava/util/List;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger;->setWeekOfMonth(Ljava/util/Calendar;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-object v0

    .line 236
    :cond_1
    iget-object v1, p0, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger;->specials:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1}, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger;->setDayOfWeek(Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    :cond_2
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    goto :goto_0
.end method

.method private getBaseTriggerDate(Ljava/util/Date;)Ljava/util/Calendar;
    .locals 8
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 94
    invoke-virtual {p0, p1}, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger;->getCal(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object v0

    .line 96
    .local v0, "cal":Ljava/util/Calendar;
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 98
    iget-object v1, p0, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger;->matchers:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 99
    const/16 v2, 0xc

    iget-object v1, p0, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger;->matchers:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 104
    :goto_0
    iget-object v1, p0, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger;->matchers:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 105
    const/16 v2, 0xb

    iget-object v1, p0, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger;->matchers:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 110
    :goto_1
    iget-object v1, p0, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger;->matchers:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 111
    const/4 v2, 0x5

    iget-object v1, p0, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger;->matchers:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 114
    :cond_0
    iget-object v1, p0, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger;->matchers:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 115
    iget-object v1, p0, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger;->matchers:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v5, v1}, Ljava/util/Calendar;->set(II)V

    .line 118
    :cond_1
    iget-object v1, p0, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger;->matchers:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 119
    iget-object v1, p0, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger;->matchers:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 122
    :cond_2
    return-object v0

    .line 101
    :cond_3
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 107
    :cond_4
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    goto :goto_1
.end method

.method private getTriggerDate(Ljava/util/Date;)Ljava/util/Date;
    .locals 9
    .param p1, "base"    # Ljava/util/Date;

    .prologue
    const/4 v2, 0x0

    const/16 v8, 0xb

    const/4 v7, 0x6

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 133
    invoke-direct {p0, p1}, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger;->getBaseTriggerDate(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object v0

    .line 134
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {p0, p1}, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger;->getCal(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object v1

    .line 136
    .local v1, "now":Ljava/util/Calendar;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v3

    if-ltz v3, :cond_1

    .line 137
    invoke-direct {p0, v0}, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger;->applySpecials(Ljava/util/Calendar;)Ljava/util/Date;

    move-result-object v2

    .line 229
    :cond_0
    :goto_0
    return-object v2

    .line 139
    :cond_1
    iget-object v3, p0, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger;->unit:Lde/appplant/cordova/plugin/notification/trigger/DateTrigger$Unit;

    if-eqz v3, :cond_0

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 142
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 143
    sget-object v3, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger$1;->$SwitchMap$de$appplant$cordova$plugin$notification$trigger$DateTrigger$Unit:[I

    iget-object v4, p0, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger;->unit:Lde/appplant/cordova/plugin/notification/trigger/DateTrigger$Unit;

    invoke-virtual {v4}, Lde/appplant/cordova/plugin/notification/trigger/DateTrigger$Unit;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 229
    :cond_2
    :goto_1
    invoke-direct {p0, v0}, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger;->applySpecials(Ljava/util/Calendar;)Ljava/util/Date;

    move-result-object v2

    goto :goto_0

    .line 148
    :pswitch_0
    iget-object v3, p0, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger;->matchers:Ljava/util/List;

    const/4 v4, 0x4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 149
    invoke-direct {p0, v0, v1, v5, v5}, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger;->addToDate(Ljava/util/Calendar;Ljava/util/Calendar;II)V

    goto :goto_1

    .line 154
    :pswitch_1
    invoke-direct {p0, v0, v1, v5, v5}, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger;->addToDate(Ljava/util/Calendar;Ljava/util/Calendar;II)V

    goto :goto_1

    .line 158
    :cond_3
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 159
    sget-object v3, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger$1;->$SwitchMap$de$appplant$cordova$plugin$notification$trigger$DateTrigger$Unit:[I

    iget-object v4, p0, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger;->unit:Lde/appplant/cordova/plugin/notification/trigger/DateTrigger$Unit;

    invoke-virtual {v4}, Lde/appplant/cordova/plugin/notification/trigger/DateTrigger$Unit;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    :pswitch_2
    goto :goto_1

    .line 162
    :pswitch_3
    iget-object v3, p0, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger;->matchers:Ljava/util/List;

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    .line 163
    invoke-direct {p0, v0, v1, v6, v5}, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger;->addToDate(Ljava/util/Calendar;Ljava/util/Calendar;II)V

    goto :goto_1

    .line 166
    :cond_4
    iget-object v3, p0, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger;->matchers:Ljava/util/List;

    const/4 v4, 0x4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 167
    invoke-direct {p0, v0, v1, v5, v5}, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger;->addToDate(Ljava/util/Calendar;Ljava/util/Calendar;II)V

    goto :goto_1

    .line 173
    :pswitch_4
    invoke-direct {p0, v0, v1, v6, v5}, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger;->addToDate(Ljava/util/Calendar;Ljava/util/Calendar;II)V

    goto :goto_1

    .line 176
    :pswitch_5
    invoke-direct {p0, v0, v1, v5, v5}, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger;->addToDate(Ljava/util/Calendar;Ljava/util/Calendar;II)V

    goto :goto_1

    .line 180
    :cond_5
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 181
    sget-object v3, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger$1;->$SwitchMap$de$appplant$cordova$plugin$notification$trigger$DateTrigger$Unit:[I

    iget-object v4, p0, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger;->unit:Lde/appplant/cordova/plugin/notification/trigger/DateTrigger$Unit;

    invoke-virtual {v4}, Lde/appplant/cordova/plugin/notification/trigger/DateTrigger$Unit;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_2

    goto :goto_1

    .line 183
    :pswitch_6
    iget-object v3, p0, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger;->matchers:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_6

    .line 184
    invoke-direct {p0, v0, v1, v7, v5}, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger;->addToDate(Ljava/util/Calendar;Ljava/util/Calendar;II)V

    goto :goto_1

    .line 187
    :cond_6
    iget-object v3, p0, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger;->matchers:Ljava/util/List;

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 188
    invoke-direct {p0, v0, v1, v6, v5}, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger;->addToDate(Ljava/util/Calendar;Ljava/util/Calendar;II)V

    goto :goto_1

    .line 194
    :pswitch_7
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v8, v2}, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger;->addToDate(Ljava/util/Calendar;Ljava/util/Calendar;II)V

    goto/16 :goto_1

    .line 198
    :pswitch_8
    invoke-direct {p0, v0, v1, v7, v5}, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger;->addToDate(Ljava/util/Calendar;Ljava/util/Calendar;II)V

    goto/16 :goto_1

    .line 201
    :pswitch_9
    invoke-direct {p0, v0, v1, v6, v5}, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger;->addToDate(Ljava/util/Calendar;Ljava/util/Calendar;II)V

    goto/16 :goto_1

    .line 204
    :pswitch_a
    invoke-direct {p0, v0, v1, v5, v5}, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger;->addToDate(Ljava/util/Calendar;Ljava/util/Calendar;II)V

    goto/16 :goto_1

    .line 208
    :cond_7
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 209
    sget-object v2, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger$1;->$SwitchMap$de$appplant$cordova$plugin$notification$trigger$DateTrigger$Unit:[I

    iget-object v3, p0, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger;->unit:Lde/appplant/cordova/plugin/notification/trigger/DateTrigger$Unit;

    invoke-virtual {v3}, Lde/appplant/cordova/plugin/notification/trigger/DateTrigger$Unit;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_3

    goto/16 :goto_1

    .line 211
    :pswitch_b
    const/16 v2, 0xc

    invoke-direct {p0, v0, v1, v2, v5}, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger;->addToDate(Ljava/util/Calendar;Ljava/util/Calendar;II)V

    goto/16 :goto_1

    .line 214
    :pswitch_c
    invoke-direct {p0, v0, v1, v8, v5}, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger;->addToDate(Ljava/util/Calendar;Ljava/util/Calendar;II)V

    goto/16 :goto_1

    .line 218
    :pswitch_d
    invoke-direct {p0, v0, v1, v7, v5}, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger;->addToDate(Ljava/util/Calendar;Ljava/util/Calendar;II)V

    goto/16 :goto_1

    .line 221
    :pswitch_e
    invoke-direct {p0, v0, v1, v6, v5}, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger;->addToDate(Ljava/util/Calendar;Ljava/util/Calendar;II)V

    goto/16 :goto_1

    .line 224
    :pswitch_f
    invoke-direct {p0, v0, v1, v5, v5}, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger;->addToDate(Ljava/util/Calendar;Ljava/util/Calendar;II)V

    goto/16 :goto_1

    .line 143
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 159
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_5
        :pswitch_4
    .end packed-switch

    .line 181
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_a
        :pswitch_9
    .end packed-switch

    .line 209
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_d
        :pswitch_f
        :pswitch_e
    .end packed-switch
.end method

.method private static getUnit(Ljava/util/List;Ljava/util/List;)Lde/appplant/cordova/plugin/notification/trigger/DateTrigger$Unit;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lde/appplant/cordova/plugin/notification/trigger/DateTrigger$Unit;"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "matchers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p1, "specials":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v2, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger;->INTERVALS:[Lde/appplant/cordova/plugin/notification/trigger/DateTrigger$Unit;

    const/4 v3, 0x0

    invoke-interface {p0, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    aget-object v0, v2, v3

    .local v0, "unit1":Lde/appplant/cordova/plugin/notification/trigger/DateTrigger$Unit;
    const/4 v1, 0x0

    .line 61
    .local v1, "unit2":Lde/appplant/cordova/plugin/notification/trigger/DateTrigger$Unit;
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 62
    sget-object v1, Lde/appplant/cordova/plugin/notification/trigger/DateTrigger$Unit;->WEEK:Lde/appplant/cordova/plugin/notification/trigger/DateTrigger$Unit;

    .line 65
    :cond_0
    if-nez v1, :cond_1

    .line 68
    .end local v0    # "unit1":Lde/appplant/cordova/plugin/notification/trigger/DateTrigger$Unit;
    .end local v1    # "unit2":Lde/appplant/cordova/plugin/notification/trigger/DateTrigger$Unit;
    :goto_0
    return-object v0

    .restart local v0    # "unit1":Lde/appplant/cordova/plugin/notification/trigger/DateTrigger$Unit;
    .restart local v1    # "unit2":Lde/appplant/cordova/plugin/notification/trigger/DateTrigger$Unit;
    :cond_1
    invoke-virtual {v0, v1}, Lde/appplant/cordova/plugin/notification/trigger/DateTrigger$Unit;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-gez v2, :cond_2

    .end local v1    # "unit2":Lde/appplant/cordova/plugin/notification/trigger/DateTrigger$Unit;
    :goto_1
    move-object v0, v1

    goto :goto_0

    .restart local v1    # "unit2":Lde/appplant/cordova/plugin/notification/trigger/DateTrigger$Unit;
    :cond_2
    move-object v1, v0

    goto :goto_1
.end method

.method private setDayOfWeek(Ljava/util/Calendar;)Z
    .locals 11
    .param p1, "cal"    # Ljava/util/Calendar;

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 281
    invoke-virtual {p1, v8}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 282
    sget-object v4, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger;->WEEKDAYS_REV:[I

    const/4 v7, 0x7

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    aget v0, v4, v7

    .line 283
    .local v0, "day":I
    invoke-virtual {p1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 284
    .local v2, "month":I
    invoke-virtual {p1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 285
    .local v3, "year":I
    sget-object v7, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger;->WEEKDAYS_REV:[I

    iget-object v4, p0, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger;->specials:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget v1, v7, v4

    .line 287
    .local v1, "dayToSet":I
    iget-object v4, p0, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger;->matchers:Ljava/util/List;

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    move v4, v5

    .line 312
    :goto_0
    return v4

    .line 290
    :cond_0
    if-le v0, v1, :cond_1

    .line 291
    iget-object v4, p0, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger;->specials:Ljava/util/List;

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    .line 292
    invoke-virtual {p1, v9, v6}, Ljava/util/Calendar;->add(II)V

    .line 303
    :cond_1
    :goto_1
    const/4 v7, 0x7

    iget-object v4, p0, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger;->specials:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v7, v4}, Ljava/util/Calendar;->set(II)V

    .line 305
    iget-object v4, p0, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger;->matchers:Ljava/util/List;

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {p1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-eq v4, v2, :cond_5

    move v4, v5

    .line 306
    goto :goto_0

    .line 294
    :cond_2
    iget-object v4, p0, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger;->matchers:Ljava/util/List;

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    .line 295
    invoke-virtual {p1, v8, v6}, Ljava/util/Calendar;->add(II)V

    goto :goto_1

    .line 297
    :cond_3
    iget-object v4, p0, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger;->matchers:Ljava/util/List;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_4

    .line 298
    invoke-virtual {p1, v6, v6}, Ljava/util/Calendar;->add(II)V

    goto :goto_1

    :cond_4
    move v4, v5

    .line 300
    goto :goto_0

    .line 309
    :cond_5
    iget-object v4, p0, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger;->matchers:Ljava/util/List;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {p1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-eq v4, v3, :cond_6

    move v4, v5

    .line 310
    goto :goto_0

    :cond_6
    move v4, v6

    .line 312
    goto :goto_0
.end method

.method private setWeekOfMonth(Ljava/util/Calendar;)Z
    .locals 10
    .param p1, "cal"    # Ljava/util/Calendar;

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v6, 0x1

    .line 324
    invoke-virtual {p1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 325
    .local v1, "week":I
    invoke-virtual {p1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 326
    .local v3, "year":I
    iget-object v4, p0, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger;->specials:Ljava/util/List;

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 328
    .local v2, "weekToSet":I
    if-le v1, v2, :cond_2

    .line 329
    iget-object v4, p0, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger;->matchers:Ljava/util/List;

    const/4 v7, 0x3

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 330
    invoke-virtual {p1, v8, v6}, Ljava/util/Calendar;->add(II)V

    .line 337
    :goto_0
    iget-object v4, p0, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger;->matchers:Ljava/util/List;

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-eq v4, v3, :cond_2

    move v4, v5

    .line 353
    :goto_1
    return v4

    .line 332
    :cond_0
    iget-object v4, p0, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger;->matchers:Ljava/util/List;

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .line 333
    invoke-virtual {p1, v6, v6}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    :cond_1
    move v4, v5

    .line 335
    goto :goto_1

    .line 341
    :cond_2
    invoke-virtual {p1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 343
    .local v0, "month":I
    invoke-virtual {p1, v9, v2}, Ljava/util/Calendar;->set(II)V

    .line 345
    invoke-virtual {p1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-eq v4, v0, :cond_4

    .line 346
    const/4 v4, 0x5

    invoke-virtual {p1, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 347
    invoke-virtual {p1, v8, v0}, Ljava/util/Calendar;->set(II)V

    :cond_3
    :goto_2
    move v4, v6

    .line 353
    goto :goto_1

    .line 349
    :cond_4
    iget-object v4, p0, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger;->matchers:Ljava/util/List;

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    if-eq v1, v2, :cond_3

    .line 350
    const/4 v4, 0x7

    invoke-virtual {p1, v4, v8}, Ljava/util/Calendar;->set(II)V

    goto :goto_2
.end method


# virtual methods
.method public getNextTriggerDate(Ljava/util/Date;)Ljava/util/Date;
    .locals 4
    .param p1, "base"    # Ljava/util/Date;

    .prologue
    .line 251
    move-object v1, p1

    .line 253
    .local v1, "date":Ljava/util/Date;
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger;->getOccurrence()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 254
    invoke-virtual {p0, p1}, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger;->getCal(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object v0

    .line 255
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {p0, v0}, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger;->addInterval(Ljava/util/Calendar;)V

    .line 256
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 259
    .end local v0    # "cal":Ljava/util/Calendar;
    :cond_0
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger;->incOccurrence()V

    .line 261
    invoke-direct {p0, v1}, Lde/appplant/cordova/plugin/notification/trigger/MatchTrigger;->getTriggerDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    return-object v2
.end method
