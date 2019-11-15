.class public Lcom/mi/mimsgsdk/service/aidl/ConferenceMember;
.super Ljava/lang/Object;
.source "ConferenceMember.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mi/mimsgsdk/service/aidl/ConferenceMember;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public gUid:Ljava/lang/String;

.field public mUid:J

.field public mediaMuid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mi/mimsgsdk/service/aidl/ConferenceMember$1;

    invoke-direct {v0}, Lcom/mi/mimsgsdk/service/aidl/ConferenceMember$1;-><init>()V

    sput-object v0, Lcom/mi/mimsgsdk/service/aidl/ConferenceMember;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/service/aidl/ConferenceMember;->gUid:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mi/mimsgsdk/service/aidl/ConferenceMember;->mUid:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mi/mimsgsdk/service/aidl/ConferenceMember;->mediaMuid:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/mi/mimsgsdk/service/aidl/ConferenceMember;->gUid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/mi/mimsgsdk/service/aidl/ConferenceMember;->mUid:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/mi/mimsgsdk/service/aidl/ConferenceMember;->mediaMuid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
