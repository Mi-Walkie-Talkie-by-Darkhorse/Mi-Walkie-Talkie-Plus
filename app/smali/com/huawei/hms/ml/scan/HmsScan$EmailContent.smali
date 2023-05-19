.class public Lcom/huawei/hms/ml/scan/HmsScan$EmailContent;
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
    name = "EmailContent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/ml/scan/HmsScan$EmailContent$EMAIL_TYPE;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/huawei/hms/ml/scan/HmsScan$EmailContent;",
            ">;"
        }
    .end annotation
.end field

.field public static final OFFICE_USE_TYPE:I

.field public static final OTHER_USE_TYPE:I

.field public static final RESIDENTIAL_USE_TYPE:I


# instance fields
.field public addressInfo:Ljava/lang/String;

.field public addressType:I

.field public bodyInfo:Ljava/lang/String;

.field public subjectInfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/huawei/hms/ml/scan/HmsScan$EmailContent$EMAIL_TYPE;->OTHER_USE_TYPE:Lcom/huawei/hms/ml/scan/HmsScan$EmailContent$EMAIL_TYPE;

    invoke-virtual {v0}, Lcom/huawei/hms/ml/scan/HmsScan$EmailContent$EMAIL_TYPE;->getAddressType()I

    move-result v0

    sput v0, Lcom/huawei/hms/ml/scan/HmsScan$EmailContent;->OTHER_USE_TYPE:I

    .line 2
    sget-object v0, Lcom/huawei/hms/ml/scan/HmsScan$EmailContent$EMAIL_TYPE;->OFFICE_USE_TYPE:Lcom/huawei/hms/ml/scan/HmsScan$EmailContent$EMAIL_TYPE;

    invoke-virtual {v0}, Lcom/huawei/hms/ml/scan/HmsScan$EmailContent$EMAIL_TYPE;->getAddressType()I

    move-result v0

    sput v0, Lcom/huawei/hms/ml/scan/HmsScan$EmailContent;->OFFICE_USE_TYPE:I

    .line 3
    sget-object v0, Lcom/huawei/hms/ml/scan/HmsScan$EmailContent$EMAIL_TYPE;->RESIDENTIAL_USE_TYPE:Lcom/huawei/hms/ml/scan/HmsScan$EmailContent$EMAIL_TYPE;

    invoke-virtual {v0}, Lcom/huawei/hms/ml/scan/HmsScan$EmailContent$EMAIL_TYPE;->getAddressType()I

    move-result v0

    sput v0, Lcom/huawei/hms/ml/scan/HmsScan$EmailContent;->RESIDENTIAL_USE_TYPE:I

    .line 4
    new-instance v0, Lcom/huawei/hms/ml/scan/HmsScan$EmailContent$1;

    invoke-direct {v0}, Lcom/huawei/hms/ml/scan/HmsScan$EmailContent$1;-><init>()V

    sput-object v0, Lcom/huawei/hms/ml/scan/HmsScan$EmailContent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$EmailContent;->addressInfo:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$EmailContent;->bodyInfo:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$EmailContent;->subjectInfo:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/huawei/hms/ml/scan/HmsScan$EmailContent;->addressType:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/huawei/hms/ml/scan/HmsScan$EmailContent;->addressInfo:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/huawei/hms/ml/scan/HmsScan$EmailContent;->subjectInfo:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/huawei/hms/ml/scan/HmsScan$EmailContent;->bodyInfo:Ljava/lang/String;

    .line 5
    iput p4, p0, Lcom/huawei/hms/ml/scan/HmsScan$EmailContent;->addressType:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAddressInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$EmailContent;->addressInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getAddressType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$EmailContent;->addressType:I

    return v0
.end method

.method public getBodyInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$EmailContent;->bodyInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getSubjectInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$EmailContent;->subjectInfo:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/huawei/hms/ml/scan/HmsScan$EmailContent;->addressInfo:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/huawei/hms/ml/scan/HmsScan$EmailContent;->bodyInfo:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/huawei/hms/ml/scan/HmsScan$EmailContent;->subjectInfo:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget p2, p0, Lcom/huawei/hms/ml/scan/HmsScan$EmailContent;->addressType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
