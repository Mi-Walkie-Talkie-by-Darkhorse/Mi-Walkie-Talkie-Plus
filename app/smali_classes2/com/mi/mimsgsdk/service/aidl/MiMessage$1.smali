.class final Lcom/mi/mimsgsdk/service/aidl/MiMessage$1;
.super Ljava/lang/Object;
.source "MiMessage.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/mimsgsdk/service/aidl/MiMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mi/mimsgsdk/service/aidl/MiMessage;
    .locals 1

    new-instance v0, Lcom/mi/mimsgsdk/service/aidl/MiMessage;

    invoke-direct {v0, p1}, Lcom/mi/mimsgsdk/service/aidl/MiMessage;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mi/mimsgsdk/service/aidl/MiMessage$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mi/mimsgsdk/service/aidl/MiMessage;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/mi/mimsgsdk/service/aidl/MiMessage;
    .locals 1

    new-array v0, p1, [Lcom/mi/mimsgsdk/service/aidl/MiMessage;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mi/mimsgsdk/service/aidl/MiMessage$1;->newArray(I)[Lcom/mi/mimsgsdk/service/aidl/MiMessage;

    move-result-object v0

    return-object v0
.end method
