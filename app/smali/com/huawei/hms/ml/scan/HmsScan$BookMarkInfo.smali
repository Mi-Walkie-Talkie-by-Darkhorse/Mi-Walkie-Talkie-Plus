.class public Lcom/huawei/hms/ml/scan/HmsScan$BookMarkInfo;
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
    name = "BookMarkInfo"
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
.field public bookNum:I

.field public bookPlaceInfo:Ljava/lang/String;

.field public bookType:I

.field public bookUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/huawei/hms/ml/scan/HmsScan$BookMarkInfo$1;

    invoke-direct {v0}, Lcom/huawei/hms/ml/scan/HmsScan$BookMarkInfo$1;-><init>()V

    sput-object v0, Lcom/huawei/hms/ml/scan/HmsScan$BookMarkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/huawei/hms/ml/scan/HmsScan$BookMarkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/huawei/hms/ml/scan/HmsScan$BookMarkInfo;->bookType:I

    .line 3
    iput p2, p0, Lcom/huawei/hms/ml/scan/HmsScan$BookMarkInfo;->bookNum:I

    .line 4
    iput-object p3, p0, Lcom/huawei/hms/ml/scan/HmsScan$BookMarkInfo;->bookPlaceInfo:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/huawei/hms/ml/scan/HmsScan$BookMarkInfo;->bookUri:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$BookMarkInfo;->bookType:I

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$BookMarkInfo;->bookNum:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$BookMarkInfo;->bookPlaceInfo:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/ml/scan/HmsScan$BookMarkInfo;->bookUri:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBookNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$BookMarkInfo;->bookNum:I

    return v0
.end method

.method public getBookPlaceInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$BookMarkInfo;->bookPlaceInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getBookType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$BookMarkInfo;->bookType:I

    return v0
.end method

.method public getBookUri()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$BookMarkInfo;->bookUri:Ljava/lang/String;

    return-object v0
.end method

.method public setBookNum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/huawei/hms/ml/scan/HmsScan$BookMarkInfo;->bookNum:I

    return-void
.end method

.method public setBookPlaceInfo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/ml/scan/HmsScan$BookMarkInfo;->bookPlaceInfo:Ljava/lang/String;

    return-void
.end method

.method public setBookType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/huawei/hms/ml/scan/HmsScan$BookMarkInfo;->bookType:I

    return-void
.end method

.method public setBookUri(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/ml/scan/HmsScan$BookMarkInfo;->bookUri:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/huawei/hms/ml/scan/HmsScan$BookMarkInfo;->bookType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget p2, p0, Lcom/huawei/hms/ml/scan/HmsScan$BookMarkInfo;->bookNum:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget-object p2, p0, Lcom/huawei/hms/ml/scan/HmsScan$BookMarkInfo;->bookPlaceInfo:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/huawei/hms/ml/scan/HmsScan$BookMarkInfo;->bookUri:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
