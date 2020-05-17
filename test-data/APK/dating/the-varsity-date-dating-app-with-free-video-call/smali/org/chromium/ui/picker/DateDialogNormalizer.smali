.class public Lorg/chromium/ui/picker/DateDialogNormalizer;
.super Ljava/lang/Object;
.source "DateDialogNormalizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ui/picker/DateDialogNormalizer$DateAndMillis;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static normalize(Landroid/widget/DatePicker;Landroid/widget/DatePicker$OnDateChangedListener;IIIJJ)V
    .locals 11
    .param p0, "picker"    # Landroid/widget/DatePicker;
    .param p1, "listener"    # Landroid/widget/DatePicker$OnDateChangedListener;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I
    .param p5, "minMillisUtc"    # J
    .param p7, "maxMillisUtc"    # J

    .prologue
    .line 110
    invoke-static {p2, p3, p4}, Lorg/chromium/ui/picker/DateDialogNormalizer$DateAndMillis;->create(III)Lorg/chromium/ui/picker/DateDialogNormalizer$DateAndMillis;

    move-result-object v0

    .line 111
    .local v0, "currentDate":Lorg/chromium/ui/picker/DateDialogNormalizer$DateAndMillis;
    invoke-static/range {p5 .. p6}, Lorg/chromium/ui/picker/DateDialogNormalizer$DateAndMillis;->create(J)Lorg/chromium/ui/picker/DateDialogNormalizer$DateAndMillis;

    move-result-object v9

    .line 112
    .local v9, "minDate":Lorg/chromium/ui/picker/DateDialogNormalizer$DateAndMillis;
    invoke-static/range {p7 .. p8}, Lorg/chromium/ui/picker/DateDialogNormalizer$DateAndMillis;->create(J)Lorg/chromium/ui/picker/DateDialogNormalizer$DateAndMillis;

    move-result-object v8

    .line 115
    .local v8, "maxDate":Lorg/chromium/ui/picker/DateDialogNormalizer$DateAndMillis;
    iget-wide v2, v8, Lorg/chromium/ui/picker/DateDialogNormalizer$DateAndMillis;->millisForPicker:J

    iget-wide v4, v9, Lorg/chromium/ui/picker/DateDialogNormalizer$DateAndMillis;->millisForPicker:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 116
    move-object v8, v9

    .line 118
    :cond_0
    iget-wide v2, v0, Lorg/chromium/ui/picker/DateDialogNormalizer$DateAndMillis;->millisForPicker:J

    iget-wide v4, v9, Lorg/chromium/ui/picker/DateDialogNormalizer$DateAndMillis;->millisForPicker:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_2

    .line 119
    move-object v0, v9

    .line 124
    :cond_1
    :goto_0
    iget-wide v2, v0, Lorg/chromium/ui/picker/DateDialogNormalizer$DateAndMillis;->millisForPicker:J

    iget-wide v4, v9, Lorg/chromium/ui/picker/DateDialogNormalizer$DateAndMillis;->millisForPicker:J

    iget-wide v6, v8, Lorg/chromium/ui/picker/DateDialogNormalizer$DateAndMillis;->millisForPicker:J

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lorg/chromium/ui/picker/DateDialogNormalizer;->setLimits(Landroid/widget/DatePicker;JJJ)V

    .line 126
    iget v1, v0, Lorg/chromium/ui/picker/DateDialogNormalizer$DateAndMillis;->year:I

    iget v2, v0, Lorg/chromium/ui/picker/DateDialogNormalizer$DateAndMillis;->month:I

    iget v3, v0, Lorg/chromium/ui/picker/DateDialogNormalizer$DateAndMillis;->day:I

    invoke-virtual {p0, v1, v2, v3, p1}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 127
    return-void

    .line 120
    :cond_2
    iget-wide v2, v0, Lorg/chromium/ui/picker/DateDialogNormalizer$DateAndMillis;->millisForPicker:J

    iget-wide v4, v8, Lorg/chromium/ui/picker/DateDialogNormalizer$DateAndMillis;->millisForPicker:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 121
    move-object v0, v8

    goto :goto_0
.end method

.method private static setLimits(Landroid/widget/DatePicker;JJJ)V
    .locals 7
    .param p0, "picker"    # Landroid/widget/DatePicker;
    .param p1, "currentMillisForPicker"    # J
    .param p3, "minMillisForPicker"    # J
    .param p5, "maxMillisForPicker"    # J

    .prologue
    const-wide v4, 0x8f68bc636000L

    .line 75
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-eq v2, v3, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x16

    if-ne v2, v3, :cond_1

    .line 77
    :cond_0
    const-wide v0, 0x8f68bc636000L

    .line 78
    .local v0, "maxRangeMillis":J
    sub-long v2, p1, v4

    invoke-static {p3, p4, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p3

    .line 80
    add-long v2, p1, v4

    invoke-static {p5, p6, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p5

    .line 87
    .end local v0    # "maxRangeMillis":J
    :cond_1
    invoke-virtual {p0}, Landroid/widget/DatePicker;->getMaxDate()J

    move-result-wide v2

    cmp-long v2, p3, v2

    if-lez v2, :cond_2

    .line 88
    invoke-virtual {p0, p5, p6}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 89
    invoke-virtual {p0, p3, p4}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 94
    :goto_0
    return-void

    .line 91
    :cond_2
    invoke-virtual {p0, p3, p4}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 92
    invoke-virtual {p0, p5, p6}, Landroid/widget/DatePicker;->setMaxDate(J)V

    goto :goto_0
.end method
