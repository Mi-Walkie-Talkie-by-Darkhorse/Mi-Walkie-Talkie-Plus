.class final Lpub/devrel/easypermissions/AppSettingsDialog$1;
.super Ljava/lang/Object;
.source "AppSettingsDialog.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpub/devrel/easypermissions/AppSettingsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lpub/devrel/easypermissions/AppSettingsDialog;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lpub/devrel/easypermissions/AppSettingsDialog$1;->createFromParcel(Landroid/os/Parcel;)Lpub/devrel/easypermissions/AppSettingsDialog;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lpub/devrel/easypermissions/AppSettingsDialog;
    .locals 2

    new-instance v0, Lpub/devrel/easypermissions/AppSettingsDialog;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lpub/devrel/easypermissions/AppSettingsDialog;-><init>(Landroid/os/Parcel;Lpub/devrel/easypermissions/AppSettingsDialog$1;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lpub/devrel/easypermissions/AppSettingsDialog$1;->newArray(I)[Lpub/devrel/easypermissions/AppSettingsDialog;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lpub/devrel/easypermissions/AppSettingsDialog;
    .locals 1

    new-array v0, p1, [Lpub/devrel/easypermissions/AppSettingsDialog;

    return-object v0
.end method
