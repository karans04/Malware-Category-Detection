.class public Lorg/chromium/ui/picker/DateTimePickerDialog;
.super Landroid/app/AlertDialog;
.source "DateTimePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/DatePicker$OnDateChangedListener;
.implements Landroid/widget/TimePicker$OnTimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ui/picker/DateTimePickerDialog$OnDateTimeSetListener;
    }
.end annotation


# instance fields
.field private final mCallBack:Lorg/chromium/ui/picker/DateTimePickerDialog$OnDateTimeSetListener;

.field private final mDatePicker:Landroid/widget/DatePicker;

.field private final mMaxTimeMillis:J

.field private final mMinTimeMillis:J

.field private final mTimePicker:Landroid/widget/TimePicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/chromium/ui/picker/DateTimePickerDialog$OnDateTimeSetListener;IIIIIZDD)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lorg/chromium/ui/picker/DateTimePickerDialog$OnDateTimeSetListener;
    .param p3, "year"    # I
    .param p4, "monthOfYear"    # I
    .param p5, "dayOfMonth"    # I
    .param p6, "hourOfDay"    # I
    .param p7, "minute"    # I
    .param p8, "is24HourView"    # Z
    .param p9, "min"    # D
    .param p11, "max"    # D

    .prologue
    .line 71
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 73
    move-wide/from16 v0, p9

    double-to-long v4, v0

    iput-wide v4, p0, Lorg/chromium/ui/picker/DateTimePickerDialog;->mMinTimeMillis:J

    .line 74
    move-wide/from16 v0, p11

    double-to-long v4, v0

    iput-wide v4, p0, Lorg/chromium/ui/picker/DateTimePickerDialog;->mMaxTimeMillis:J

    .line 76
    iput-object p2, p0, Lorg/chromium/ui/picker/DateTimePickerDialog;->mCallBack:Lorg/chromium/ui/picker/DateTimePickerDialog$OnDateTimeSetListener;

    .line 78
    const/4 v3, -0x1

    sget v4, Lorg/chromium/ui/R$string;->date_picker_dialog_set:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p0}, Lorg/chromium/ui/picker/DateTimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 80
    const/4 v4, -0x2

    const/high16 v3, 0x1040000

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v3, 0x0

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v4, v5, v3}, Lorg/chromium/ui/picker/DateTimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 82
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lorg/chromium/ui/picker/DateTimePickerDialog;->setIcon(I)V

    .line 83
    sget v3, Lorg/chromium/ui/R$string;->date_time_picker_dialog_title:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/chromium/ui/picker/DateTimePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 85
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 87
    .local v2, "inflater":Landroid/view/LayoutInflater;
    sget v3, Lorg/chromium/ui/R$layout;->date_time_picker_dialog:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 88
    .local v12, "view":Landroid/view/View;
    invoke-virtual {p0, v12}, Lorg/chromium/ui/picker/DateTimePickerDialog;->setView(Landroid/view/View;)V

    .line 89
    sget v3, Lorg/chromium/ui/R$id;->date_picker:I

    invoke-virtual {v12, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/DatePicker;

    iput-object v3, p0, Lorg/chromium/ui/picker/DateTimePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    .line 90
    iget-object v3, p0, Lorg/chromium/ui/picker/DateTimePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    iget-wide v8, p0, Lorg/chromium/ui/picker/DateTimePickerDialog;->mMinTimeMillis:J

    iget-wide v10, p0, Lorg/chromium/ui/picker/DateTimePickerDialog;->mMaxTimeMillis:J

    move-object v4, p0

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-static/range {v3 .. v11}, Lorg/chromium/ui/picker/DateDialogNormalizer;->normalize(Landroid/widget/DatePicker;Landroid/widget/DatePicker$OnDateChangedListener;IIIJJ)V

    .line 93
    sget v3, Lorg/chromium/ui/R$id;->time_picker:I

    invoke-virtual {v12, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TimePicker;

    iput-object v3, p0, Lorg/chromium/ui/picker/DateTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    .line 94
    iget-object v3, p0, Lorg/chromium/ui/picker/DateTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static/range {p8 .. p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 95
    iget-object v3, p0, Lorg/chromium/ui/picker/DateTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    move/from16 v0, p6

    invoke-static {v3, v0}, Lorg/chromium/ui/picker/DateTimePickerDialog;->setHour(Landroid/widget/TimePicker;I)V

    .line 96
    iget-object v3, p0, Lorg/chromium/ui/picker/DateTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    move/from16 v0, p7

    invoke-static {v3, v0}, Lorg/chromium/ui/picker/DateTimePickerDialog;->setMinute(Landroid/widget/TimePicker;I)V

    .line 97
    iget-object v3, p0, Lorg/chromium/ui/picker/DateTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v3, p0}, Landroid/widget/TimePicker;->setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V

    .line 98
    iget-object v3, p0, Lorg/chromium/ui/picker/DateTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    iget-object v4, p0, Lorg/chromium/ui/picker/DateTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static {v4}, Lorg/chromium/ui/picker/DateTimePickerDialog;->getHour(Landroid/widget/TimePicker;)I

    move-result v4

    iget-object v5, p0, Lorg/chromium/ui/picker/DateTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static {v5}, Lorg/chromium/ui/picker/DateTimePickerDialog;->getMinute(Landroid/widget/TimePicker;)I

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Lorg/chromium/ui/picker/DateTimePickerDialog;->onTimeChanged(Landroid/widget/TimePicker;II)V

    .line 99
    return-void
.end method

.method private static getHour(Landroid/widget/TimePicker;)I
    .locals 1
    .param p0, "picker"    # Landroid/widget/TimePicker;

    .prologue
    .line 177
    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private static getMinute(Landroid/widget/TimePicker;)I
    .locals 1
    .param p0, "picker"    # Landroid/widget/TimePicker;

    .prologue
    .line 182
    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static onTimeChangedInternal(IIILandroid/widget/TimePicker;JJ)V
    .locals 8
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I
    .param p3, "picker"    # Landroid/widget/TimePicker;
    .param p4, "minTimeMillis"    # J
    .param p6, "maxTimeMillis"    # J
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 136
    new-instance v0, Ljava/util/GregorianCalendar;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 137
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 138
    invoke-static {p3}, Lorg/chromium/ui/picker/DateTimePickerDialog;->getHour(Landroid/widget/TimePicker;)I

    move-result v4

    invoke-static {p3}, Lorg/chromium/ui/picker/DateTimePickerDialog;->getMinute(Landroid/widget/TimePicker;)I

    move-result v5

    const/4 v6, 0x0

    move v1, p0

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 140
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long v1, v2, p4

    if-gez v1, :cond_1

    .line 141
    invoke-virtual {v0, p4, p5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 145
    :cond_0
    :goto_0
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {p3, v1}, Lorg/chromium/ui/picker/DateTimePickerDialog;->setHour(Landroid/widget/TimePicker;I)V

    .line 146
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {p3, v1}, Lorg/chromium/ui/picker/DateTimePickerDialog;->setMinute(Landroid/widget/TimePicker;I)V

    .line 147
    return-void

    .line 142
    :cond_1
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long v1, v2, p6

    if-lez v1, :cond_0

    .line 143
    invoke-virtual {v0, p6, p7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method private static setHour(Landroid/widget/TimePicker;I)V
    .locals 1
    .param p0, "picker"    # Landroid/widget/TimePicker;
    .param p1, "hour"    # I

    .prologue
    .line 167
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 168
    return-void
.end method

.method private static setMinute(Landroid/widget/TimePicker;I)V
    .locals 1
    .param p0, "picker"    # Landroid/widget/TimePicker;
    .param p1, "minute"    # I

    .prologue
    .line 172
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 173
    return-void
.end method

.method private tryNotifyDateTimeSet()V
    .locals 8

    .prologue
    .line 107
    iget-object v0, p0, Lorg/chromium/ui/picker/DateTimePickerDialog;->mCallBack:Lorg/chromium/ui/picker/DateTimePickerDialog$OnDateTimeSetListener;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lorg/chromium/ui/picker/DateTimePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v0}, Landroid/widget/DatePicker;->clearFocus()V

    .line 109
    iget-object v0, p0, Lorg/chromium/ui/picker/DateTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v0}, Landroid/widget/TimePicker;->clearFocus()V

    .line 110
    iget-object v0, p0, Lorg/chromium/ui/picker/DateTimePickerDialog;->mCallBack:Lorg/chromium/ui/picker/DateTimePickerDialog$OnDateTimeSetListener;

    iget-object v1, p0, Lorg/chromium/ui/picker/DateTimePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    iget-object v2, p0, Lorg/chromium/ui/picker/DateTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    iget-object v3, p0, Lorg/chromium/ui/picker/DateTimePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v3}, Landroid/widget/DatePicker;->getYear()I

    move-result v3

    iget-object v4, p0, Lorg/chromium/ui/picker/DateTimePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v4}, Landroid/widget/DatePicker;->getMonth()I

    move-result v4

    iget-object v5, p0, Lorg/chromium/ui/picker/DateTimePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v5}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v5

    iget-object v6, p0, Lorg/chromium/ui/picker/DateTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static {v6}, Lorg/chromium/ui/picker/DateTimePickerDialog;->getHour(Landroid/widget/TimePicker;)I

    move-result v6

    iget-object v7, p0, Lorg/chromium/ui/picker/DateTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static {v7}, Lorg/chromium/ui/picker/DateTimePickerDialog;->getMinute(Landroid/widget/TimePicker;)I

    move-result v7

    invoke-interface/range {v0 .. v7}, Lorg/chromium/ui/picker/DateTimePickerDialog$OnDateTimeSetListener;->onDateTimeSet(Landroid/widget/DatePicker;Landroid/widget/TimePicker;IIIII)V

    .line 114
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 103
    invoke-direct {p0}, Lorg/chromium/ui/picker/DateTimePickerDialog;->tryNotifyDateTimeSet()V

    .line 104
    return-void
.end method

.method public onDateChanged(Landroid/widget/DatePicker;III)V
    .locals 3
    .param p1, "view"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .prologue
    .line 120
    iget-object v0, p0, Lorg/chromium/ui/picker/DateTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lorg/chromium/ui/picker/DateTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    iget-object v1, p0, Lorg/chromium/ui/picker/DateTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static {v1}, Lorg/chromium/ui/picker/DateTimePickerDialog;->getHour(Landroid/widget/TimePicker;)I

    move-result v1

    iget-object v2, p0, Lorg/chromium/ui/picker/DateTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static {v2}, Lorg/chromium/ui/picker/DateTimePickerDialog;->getMinute(Landroid/widget/TimePicker;)I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/chromium/ui/picker/DateTimePickerDialog;->onTimeChanged(Landroid/widget/TimePicker;II)V

    .line 123
    :cond_0
    return-void
.end method

.method public onTimeChanged(Landroid/widget/TimePicker;II)V
    .locals 8
    .param p1, "view"    # Landroid/widget/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    .line 127
    iget-object v0, p0, Lorg/chromium/ui/picker/DateTimePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v0}, Landroid/widget/DatePicker;->getYear()I

    move-result v0

    iget-object v1, p0, Lorg/chromium/ui/picker/DateTimePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v1}, Landroid/widget/DatePicker;->getMonth()I

    move-result v1

    iget-object v2, p0, Lorg/chromium/ui/picker/DateTimePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v2}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v2

    iget-object v3, p0, Lorg/chromium/ui/picker/DateTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    iget-wide v4, p0, Lorg/chromium/ui/picker/DateTimePickerDialog;->mMinTimeMillis:J

    iget-wide v6, p0, Lorg/chromium/ui/picker/DateTimePickerDialog;->mMaxTimeMillis:J

    invoke-static/range {v0 .. v7}, Lorg/chromium/ui/picker/DateTimePickerDialog;->onTimeChangedInternal(IIILandroid/widget/TimePicker;JJ)V

    .line 129
    return-void
.end method

.method public updateDateTime(IIIII)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "hourOfDay"    # I
    .param p5, "minutOfHour"    # I

    .prologue
    .line 158
    iget-object v0, p0, Lorg/chromium/ui/picker/DateTimePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/DatePicker;->updateDate(III)V

    .line 159
    iget-object v0, p0, Lorg/chromium/ui/picker/DateTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static {v0, p4}, Lorg/chromium/ui/picker/DateTimePickerDialog;->setHour(Landroid/widget/TimePicker;I)V

    .line 160
    iget-object v0, p0, Lorg/chromium/ui/picker/DateTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static {v0, p5}, Lorg/chromium/ui/picker/DateTimePickerDialog;->setMinute(Landroid/widget/TimePicker;I)V

    .line 161
    return-void
.end method
