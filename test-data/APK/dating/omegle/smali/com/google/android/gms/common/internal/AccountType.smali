.class public final Lcom/google/android/gms/common/internal/AccountType;
.super Ljava/lang/Object;


# static fields
.field public static final ACCEPTABLE_ACCOUNT_TYPES:[Ljava/lang/String;

.field public static final GOOGLE:Ljava/lang/String; = "com.google"

.field public static final SIDEWINDER:Ljava/lang/String; = "cn.google"

.field public static final WORK:Ljava/lang/String; = "com.google.work"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.google"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "com.google.work"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "cn.google"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/gms/common/internal/AccountType;->ACCEPTABLE_ACCOUNT_TYPES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
