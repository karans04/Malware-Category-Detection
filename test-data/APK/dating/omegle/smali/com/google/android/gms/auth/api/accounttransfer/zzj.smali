.class final Lcom/google/android/gms/auth/api/accounttransfer/zzj;
.super Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient$zze;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient$zze<",
        "Lcom/google/android/gms/auth/api/accounttransfer/DeviceMetaData;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzbc:Lcom/google/android/gms/internal/auth/zzy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient;Lcom/google/android/gms/internal/auth/zzy;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzj;->zzbc:Lcom/google/android/gms/internal/auth/zzy;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient$zze;-><init>(Lcom/google/android/gms/auth/api/accounttransfer/zzf;)V

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

    new-instance v0, Lcom/google/android/gms/auth/api/accounttransfer/zzk;

    invoke-direct {v0, p0, p0}, Lcom/google/android/gms/auth/api/accounttransfer/zzk;-><init>(Lcom/google/android/gms/auth/api/accounttransfer/zzj;Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient$zze;)V

    iget-object v1, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzj;->zzbc:Lcom/google/android/gms/internal/auth/zzy;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/auth/zzac;->zzd(Lcom/google/android/gms/internal/auth/zzaa;Lcom/google/android/gms/internal/auth/zzy;)V

    return-void
.end method
