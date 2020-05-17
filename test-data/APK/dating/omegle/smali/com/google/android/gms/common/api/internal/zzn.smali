.class final Lcom/google/android/gms/common/api/internal/zzn;
.super Lcom/google/android/gms/common/api/internal/GooglePlayServicesUpdatedReceiver$Callback;


# instance fields
.field private final synthetic zzex:Landroid/app/Dialog;

.field private final synthetic zzey:Lcom/google/android/gms/common/api/internal/zzm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zzm;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzn;->zzey:Lcom/google/android/gms/common/api/internal/zzm;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zzn;->zzex:Landroid/app/Dialog;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/GooglePlayServicesUpdatedReceiver$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzv()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzn;->zzey:Lcom/google/android/gms/common/api/internal/zzm;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zzm;->zzew:Lcom/google/android/gms/common/api/internal/zzk;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zzk;->zzt()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzn;->zzex:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzn;->zzex:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
