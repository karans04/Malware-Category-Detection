.class Lorg/chromium/content/browser/input/DateTimeChooserAndroid;
.super Ljava/lang/Object;
.source "DateTimeChooserAndroid.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "content"
.end annotation


# instance fields
.field private final mInputDialogContainer:Lorg/chromium/ui/picker/InputDialogContainer;

.field private final mNativeDateTimeChooserAndroid:J


# direct methods
.method private constructor <init>(Landroid/content/Context;J)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nativeDateTimeChooserAndroid"    # J

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-wide p2, p0, Lorg/chromium/content/browser/input/DateTimeChooserAndroid;->mNativeDateTimeChooserAndroid:J

    .line 28
    new-instance v0, Lorg/chromium/ui/picker/InputDialogContainer;

    new-instance v1, Lorg/chromium/content/browser/input/DateTimeChooserAndroid$1;

    invoke-direct {v1, p0}, Lorg/chromium/content/browser/input/DateTimeChooserAndroid$1;-><init>(Lorg/chromium/content/browser/input/DateTimeChooserAndroid;)V

    invoke-direct {v0, p1, v1}, Lorg/chromium/ui/picker/InputDialogContainer;-><init>(Landroid/content/Context;Lorg/chromium/ui/picker/InputDialogContainer$InputActionDelegate;)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/DateTimeChooserAndroid;->mInputDialogContainer:Lorg/chromium/ui/picker/InputDialogContainer;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/content/browser/input/DateTimeChooserAndroid;)J
    .locals 2
    .param p0, "x0"    # Lorg/chromium/content/browser/input/DateTimeChooserAndroid;

    .prologue
    .line 20
    iget-wide v0, p0, Lorg/chromium/content/browser/input/DateTimeChooserAndroid;->mNativeDateTimeChooserAndroid:J

    return-wide v0
.end method

.method static synthetic access$100(Lorg/chromium/content/browser/input/DateTimeChooserAndroid;JD)V
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/input/DateTimeChooserAndroid;
    .param p1, "x1"    # J
    .param p3, "x2"    # D

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/content/browser/input/DateTimeChooserAndroid;->nativeReplaceDateTime(JD)V

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/content/browser/input/DateTimeChooserAndroid;J)V
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/input/DateTimeChooserAndroid;
    .param p1, "x1"    # J

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/input/DateTimeChooserAndroid;->nativeCancelDialog(J)V

    return-void
.end method

.method private static createDateTimeChooser(Lorg/chromium/ui/base/WindowAndroid;JIDDDD[Lorg/chromium/ui/picker/DateTimeSuggestion;)Lorg/chromium/content/browser/input/DateTimeChooserAndroid;
    .locals 12
    .param p0, "windowAndroid"    # Lorg/chromium/ui/base/WindowAndroid;
    .param p1, "nativeDateTimeChooserAndroid"    # J
    .param p3, "dialogType"    # I
    .param p4, "dialogValue"    # D
    .param p6, "min"    # D
    .param p8, "max"    # D
    .param p10, "step"    # D
    .param p12, "suggestions"    # [Lorg/chromium/ui/picker/DateTimeSuggestion;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 56
    invoke-virtual {p0}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/Activity;

    .line 57
    .local v11, "windowAndroidActivity":Landroid/app/Activity;
    if-nez v11, :cond_0

    const/4 v0, 0x0

    .line 61
    :goto_0
    return-object v0

    .line 58
    :cond_0
    new-instance v0, Lorg/chromium/content/browser/input/DateTimeChooserAndroid;

    invoke-direct {v0, v11, p1, p2}, Lorg/chromium/content/browser/input/DateTimeChooserAndroid;-><init>(Landroid/content/Context;J)V

    .local v0, "chooser":Lorg/chromium/content/browser/input/DateTimeChooserAndroid;
    move v1, p3

    move-wide/from16 v2, p4

    move-wide/from16 v4, p6

    move-wide/from16 v6, p8

    move-wide/from16 v8, p10

    move-object/from16 v10, p12

    .line 60
    invoke-direct/range {v0 .. v10}, Lorg/chromium/content/browser/input/DateTimeChooserAndroid;->showDialog(IDDDD[Lorg/chromium/ui/picker/DateTimeSuggestion;)V

    goto :goto_0
.end method

.method private static createSuggestionsArray(I)[Lorg/chromium/ui/picker/DateTimeSuggestion;
    .locals 1
    .param p0, "size"    # I
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 66
    new-array v0, p0, [Lorg/chromium/ui/picker/DateTimeSuggestion;

    return-object v0
.end method

.method private native nativeCancelDialog(J)V
.end method

.method private native nativeReplaceDateTime(JD)V
.end method

.method private static setDateTimeSuggestionAt([Lorg/chromium/ui/picker/DateTimeSuggestion;IDLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "array"    # [Lorg/chromium/ui/picker/DateTimeSuggestion;
    .param p1, "index"    # I
    .param p2, "value"    # D
    .param p4, "localizedValue"    # Ljava/lang/String;
    .param p5, "label"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 79
    new-instance v0, Lorg/chromium/ui/picker/DateTimeSuggestion;

    invoke-direct {v0, p2, p3, p4, p5}, Lorg/chromium/ui/picker/DateTimeSuggestion;-><init>(DLjava/lang/String;Ljava/lang/String;)V

    aput-object v0, p0, p1

    .line 80
    return-void
.end method

.method private showDialog(IDDDD[Lorg/chromium/ui/picker/DateTimeSuggestion;)V
    .locals 12
    .param p1, "dialogType"    # I
    .param p2, "dialogValue"    # D
    .param p4, "min"    # D
    .param p6, "max"    # D
    .param p8, "step"    # D
    .param p10, "suggestions"    # [Lorg/chromium/ui/picker/DateTimeSuggestion;

    .prologue
    .line 46
    iget-object v0, p0, Lorg/chromium/content/browser/input/DateTimeChooserAndroid;->mInputDialogContainer:Lorg/chromium/ui/picker/InputDialogContainer;

    move v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-object/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Lorg/chromium/ui/picker/InputDialogContainer;->showDialog(IDDDD[Lorg/chromium/ui/picker/DateTimeSuggestion;)V

    .line 47
    return-void
.end method
