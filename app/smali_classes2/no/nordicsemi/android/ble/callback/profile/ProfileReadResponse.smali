.class public Lno/nordicsemi/android/ble/callback/profile/ProfileReadResponse;
.super Lno/nordicsemi/android/ble/response/ReadResponse;

# interfaces
.implements Lno/nordicsemi/android/ble/callback/profile/a;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lno/nordicsemi/android/ble/callback/profile/ProfileReadResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lno/nordicsemi/android/ble/callback/profile/ProfileReadResponse$a;

    invoke-direct {v0}, Lno/nordicsemi/android/ble/callback/profile/ProfileReadResponse$a;-><init>()V

    sput-object v0, Lno/nordicsemi/android/ble/callback/profile/ProfileReadResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lno/nordicsemi/android/ble/response/ReadResponse;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lno/nordicsemi/android/ble/callback/profile/ProfileReadResponse;->c:Z

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Lno/nordicsemi/android/ble/response/ReadResponse;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lno/nordicsemi/android/ble/callback/profile/ProfileReadResponse;->c:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lno/nordicsemi/android/ble/callback/profile/ProfileReadResponse;->c:Z

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lno/nordicsemi/android/ble/response/ReadResponse;->writeToParcel(Landroid/os/Parcel;I)V

    iget-boolean p2, p0, Lno/nordicsemi/android/ble/callback/profile/ProfileReadResponse;->c:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
