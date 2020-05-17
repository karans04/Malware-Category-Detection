.class public interface abstract Lorg/chromium/ui/base/AndroidPermissionDelegate;
.super Ljava/lang/Object;
.source "AndroidPermissionDelegate.java"


# virtual methods
.method public abstract canRequestPermission(Ljava/lang/String;)Z
.end method

.method public abstract hasPermission(Ljava/lang/String;)Z
.end method

.method public abstract isPermissionRevokedByPolicy(Ljava/lang/String;)Z
.end method

.method public abstract requestPermissions([Ljava/lang/String;Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;)V
.end method
