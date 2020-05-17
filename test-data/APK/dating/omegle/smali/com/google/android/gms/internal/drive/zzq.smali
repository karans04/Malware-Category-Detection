.class public Lcom/google/android/gms/internal/drive/zzq;
.super Ljava/lang/Object;


# instance fields
.field public final zzay:Ljava/lang/String;

.field public final zzbb:Lcom/google/android/gms/drive/DriveId;

.field public final zzdc:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

.field public final zzdi:Ljava/lang/Integer;

.field public final zzdj:I


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;Ljava/lang/Integer;Ljava/lang/String;Lcom/google/android/gms/drive/DriveId;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzq;->zzdc:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    iput-object p2, p0, Lcom/google/android/gms/internal/drive/zzq;->zzdi:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/google/android/gms/internal/drive/zzq;->zzay:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/drive/zzq;->zzbb:Lcom/google/android/gms/drive/DriveId;

    iput p5, p0, Lcom/google/android/gms/internal/drive/zzq;->zzdj:I

    return-void
.end method
