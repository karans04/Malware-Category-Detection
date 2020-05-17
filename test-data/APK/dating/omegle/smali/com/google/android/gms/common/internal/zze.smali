.class final Lcom/google/android/gms/common/internal/zze;
.super Landroid/support/v4/util/LruCache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/util/LruCache<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final synthetic zzss:Lcom/google/android/gms/common/internal/ExpirableLruCache;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/internal/ExpirableLruCache;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zze;->zzss:Lcom/google/android/gms/common/internal/ExpirableLruCache;

    invoke-direct {p0, p2}, Landroid/support/v4/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected final create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze;->zzss:Lcom/google/android/gms/common/internal/ExpirableLruCache;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/ExpirableLruCache;->create(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected final entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTK;TV;TV;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze;->zzss:Lcom/google/android/gms/common/internal/ExpirableLruCache;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/common/internal/ExpirableLruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/common/internal/zze;->zzss:Lcom/google/android/gms/common/internal/ExpirableLruCache;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ExpirableLruCache;->zza(Lcom/google/android/gms/common/internal/ExpirableLruCache;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    if-nez p4, :cond_0

    :try_start_0
    iget-object p3, p0, Lcom/google/android/gms/common/internal/zze;->zzss:Lcom/google/android/gms/common/internal/ExpirableLruCache;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/ExpirableLruCache;->zzb(Lcom/google/android/gms/common/internal/ExpirableLruCache;)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/google/android/gms/common/internal/zze;->zzss:Lcom/google/android/gms/common/internal/ExpirableLruCache;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/ExpirableLruCache;->zzc(Lcom/google/android/gms/common/internal/ExpirableLruCache;)Ljava/util/HashMap;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_0
    :goto_0
    if-nez p4, :cond_1

    iget-object p3, p0, Lcom/google/android/gms/common/internal/zze;->zzss:Lcom/google/android/gms/common/internal/ExpirableLruCache;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/ExpirableLruCache;->zzd(Lcom/google/android/gms/common/internal/ExpirableLruCache;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/google/android/gms/common/internal/zze;->zzss:Lcom/google/android/gms/common/internal/ExpirableLruCache;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/ExpirableLruCache;->zze(Lcom/google/android/gms/common/internal/ExpirableLruCache;)Ljava/util/HashMap;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method protected final sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze;->zzss:Lcom/google/android/gms/common/internal/ExpirableLruCache;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/common/internal/ExpirableLruCache;->sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
