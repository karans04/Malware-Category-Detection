.class public Lde/appplant/cordova/plugin/notification/trigger/IntervalTrigger;
.super Lde/appplant/cordova/plugin/notification/trigger/DateTrigger;
.source "IntervalTrigger.java"


# instance fields
.field private final ticks:I

.field final unit:Lde/appplant/cordova/plugin/notification/trigger/DateTrigger$Unit;


# direct methods
.method public constructor <init>(ILde/appplant/cordova/plugin/notification/trigger/DateTrigger$Unit;)V
    .locals 0
    .param p1, "ticks"    # I
    .param p2, "unit"    # Lde/appplant/cordova/plugin/notification/trigger/DateTrigger$Unit;

    .prologue
    .line 45
    invoke-direct {p0}, Lde/appplant/cordova/plugin/notification/trigger/DateTrigger;-><init>()V

    .line 46
    iput p1, p0, Lde/appplant/cordova/plugin/notification/trigger/IntervalTrigger;->ticks:I

    .line 47
    iput-object p2, p0, Lde/appplant/cordova/plugin/notification/trigger/IntervalTrigger;->unit:Lde/appplant/cordova/plugin/notification/trigger/DateTrigger$Unit;

    .line 48
    return-void
.end method


# virtual methods
.method addInterval(Ljava/util/Calendar;)V
    .locals 3
    .param p1, "cal"    # Ljava/util/Calendar;

    .prologue
    const/4 v2, 0x2

    .line 73
    sget-object v0, Lde/appplant/cordova/plugin/notification/trigger/IntervalTrigger$1;->$SwitchMap$de$appplant$cordova$plugin$notification$trigger$DateTrigger$Unit:[I

    iget-object v1, p0, Lde/appplant/cordova/plugin/notification/trigger/IntervalTrigger;->unit:Lde/appplant/cordova/plugin/notification/trigger/DateTrigger$Unit;

    invoke-virtual {v1}, Lde/appplant/cordova/plugin/notification/trigger/DateTrigger$Unit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 99
    :goto_0
    return-void

    .line 75
    :pswitch_0
    const/16 v0, 0xd

    iget v1, p0, Lde/appplant/cordova/plugin/notification/trigger/IntervalTrigger;->ticks:I

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 78
    :pswitch_1
    const/16 v0, 0xc

    iget v1, p0, Lde/appplant/cordova/plugin/notification/trigger/IntervalTrigger;->ticks:I

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 81
    :pswitch_2
    const/16 v0, 0xb

    iget v1, p0, Lde/appplant/cordova/plugin/notification/trigger/IntervalTrigger;->ticks:I

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 84
    :pswitch_3
    const/4 v0, 0x6

    iget v1, p0, Lde/appplant/cordova/plugin/notification/trigger/IntervalTrigger;->ticks:I

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 87
    :pswitch_4
    const/4 v0, 0x3

    iget v1, p0, Lde/appplant/cordova/plugin/notification/trigger/IntervalTrigger;->ticks:I

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 90
    :pswitch_5
    iget v0, p0, Lde/appplant/cordova/plugin/notification/trigger/IntervalTrigger;->ticks:I

    invoke-virtual {p1, v2, v0}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 93
    :pswitch_6
    iget v0, p0, Lde/appplant/cordova/plugin/notification/trigger/IntervalTrigger;->ticks:I

    mul-int/lit8 v0, v0, 0x3

    invoke-virtual {p1, v2, v0}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 96
    :pswitch_7
    const/4 v0, 0x1

    iget v1, p0, Lde/appplant/cordova/plugin/notification/trigger/IntervalTrigger;->ticks:I

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 73
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public getNextTriggerDate(Ljava/util/Date;)Ljava/util/Date;
    .locals 2
    .param p1, "base"    # Ljava/util/Date;

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lde/appplant/cordova/plugin/notification/trigger/IntervalTrigger;->getCal(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object v0

    .line 61
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {p0, v0}, Lde/appplant/cordova/plugin/notification/trigger/IntervalTrigger;->addInterval(Ljava/util/Calendar;)V

    .line 62
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/notification/trigger/IntervalTrigger;->incOccurrence()V

    .line 64
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method
