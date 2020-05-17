.class final Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;
.super Ljava/lang/Object;
.source "ChromeBluetoothRemoteGattCharacteristic.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "device"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Bluetooth"


# instance fields
.field final mCharacteristic:Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;

.field final mChromeDevice:Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;

.field final mInstanceId:Ljava/lang/String;

.field private mNativeBluetoothRemoteGattCharacteristicAndroid:J


# direct methods
.method private constructor <init>(JLorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;Ljava/lang/String;Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;)V
    .locals 3
    .param p1, "nativeBluetoothRemoteGattCharacteristicAndroid"    # J
    .param p3, "characteristicWrapper"    # Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;
    .param p4, "instanceId"    # Ljava/lang/String;
    .param p5, "chromeDevice"    # Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-wide p1, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;->mNativeBluetoothRemoteGattCharacteristicAndroid:J

    .line 39
    iput-object p3, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;->mCharacteristic:Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;

    .line 40
    iput-object p4, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;->mInstanceId:Ljava/lang/String;

    .line 41
    iput-object p5, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;->mChromeDevice:Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;

    .line 43
    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;->mChromeDevice:Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;

    iget-object v0, v0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mWrapperToChromeCharacteristicsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v0, "Bluetooth"

    const-string v1, "ChromeBluetoothRemoteGattCharacteristic created."

    invoke-static {v0, v1}, Lorg/chromium/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method private static create(JLjava/lang/Object;Ljava/lang/String;Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;)Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;
    .locals 8
    .param p0, "nativeBluetoothRemoteGattCharacteristicAndroid"    # J
    .param p2, "bluetoothGattCharacteristicWrapper"    # Ljava/lang/Object;
    .param p3, "instanceId"    # Ljava/lang/String;
    .param p4, "chromeDevice"    # Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 96
    new-instance v1, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;

    move-object v4, p2

    check-cast v4, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;

    move-wide v2, p0

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;-><init>(JLorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;Ljava/lang/String;Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;)V

    return-object v1
.end method

.method private createDescriptors()V
    .locals 10
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 149
    iget-object v1, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;->mCharacteristic:Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;

    invoke-virtual {v1}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;->getDescriptors()Ljava/util/List;

    move-result-object v0

    .line 156
    .local v0, "descriptors":Ljava/util/List;, "Ljava/util/List<Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattDescriptorWrapper;>;"
    const/4 v8, 0x0

    .line 157
    .local v8, "instanceIdCounter":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattDescriptorWrapper;

    .line 158
    .local v5, "descriptor":Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattDescriptorWrapper;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;->mInstanceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattDescriptorWrapper;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "instanceIdCounter":I
    .local v9, "instanceIdCounter":I
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 160
    .local v4, "descriptorInstanceId":Ljava/lang/String;
    iget-wide v2, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;->mNativeBluetoothRemoteGattCharacteristicAndroid:J

    iget-object v6, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;->mChromeDevice:Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;->nativeCreateGattRemoteDescriptor(JLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move v8, v9

    .line 162
    .end local v9    # "instanceIdCounter":I
    .restart local v8    # "instanceIdCounter":I
    goto :goto_0

    .line 163
    .end local v4    # "descriptorInstanceId":Ljava/lang/String;
    .end local v5    # "descriptor":Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattDescriptorWrapper;
    :cond_0
    return-void
.end method

.method private getProperties()I
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;->mCharacteristic:Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;

    invoke-virtual {v0}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;->getProperties()I

    move-result v0

    return v0
.end method

.method private getUUID()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;->mCharacteristic:Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;

    invoke-virtual {v0}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private native nativeCreateGattRemoteDescriptor(JLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method private onBluetoothRemoteGattCharacteristicAndroidDestruction()V
    .locals 3
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 53
    const-string v0, "Bluetooth"

    const-string v1, "ChromeBluetoothRemoteGattCharacteristic Destroyed."

    invoke-static {v0, v1}, Lorg/chromium/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;->mChromeDevice:Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;

    iget-object v0, v0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mBluetoothGatt:Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattWrapper;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;->mChromeDevice:Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;

    iget-object v0, v0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mBluetoothGatt:Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattWrapper;

    iget-object v1, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;->mCharacteristic:Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattWrapper;->setCharacteristicNotification(Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;Z)Z

    .line 57
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;->mNativeBluetoothRemoteGattCharacteristicAndroid:J

    .line 58
    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;->mChromeDevice:Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;

    iget-object v0, v0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mWrapperToChromeCharacteristicsMap:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;->mCharacteristic:Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-void
.end method

.method private readRemoteCharacteristic()Z
    .locals 4
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 118
    iget-object v1, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;->mChromeDevice:Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;

    iget-object v1, v1, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mBluetoothGatt:Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattWrapper;

    iget-object v2, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;->mCharacteristic:Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;

    invoke-virtual {v1, v2}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattWrapper;->readCharacteristic(Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    const-string v1, "Bluetooth"

    const-string v2, "readRemoteCharacteristic readCharacteristic failed."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setCharacteristicNotification(Z)Z
    .locals 2
    .param p1, "enabled"    # Z
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;->mChromeDevice:Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;

    iget-object v0, v0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mBluetoothGatt:Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattWrapper;

    iget-object v1, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;->mCharacteristic:Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;

    invoke-virtual {v0, v1, p1}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattWrapper;->setCharacteristicNotification(Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;Z)Z

    move-result v0

    return v0
.end method

.method private writeRemoteCharacteristic([B)Z
    .locals 4
    .param p1, "value"    # [B
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 128
    iget-object v1, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;->mCharacteristic:Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;

    invoke-virtual {v1, p1}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;->setValue([B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 129
    const-string v1, "Bluetooth"

    const-string v2, "writeRemoteCharacteristic setValue failed."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    :goto_0
    return v0

    .line 132
    :cond_0
    iget-object v1, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;->mChromeDevice:Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;

    iget-object v1, v1, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->mBluetoothGatt:Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattWrapper;

    iget-object v2, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;->mCharacteristic:Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;

    invoke-virtual {v1, v2}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattWrapper;->writeCharacteristic(Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 133
    const-string v1, "Bluetooth"

    const-string v2, "writeRemoteCharacteristic writeCharacteristic failed."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 136
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method native nativeOnChanged(J[B)V
.end method

.method native nativeOnRead(JI[B)V
.end method

.method native nativeOnWrite(JI)V
.end method

.method onCharacteristicChanged()V
    .locals 4

    .prologue
    .line 62
    const-string v0, "Bluetooth"

    const-string v1, "onCharacteristicChanged"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    iget-wide v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;->mNativeBluetoothRemoteGattCharacteristicAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 64
    iget-wide v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;->mNativeBluetoothRemoteGattCharacteristicAndroid:J

    iget-object v2, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;->mCharacteristic:Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;

    invoke-virtual {v2}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;->getValue()[B

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;->nativeOnChanged(J[B)V

    .line 67
    :cond_0
    return-void
.end method

.method onCharacteristicRead(I)V
    .locals 5
    .param p1, "status"    # I

    .prologue
    .line 70
    const-string v1, "Bluetooth"

    const-string v2, "onCharacteristicRead status:%d==%s"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x1

    if-nez p1, :cond_1

    const-string v0, "OK"

    :goto_0
    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    iget-wide v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;->mNativeBluetoothRemoteGattCharacteristicAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 73
    iget-wide v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;->mNativeBluetoothRemoteGattCharacteristicAndroid:J

    iget-object v2, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;->mCharacteristic:Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;

    invoke-virtual {v2}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;->getValue()[B

    move-result-object v2

    invoke-virtual {p0, v0, v1, p1, v2}, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;->nativeOnRead(JI[B)V

    .line 76
    :cond_0
    return-void

    .line 70
    :cond_1
    const-string v0, "Error"

    goto :goto_0
.end method

.method onCharacteristicWrite(I)V
    .locals 5
    .param p1, "status"    # I

    .prologue
    .line 79
    const-string v1, "Bluetooth"

    const-string v2, "onCharacteristicWrite status:%d==%s"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x1

    if-nez p1, :cond_1

    const-string v0, "OK"

    :goto_0
    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    iget-wide v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;->mNativeBluetoothRemoteGattCharacteristicAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 82
    iget-wide v0, p0, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;->mNativeBluetoothRemoteGattCharacteristicAndroid:J

    invoke-virtual {p0, v0, v1, p1}, Lorg/chromium/device/bluetooth/ChromeBluetoothRemoteGattCharacteristic;->nativeOnWrite(JI)V

    .line 84
    :cond_0
    return-void

    .line 79
    :cond_1
    const-string v0, "Error"

    goto :goto_0
.end method
