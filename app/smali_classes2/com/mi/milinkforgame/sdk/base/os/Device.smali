.class public Lcom/mi/milinkforgame/sdk/base/os/Device;
.super Lcom/mi/milinkforgame/sdk/base/os/info/DeviceDash;
.source "Device.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/milinkforgame/sdk/base/os/Device$Network;,
        Lcom/mi/milinkforgame/sdk/base/os/Device$Storage;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/base/os/info/DeviceDash;-><init>()V

    return-void
.end method

.method public static getInfo()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/os/Device;->getInstance()Lcom/mi/milinkforgame/sdk/base/os/info/DeviceDash;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/base/os/info/DeviceDash;->getDeviceInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
