.class public Lcom/huawei/hms/ml/scan/HmsScan$VehicleInfo;
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
    name = "VehicleInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/huawei/hms/ml/scan/HmsScan$VehicleInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public countryCode:Ljava/lang/String;

.field public modelYear:I

.field public plantCode:Ljava/lang/String;

.field public sequentialNumber:Ljava/lang/String;

.field public vehicleAttributes:Ljava/lang/String;

.field public vehicleDescriptorSection:Ljava/lang/String;

.field public vehicleIdentifierSection:Ljava/lang/String;

.field public vin:Ljava/lang/String;

.field public worldManufacturerID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/huawei/hms/ml/scan/HmsScan$VehicleInfo$1;

    invoke-direct {v0}, Lcom/huawei/hms/ml/scan/HmsScan$VehicleInfo$1;-><init>()V

    sput-object v0, Lcom/huawei/hms/ml/scan/HmsScan$VehicleInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$VehicleInfo;->vin:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$VehicleInfo;->worldManufacturerID:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$VehicleInfo;->vehicleIdentifierSection:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$VehicleInfo;->vehicleDescriptorSection:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$VehicleInfo;->vehicleAttributes:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$VehicleInfo;->countryCode:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$VehicleInfo;->modelYear:I

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$VehicleInfo;->plantCode:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/ml/scan/HmsScan$VehicleInfo;->sequentialNumber:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 10

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    .line 11
    invoke-direct/range {v0 .. v9}, Lcom/huawei/hms/ml/scan/HmsScan$VehicleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/huawei/hms/ml/scan/HmsScan$VehicleInfo;->vin:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/huawei/hms/ml/scan/HmsScan$VehicleInfo;->worldManufacturerID:Ljava/lang/String;

    .line 4
    iput-object p6, p0, Lcom/huawei/hms/ml/scan/HmsScan$VehicleInfo;->vehicleAttributes:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/huawei/hms/ml/scan/HmsScan$VehicleInfo;->vehicleDescriptorSection:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/huawei/hms/ml/scan/HmsScan$VehicleInfo;->vehicleIdentifierSection:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lcom/huawei/hms/ml/scan/HmsScan$VehicleInfo;->countryCode:Ljava/lang/String;

    .line 8
    iput p7, p0, Lcom/huawei/hms/ml/scan/HmsScan$VehicleInfo;->modelYear:I

    .line 9
    iput-object p8, p0, Lcom/huawei/hms/ml/scan/HmsScan$VehicleInfo;->plantCode:Ljava/lang/String;

    .line 10
    iput-object p9, p0, Lcom/huawei/hms/ml/scan/HmsScan$VehicleInfo;->sequentialNumber:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$VehicleInfo;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getModelYear()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$VehicleInfo;->modelYear:I

    return v0
.end method

.method public getPlantCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$VehicleInfo;->plantCode:Ljava/lang/String;

    return-object v0
.end method

.method public getSequentialNumber()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$VehicleInfo;->sequentialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getVehicleAttributes()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$VehicleInfo;->vehicleAttributes:Ljava/lang/String;

    return-object v0
.end method

.method public getVehicleDescriptorSection()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$VehicleInfo;->vehicleDescriptorSection:Ljava/lang/String;

    return-object v0
.end method

.method public getVehicleIdentifierSection()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$VehicleInfo;->vehicleIdentifierSection:Ljava/lang/String;

    return-object v0
.end method

.method public getVin()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$VehicleInfo;->vin:Ljava/lang/String;

    return-object v0
.end method

.method public getWorldManufacturerID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$VehicleInfo;->worldManufacturerID:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/huawei/hms/ml/scan/HmsScan$VehicleInfo;->vin:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/huawei/hms/ml/scan/HmsScan$VehicleInfo;->worldManufacturerID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/huawei/hms/ml/scan/HmsScan$VehicleInfo;->vehicleDescriptorSection:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/huawei/hms/ml/scan/HmsScan$VehicleInfo;->vehicleIdentifierSection:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/huawei/hms/ml/scan/HmsScan$VehicleInfo;->countryCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/huawei/hms/ml/scan/HmsScan$VehicleInfo;->vehicleAttributes:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget p2, p0, Lcom/huawei/hms/ml/scan/HmsScan$VehicleInfo;->modelYear:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget-object p2, p0, Lcom/huawei/hms/ml/scan/HmsScan$VehicleInfo;->plantCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lcom/huawei/hms/ml/scan/HmsScan$VehicleInfo;->sequentialNumber:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
