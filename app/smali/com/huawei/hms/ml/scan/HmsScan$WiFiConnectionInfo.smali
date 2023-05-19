.class public Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo;
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
    name = "WiFiConnectionInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final NO_PASSWORD_MODE_TYPE:I

.field public static final SAE_MODE_TYPE:I

.field public static final WEP_MODE_TYPE:I

.field public static final WPA_MODE_TYPE:I


# instance fields
.field public cipherMode:I

.field public password:Ljava/lang/String;

.field public ssidNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;->NO_PASSWORD_MODE_TYPE:Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;

    invoke-virtual {v0}, Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;->getCipherMode()I

    move-result v0

    sput v0, Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo;->NO_PASSWORD_MODE_TYPE:I

    .line 2
    sget-object v0, Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;->WEP_MODE_TYPE:Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;

    invoke-virtual {v0}, Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;->getCipherMode()I

    move-result v0

    sput v0, Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo;->WEP_MODE_TYPE:I

    .line 3
    sget-object v0, Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;->WPA_MODE_TYPE:Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;

    invoke-virtual {v0}, Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;->getCipherMode()I

    move-result v0

    sput v0, Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo;->WPA_MODE_TYPE:I

    .line 4
    sget-object v0, Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;->SAE_MODE_TYPE:Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;

    invoke-virtual {v0}, Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$CIPHER_MODE;->getCipherMode()I

    move-result v0

    sput v0, Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo;->SAE_MODE_TYPE:I

    .line 5
    new-instance v0, Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$1;

    invoke-direct {v0}, Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo$1;-><init>()V

    sput-object v0, Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo;->cipherMode:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo;->password:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo;->ssidNumber:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo;->ssidNumber:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo;->password:Ljava/lang/String;

    .line 4
    iput p3, p0, Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo;->cipherMode:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCipherMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo;->cipherMode:I

    return v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getSsidNumber()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo;->ssidNumber:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo;->cipherMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-object p2, p0, Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo;->password:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/huawei/hms/ml/scan/HmsScan$WiFiConnectionInfo;->ssidNumber:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
