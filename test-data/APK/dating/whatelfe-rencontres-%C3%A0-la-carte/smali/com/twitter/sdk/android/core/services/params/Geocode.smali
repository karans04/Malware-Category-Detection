.class public Lcom/twitter/sdk/android/core/services/params/Geocode;
.super Ljava/lang/Object;
.source "Geocode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/core/services/params/Geocode$Distance;
    }
.end annotation


# instance fields
.field public final distance:Lcom/twitter/sdk/android/core/services/params/Geocode$Distance;

.field public final latitude:D

.field public final longitude:D

.field public final radius:I


# direct methods
.method public constructor <init>(DDILcom/twitter/sdk/android/core/services/params/Geocode$Distance;)V
    .locals 1
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "radius"    # I
    .param p6, "distance"    # Lcom/twitter/sdk/android/core/services/params/Geocode$Distance;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-wide p1, p0, Lcom/twitter/sdk/android/core/services/params/Geocode;->latitude:D

    .line 51
    iput-wide p3, p0, Lcom/twitter/sdk/android/core/services/params/Geocode;->longitude:D

    .line 52
    iput p5, p0, Lcom/twitter/sdk/android/core/services/params/Geocode;->radius:I

    .line 53
    iput-object p6, p0, Lcom/twitter/sdk/android/core/services/params/Geocode;->distance:Lcom/twitter/sdk/android/core/services/params/Geocode$Distance;

    .line 54
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/twitter/sdk/android/core/services/params/Geocode;->latitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/twitter/sdk/android/core/services/params/Geocode;->longitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/twitter/sdk/android/core/services/params/Geocode;->radius:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/sdk/android/core/services/params/Geocode;->distance:Lcom/twitter/sdk/android/core/services/params/Geocode$Distance;

    iget-object v1, v1, Lcom/twitter/sdk/android/core/services/params/Geocode$Distance;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
