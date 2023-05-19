.class public Lcom/huawei/hms/ml/scan/HmsScan$ContactDetail;
.super Ljava/lang/Object;
.source "HmsScan.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/ml/scan/HmsScan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactDetail"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/huawei/hms/ml/scan/HmsScan$ContactDetail;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public addressesInfos:[Lcom/huawei/hms/ml/scan/HmsScan$AddressInfo;

.field public company:Ljava/lang/String;

.field public contactLinks:[Ljava/lang/String;

.field public eMailContents:[Lcom/huawei/hms/ml/scan/HmsScan$EmailContent;

.field public note:Ljava/lang/String;

.field public peopleName:Lcom/huawei/hms/ml/scan/HmsScan$PeopleName;

.field public telPhoneNumbers:[Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber;

.field public title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/huawei/hms/ml/scan/HmsScan$ContactDetail$1;

    invoke-direct {v0}, Lcom/huawei/hms/ml/scan/HmsScan$ContactDetail$1;-><init>()V

    sput-object v0, Lcom/huawei/hms/ml/scan/HmsScan$ContactDetail;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    sget-object v0, Lcom/huawei/hms/ml/scan/HmsScan$AddressInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/hms/ml/scan/HmsScan$AddressInfo;

    iput-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$ContactDetail;->addressesInfos:[Lcom/huawei/hms/ml/scan/HmsScan$AddressInfo;

    .line 13
    sget-object v0, Lcom/huawei/hms/ml/scan/HmsScan$EmailContent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/hms/ml/scan/HmsScan$EmailContent;

    iput-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$ContactDetail;->eMailContents:[Lcom/huawei/hms/ml/scan/HmsScan$EmailContent;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$ContactDetail;->company:Ljava/lang/String;

    .line 15
    sget-object v0, Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber;

    iput-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$ContactDetail;->telPhoneNumbers:[Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$ContactDetail;->title:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$ContactDetail;->contactLinks:[Ljava/lang/String;

    .line 18
    const-class v0, Lcom/huawei/hms/ml/scan/HmsScan$PeopleName;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/huawei/hms/ml/scan/HmsScan$PeopleName;

    iput-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$ContactDetail;->peopleName:Lcom/huawei/hms/ml/scan/HmsScan$PeopleName;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/ml/scan/HmsScan$ContactDetail;->note:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/huawei/hms/ml/scan/HmsScan$PeopleName;Ljava/lang/String;Ljava/lang/String;[Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber;[Lcom/huawei/hms/ml/scan/HmsScan$EmailContent;[Lcom/huawei/hms/ml/scan/HmsScan$AddressInfo;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/huawei/hms/ml/scan/HmsScan$ContactDetail;->peopleName:Lcom/huawei/hms/ml/scan/HmsScan$PeopleName;

    .line 3
    iput-object p2, p0, Lcom/huawei/hms/ml/scan/HmsScan$ContactDetail;->title:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/huawei/hms/ml/scan/HmsScan$ContactDetail;->company:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/huawei/hms/ml/scan/HmsScan$ContactDetail;->telPhoneNumbers:[Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber;

    .line 6
    iput-object p5, p0, Lcom/huawei/hms/ml/scan/HmsScan$ContactDetail;->eMailContents:[Lcom/huawei/hms/ml/scan/HmsScan$EmailContent;

    .line 7
    iput-object p6, p0, Lcom/huawei/hms/ml/scan/HmsScan$ContactDetail;->addressesInfos:[Lcom/huawei/hms/ml/scan/HmsScan$AddressInfo;

    .line 8
    iput-object p7, p0, Lcom/huawei/hms/ml/scan/HmsScan$ContactDetail;->contactLinks:[Ljava/lang/String;

    .line 9
    iput-object p8, p0, Lcom/huawei/hms/ml/scan/HmsScan$ContactDetail;->note:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/huawei/hms/ml/scan/HmsScan$PeopleName;[Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber;[Lcom/huawei/hms/ml/scan/HmsScan$EmailContent;)V
    .locals 9

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    .line 10
    invoke-direct/range {v0 .. v8}, Lcom/huawei/hms/ml/scan/HmsScan$ContactDetail;-><init>(Lcom/huawei/hms/ml/scan/HmsScan$PeopleName;Ljava/lang/String;Ljava/lang/String;[Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber;[Lcom/huawei/hms/ml/scan/HmsScan$EmailContent;[Lcom/huawei/hms/ml/scan/HmsScan$AddressInfo;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAddressesInfos()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/huawei/hms/ml/scan/HmsScan$AddressInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/huawei/hms/ml/scan/HmsScan$ContactDetail;->addressesInfos:[Lcom/huawei/hms/ml/scan/HmsScan$AddressInfo;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getCompany()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$ContactDetail;->company:Ljava/lang/String;

    return-object v0
.end method

.method public getContactLinks()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$ContactDetail;->contactLinks:[Ljava/lang/String;

    return-object v0
.end method

.method public getEmailContents()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/huawei/hms/ml/scan/HmsScan$EmailContent;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/huawei/hms/ml/scan/HmsScan$ContactDetail;->eMailContents:[Lcom/huawei/hms/ml/scan/HmsScan$EmailContent;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getNote()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$ContactDetail;->note:Ljava/lang/String;

    return-object v0
.end method

.method public getPeopleName()Lcom/huawei/hms/ml/scan/HmsScan$PeopleName;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$ContactDetail;->peopleName:Lcom/huawei/hms/ml/scan/HmsScan$PeopleName;

    return-object v0
.end method

.method public getTelPhoneNumbers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/huawei/hms/ml/scan/HmsScan$ContactDetail;->telPhoneNumbers:[Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$ContactDetail;->title:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$ContactDetail;->addressesInfos:[Lcom/huawei/hms/ml/scan/HmsScan$AddressInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 2
    iget-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$ContactDetail;->eMailContents:[Lcom/huawei/hms/ml/scan/HmsScan$EmailContent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 3
    iget-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$ContactDetail;->company:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$ContactDetail;->telPhoneNumbers:[Lcom/huawei/hms/ml/scan/HmsScan$TelPhoneNumber;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 5
    iget-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$ContactDetail;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$ContactDetail;->contactLinks:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$ContactDetail;->peopleName:Lcom/huawei/hms/ml/scan/HmsScan$PeopleName;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 8
    iget-object p2, p0, Lcom/huawei/hms/ml/scan/HmsScan$ContactDetail;->note:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
