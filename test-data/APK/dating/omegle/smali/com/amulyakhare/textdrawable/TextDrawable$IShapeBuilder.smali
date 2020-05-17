.class public interface abstract Lcom/amulyakhare/textdrawable/TextDrawable$IShapeBuilder;
.super Ljava/lang/Object;
.source "TextDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amulyakhare/textdrawable/TextDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IShapeBuilder"
.end annotation


# virtual methods
.method public abstract beginConfig()Lcom/amulyakhare/textdrawable/TextDrawable$IConfigBuilder;
.end method

.method public abstract buildRect(Ljava/lang/String;I)Lcom/amulyakhare/textdrawable/TextDrawable;
.end method

.method public abstract buildRound(Ljava/lang/String;I)Lcom/amulyakhare/textdrawable/TextDrawable;
.end method

.method public abstract buildRoundRect(Ljava/lang/String;II)Lcom/amulyakhare/textdrawable/TextDrawable;
.end method

.method public abstract rect()Lcom/amulyakhare/textdrawable/TextDrawable$IBuilder;
.end method

.method public abstract round()Lcom/amulyakhare/textdrawable/TextDrawable$IBuilder;
.end method

.method public abstract roundRect(I)Lcom/amulyakhare/textdrawable/TextDrawable$IBuilder;
.end method
