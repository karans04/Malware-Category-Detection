.class public final Lcom/google/android/gms/internal/drive/zzic;
.super Ljava/lang/Object;


# static fields
.field public static final zzkn:Lcom/google/android/gms/internal/drive/zzid;

.field public static final zzko:Lcom/google/android/gms/internal/drive/zzie;

.field public static final zzkp:Lcom/google/android/gms/internal/drive/zzig;

.field public static final zzkq:Lcom/google/android/gms/internal/drive/zzif;

.field public static final zzkr:Lcom/google/android/gms/internal/drive/zzii;

.field public static final zzks:Lcom/google/android/gms/internal/drive/zzih;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/drive/zzid;

    const-string v1, "created"

    const v2, 0x3e8fa0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/drive/zzid;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/drive/zzic;->zzkn:Lcom/google/android/gms/internal/drive/zzid;

    new-instance v0, Lcom/google/android/gms/internal/drive/zzie;

    const-string v1, "lastOpenedTime"

    const v3, 0x419ce0

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/drive/zzie;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/drive/zzic;->zzko:Lcom/google/android/gms/internal/drive/zzie;

    new-instance v0, Lcom/google/android/gms/internal/drive/zzig;

    const-string v1, "modified"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/drive/zzig;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/drive/zzic;->zzkp:Lcom/google/android/gms/internal/drive/zzig;

    new-instance v0, Lcom/google/android/gms/internal/drive/zzif;

    const-string v1, "modifiedByMe"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/drive/zzif;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/drive/zzic;->zzkq:Lcom/google/android/gms/internal/drive/zzif;

    new-instance v0, Lcom/google/android/gms/internal/drive/zzii;

    const-string v1, "sharedWithMe"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/drive/zzii;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/drive/zzic;->zzkr:Lcom/google/android/gms/internal/drive/zzii;

    new-instance v0, Lcom/google/android/gms/internal/drive/zzih;

    const-string v1, "recency"

    const v2, 0x7a1200

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/drive/zzih;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/drive/zzic;->zzks:Lcom/google/android/gms/internal/drive/zzih;

    return-void
.end method
