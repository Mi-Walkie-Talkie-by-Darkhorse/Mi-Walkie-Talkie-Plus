.class final Lcom/huawei/hms/ml/scan/HmsScan$LinkUrl$1;
.super Ljava/lang/Object;
.source "HmsScan.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/ml/scan/HmsScan$LinkUrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/huawei/hms/ml/scan/HmsScan$LinkUrl;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/huawei/hms/ml/scan/HmsScan$LinkUrl;
    .locals 1

    .line 2
    new-instance v0, Lcom/huawei/hms/ml/scan/HmsScan$LinkUrl;

    invoke-direct {v0, p1}, Lcom/huawei/hms/ml/scan/HmsScan$LinkUrl;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/huawei/hms/ml/scan/HmsScan$LinkUrl$1;->createFromParcel(Landroid/os/Parcel;)Lcom/huawei/hms/ml/scan/HmsScan$LinkUrl;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/huawei/hms/ml/scan/HmsScan$LinkUrl;
    .locals 0

    .line 2
    new-array p1, p1, [Lcom/huawei/hms/ml/scan/HmsScan$LinkUrl;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/huawei/hms/ml/scan/HmsScan$LinkUrl$1;->newArray(I)[Lcom/huawei/hms/ml/scan/HmsScan$LinkUrl;

    move-result-object p1

    return-object p1
.end method