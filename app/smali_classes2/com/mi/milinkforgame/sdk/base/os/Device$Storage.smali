.class public Lcom/mi/milinkforgame/sdk/base/os/Device$Storage;
.super Lcom/mi/milinkforgame/sdk/base/os/info/StorageDash;
.source "Device.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/milinkforgame/sdk/base/os/Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Storage"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mi/milinkforgame/sdk/base/os/info/StorageDash;-><init>()V

    return-void
.end method
