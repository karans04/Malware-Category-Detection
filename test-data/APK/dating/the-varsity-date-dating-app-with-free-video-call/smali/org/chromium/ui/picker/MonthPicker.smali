.class public Lorg/chromium/ui/picker/MonthPicker;
.super Lorg/chromium/ui/picker/TwoFieldDatePicker;
.source "MonthPicker.java"


# static fields
.field private static final MONTHS_NUMBER:I = 0xc


# instance fields
.field private final mShortMonths:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;DD)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "minValue"    # D
    .param p4, "maxValue"    # D

    .prologue
    const/4 v7, 0x1

    .line 23
    invoke-direct/range {p0 .. p5}, Lorg/chromium/ui/picker/TwoFieldDatePicker;-><init>(Landroid/content/Context;DD)V

    .line 25
    invoke-virtual {p0}, Lorg/chromium/ui/picker/MonthPicker;->getPositionInYearSpinner()Landroid/widget/NumberPicker;

    move-result-object v2

    invoke-virtual {p0}, Lorg/chromium/ui/picker/MonthPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lorg/chromium/ui/R$string;->accessibility_date_picker_month:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/NumberPicker;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 29
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v2

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/chromium/ui/picker/MonthPicker;->mShortMonths:[Ljava/lang/String;

    .line 33
    invoke-virtual {p0}, Lorg/chromium/ui/picker/MonthPicker;->usingNumericMonths()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/chromium/ui/picker/MonthPicker;->mShortMonths:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 37
    iget-object v2, p0, Lorg/chromium/ui/picker/MonthPicker;->mShortMonths:[Ljava/lang/String;

    const-string v3, "%d"

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    add-int/lit8 v6, v1, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 36
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 42
    .end local v1    # "i":I
    :cond_0
    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 43
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lorg/chromium/ui/picker/MonthPicker;->init(IILorg/chromium/ui/picker/TwoFieldDatePicker$OnMonthOrWeekChangedListener;)V

    .line 44
    return-void
.end method

.method public static createDateFromValue(D)Ljava/util/Calendar;
    .locals 10
    .param p0, "value"    # D

    .prologue
    const-wide/high16 v8, 0x4028000000000000L    # 12.0

    .line 58
    div-double v4, p0, v8

    const-wide v6, 0x409ec80000000000L    # 1970.0

    add-double/2addr v4, v6

    const-wide v6, 0x41dfffffffc00000L    # 2.147483647E9

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    double-to-int v2, v4

    .line 59
    .local v2, "year":I
    rem-double v4, p0, v8

    double-to-int v1, v4

    .line 60
    .local v1, "month":I
    const-string v3, "UTC"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 61
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 62
    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Ljava/util/Calendar;->set(III)V

    .line 63
    return-object v0
.end method


# virtual methods
.method protected getDateForValue(D)Ljava/util/Calendar;
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 68
    invoke-static {p1, p2}, Lorg/chromium/ui/picker/MonthPicker;->createDateFromValue(D)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method protected getMaxPositionInYear(I)I
    .locals 2
    .param p1, "year"    # I

    .prologue
    .line 121
    invoke-virtual {p0}, Lorg/chromium/ui/picker/MonthPicker;->getMaxDate()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 122
    invoke-virtual {p0}, Lorg/chromium/ui/picker/MonthPicker;->getMaxDate()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 124
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xb

    goto :goto_0
.end method

.method protected getMaxYear()I
    .locals 2

    .prologue
    .line 110
    invoke-virtual {p0}, Lorg/chromium/ui/picker/MonthPicker;->getMaxDate()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method protected getMinPositionInYear(I)I
    .locals 2
    .param p1, "year"    # I

    .prologue
    .line 129
    invoke-virtual {p0}, Lorg/chromium/ui/picker/MonthPicker;->getMinDate()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lorg/chromium/ui/picker/MonthPicker;->getMinDate()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 132
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getMinYear()I
    .locals 2

    .prologue
    .line 115
    invoke-virtual {p0}, Lorg/chromium/ui/picker/MonthPicker;->getMinDate()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMonth()I
    .locals 2

    .prologue
    .line 100
    invoke-virtual {p0}, Lorg/chromium/ui/picker/MonthPicker;->getCurrentDate()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getPositionInYear()I
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0}, Lorg/chromium/ui/picker/MonthPicker;->getMonth()I

    move-result v0

    return v0
.end method

.method protected setCurrentDate(II)V
    .locals 2
    .param p1, "year"    # I
    .param p2, "month"    # I

    .prologue
    .line 73
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 74
    .local v0, "date":Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/Calendar;->set(III)V

    .line 75
    invoke-virtual {p0}, Lorg/chromium/ui/picker/MonthPicker;->getMinDate()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    invoke-virtual {p0}, Lorg/chromium/ui/picker/MonthPicker;->getMinDate()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/chromium/ui/picker/MonthPicker;->setCurrentDate(Ljava/util/Calendar;)V

    .line 82
    :goto_0
    return-void

    .line 77
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/ui/picker/MonthPicker;->getMaxDate()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    invoke-virtual {p0}, Lorg/chromium/ui/picker/MonthPicker;->getMaxDate()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/chromium/ui/picker/MonthPicker;->setCurrentDate(Ljava/util/Calendar;)V

    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {p0, v0}, Lorg/chromium/ui/picker/MonthPicker;->setCurrentDate(Ljava/util/Calendar;)V

    goto :goto_0
.end method

.method protected updateSpinners()V
    .locals 4

    .prologue
    .line 86
    invoke-super {p0}, Lorg/chromium/ui/picker/TwoFieldDatePicker;->updateSpinners()V

    .line 90
    iget-object v1, p0, Lorg/chromium/ui/picker/MonthPicker;->mShortMonths:[Ljava/lang/String;

    invoke-virtual {p0}, Lorg/chromium/ui/picker/MonthPicker;->getPositionInYearSpinner()Landroid/widget/NumberPicker;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getMinValue()I

    move-result v2

    invoke-virtual {p0}, Lorg/chromium/ui/picker/MonthPicker;->getPositionInYearSpinner()Landroid/widget/NumberPicker;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/NumberPicker;->getMaxValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 93
    .local v0, "displayedValues":[Ljava/lang/String;
    invoke-virtual {p0}, Lorg/chromium/ui/picker/MonthPicker;->getPositionInYearSpinner()Landroid/widget/NumberPicker;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method protected usingNumericMonths()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    iget-object v0, p0, Lorg/chromium/ui/picker/MonthPicker;->mShortMonths:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    return v0
.end method
