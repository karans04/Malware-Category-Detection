.class Lorg/chromium/ui/picker/DateDialogNormalizer$DateAndMillis;
.super Ljava/lang/Object;
.source "DateDialogNormalizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/ui/picker/DateDialogNormalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DateAndMillis"
.end annotation


# instance fields
.field public final day:I

.field public final millisForPicker:J

.field public final month:I

.field public final year:I


# direct methods
.method constructor <init>(JIII)V
    .locals 1
    .param p1, "millisForPicker"    # J
    .param p3, "year"    # I
    .param p4, "month"    # I
    .param p5, "day"    # I

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-wide p1, p0, Lorg/chromium/ui/picker/DateDialogNormalizer$DateAndMillis;->millisForPicker:J

    .line 40
    iput p3, p0, Lorg/chromium/ui/picker/DateDialogNormalizer$DateAndMillis;->year:I

    .line 41
    iput p4, p0, Lorg/chromium/ui/picker/DateDialogNormalizer$DateAndMillis;->month:I

    .line 42
    iput p5, p0, Lorg/chromium/ui/picker/DateDialogNormalizer$DateAndMillis;->day:I

    .line 43
    return-void
.end method

.method static create(III)Lorg/chromium/ui/picker/DateDialogNormalizer$DateAndMillis;
    .locals 7
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I

    .prologue
    .line 58
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 59
    .local v0, "defaultTimeZoneCal":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 60
    invoke-virtual {v0, p0, p1, p2}, Ljava/util/Calendar;->set(III)V

    .line 61
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 62
    .local v2, "millisForPicker":J
    new-instance v1, Lorg/chromium/ui/picker/DateDialogNormalizer$DateAndMillis;

    move v4, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/chromium/ui/picker/DateDialogNormalizer$DateAndMillis;-><init>(JIII)V

    return-object v1
.end method

.method static create(J)Lorg/chromium/ui/picker/DateDialogNormalizer$DateAndMillis;
    .locals 8
    .param p0, "millisUtc"    # J

    .prologue
    .line 47
    new-instance v2, Ljava/util/GregorianCalendar;

    const-string v4, "UTC"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 48
    .local v2, "utcCal":Ljava/util/GregorianCalendar;
    new-instance v4, Ljava/util/Date;

    const-wide/high16 v6, -0x8000000000000000L

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v4}, Ljava/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    .line 49
    invoke-virtual {v2, p0, p1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 50
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    .line 51
    .local v3, "year":I
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    .line 52
    .local v1, "month":I
    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    .line 53
    .local v0, "day":I
    invoke-static {v3, v1, v0}, Lorg/chromium/ui/picker/DateDialogNormalizer$DateAndMillis;->create(III)Lorg/chromium/ui/picker/DateDialogNormalizer$DateAndMillis;

    move-result-object v4

    return-object v4
.end method
