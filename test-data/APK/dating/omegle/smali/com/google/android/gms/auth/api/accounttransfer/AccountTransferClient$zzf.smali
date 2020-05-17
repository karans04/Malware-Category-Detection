.class abstract Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient$zzf;
.super Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient$zze;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "zzf"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient$zze<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field zzbi:Lcom/google/android/gms/internal/auth/zzab;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient$zze;-><init>(Lcom/google/android/gms/auth/api/accounttransfer/zzf;)V

    new-instance v0, Lcom/google/android/gms/auth/api/accounttransfer/zzn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/api/accounttransfer/zzn;-><init>(Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient$zzf;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient$zzf;->zzbi:Lcom/google/android/gms/internal/auth/zzab;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/auth/api/accounttransfer/zzf;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient$zzf;-><init>()V

    return-void
.end method
