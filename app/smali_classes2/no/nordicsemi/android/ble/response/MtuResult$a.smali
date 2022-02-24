.class final Lno/nordicsemi/android/ble/response/MtuResult$a;
.super Ljava/lang/Object;
.source "MtuResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lno/nordicsemi/android/ble/response/MtuResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lno/nordicsemi/android/ble/response/MtuResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lno/nordicsemi/android/ble/response/MtuResult$a;->createFromParcel(Landroid/os/Parcel;)Lno/nordicsemi/android/ble/response/MtuResult;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lno/nordicsemi/android/ble/response/MtuResult;
    .locals 1

    .line 2
    new-instance v0, Lno/nordicsemi/android/ble/response/MtuResult;

    invoke-direct {v0, p1}, Lno/nordicsemi/android/ble/response/MtuResult;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lno/nordicsemi/android/ble/response/MtuResult$a;->newArray(I)[Lno/nordicsemi/android/ble/response/MtuResult;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lno/nordicsemi/android/ble/response/MtuResult;
    .locals 0

    .line 2
    new-array p1, p1, [Lno/nordicsemi/android/ble/response/MtuResult;

    return-object p1
.end method
