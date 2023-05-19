.class public Lcom/huawei/hms/ml/scan/HmsScan$EventInfo;
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
    name = "EventInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/huawei/hms/ml/scan/HmsScan$EventInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public abstractInfo:Ljava/lang/String;

.field public beginTime:Lcom/huawei/hms/ml/scan/HmsScan$EventTime;

.field public closeTime:Lcom/huawei/hms/ml/scan/HmsScan$EventTime;

.field public condition:Ljava/lang/String;

.field public placeInfo:Ljava/lang/String;

.field public sponsor:Ljava/lang/String;

.field public theme:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/huawei/hms/ml/scan/HmsScan$EventInfo$1;

    invoke-direct {v0}, Lcom/huawei/hms/ml/scan/HmsScan$EventInfo$1;-><init>()V

    sput-object v0, Lcom/huawei/hms/ml/scan/HmsScan$EventInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$EventInfo;->abstractInfo:Ljava/lang/String;

    .line 12
    const-class v0, Lcom/huawei/hms/ml/scan/HmsScan$EventTime;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/huawei/hms/ml/scan/HmsScan$EventTime;

    iput-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$EventInfo;->closeTime:Lcom/huawei/hms/ml/scan/HmsScan$EventTime;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$EventInfo;->placeInfo:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$EventInfo;->sponsor:Ljava/lang/String;

    .line 15
    const-class v0, Lcom/huawei/hms/ml/scan/HmsScan$EventTime;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/huawei/hms/ml/scan/HmsScan$EventTime;

    iput-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$EventInfo;->beginTime:Lcom/huawei/hms/ml/scan/HmsScan$EventTime;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$EventInfo;->condition:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/ml/scan/HmsScan$EventInfo;->theme:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/huawei/hms/ml/scan/HmsScan$EventTime;Lcom/huawei/hms/ml/scan/HmsScan$EventTime;Ljava/lang/String;)V
    .locals 8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 9
    invoke-direct/range {v0 .. v7}, Lcom/huawei/hms/ml/scan/HmsScan$EventInfo;-><init>(Ljava/lang/String;Lcom/huawei/hms/ml/scan/HmsScan$EventTime;Lcom/huawei/hms/ml/scan/HmsScan$EventTime;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/huawei/hms/ml/scan/HmsScan$EventTime;Lcom/huawei/hms/ml/scan/HmsScan$EventTime;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/huawei/hms/ml/scan/HmsScan$EventInfo;->theme:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/huawei/hms/ml/scan/HmsScan$EventInfo;->beginTime:Lcom/huawei/hms/ml/scan/HmsScan$EventTime;

    .line 4
    iput-object p3, p0, Lcom/huawei/hms/ml/scan/HmsScan$EventInfo;->closeTime:Lcom/huawei/hms/ml/scan/HmsScan$EventTime;

    .line 5
    iput-object p4, p0, Lcom/huawei/hms/ml/scan/HmsScan$EventInfo;->placeInfo:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/huawei/hms/ml/scan/HmsScan$EventInfo;->abstractInfo:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lcom/huawei/hms/ml/scan/HmsScan$EventInfo;->sponsor:Ljava/lang/String;

    .line 8
    iput-object p7, p0, Lcom/huawei/hms/ml/scan/HmsScan$EventInfo;->condition:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAbstractInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$EventInfo;->abstractInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getBeginTime()Lcom/huawei/hms/ml/scan/HmsScan$EventTime;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$EventInfo;->beginTime:Lcom/huawei/hms/ml/scan/HmsScan$EventTime;

    return-object v0
.end method

.method public getCloseTime()Lcom/huawei/hms/ml/scan/HmsScan$EventTime;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$EventInfo;->closeTime:Lcom/huawei/hms/ml/scan/HmsScan$EventTime;

    return-object v0
.end method

.method public getCondition()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$EventInfo;->condition:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaceInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$EventInfo;->placeInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getSponsor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$EventInfo;->sponsor:Ljava/lang/String;

    return-object v0
.end method

.method public getTheme()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$EventInfo;->theme:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$EventInfo;->abstractInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$EventInfo;->closeTime:Lcom/huawei/hms/ml/scan/HmsScan$EventTime;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 3
    iget-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$EventInfo;->placeInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$EventInfo;->sponsor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/huawei/hms/ml/scan/HmsScan$EventInfo;->beginTime:Lcom/huawei/hms/ml/scan/HmsScan$EventTime;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 6
    iget-object p2, p0, Lcom/huawei/hms/ml/scan/HmsScan$EventInfo;->condition:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/huawei/hms/ml/scan/HmsScan$EventInfo;->theme:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
