.class final Lcom/google/android/gms/auth/api/accounttransfer/zzg;
.super Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient$zzf;


# instance fields
.field private final synthetic zzaz:Lcom/google/android/gms/internal/auth/zzai;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient;Lcom/google/android/gms/internal/auth/zzai;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzg;->zzaz:Lcom/google/android/gms/internal/auth/zzai;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient$zzf;-><init>(Lcom/google/android/gms/auth/api/accounttransfer/zzf;)V

    return-void
.end method


# virtual methods
.method protected final zzd(Lcom/google/android/gms/internal/auth/zzac;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzg;->zzbi:Lcom/google/android/gms/internal/auth/zzab;

    iget-object v1, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzg;->zzaz:Lcom/google/android/gms/internal/auth/zzai;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/auth/zzac;->zzd(Lcom/google/android/gms/internal/auth/zzaa;Lcom/google/android/gms/internal/auth/zzai;)V

    return-void
.end method
