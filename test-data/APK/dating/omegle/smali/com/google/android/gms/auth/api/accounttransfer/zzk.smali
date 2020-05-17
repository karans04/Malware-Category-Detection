.class final Lcom/google/android/gms/auth/api/accounttransfer/zzk;
.super Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient$zzd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient$zzd<",
        "Lcom/google/android/gms/auth/api/accounttransfer/DeviceMetaData;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzbd:Lcom/google/android/gms/auth/api/accounttransfer/zzj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/api/accounttransfer/zzj;Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient$zze;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzk;->zzbd:Lcom/google/android/gms/auth/api/accounttransfer/zzj;

    invoke-direct {p0, p2}, Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient$zzd;-><init>(Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient$zze;)V

    return-void
.end method


# virtual methods
.method public final zzd(Lcom/google/android/gms/auth/api/accounttransfer/DeviceMetaData;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzk;->zzbd:Lcom/google/android/gms/auth/api/accounttransfer/zzj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient$zze;->setResult(Ljava/lang/Object;)V

    return-void
.end method
