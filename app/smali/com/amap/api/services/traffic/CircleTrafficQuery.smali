.class public Lcom/amap/api/services/traffic/CircleTrafficQuery;
.super Lcom/amap/api/services/traffic/a;
.source "CircleTrafficQuery.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/amap/api/services/traffic/CircleTrafficQuery;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Lcom/amap/api/services/core/LatLonPoint;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amap/api/services/traffic/CircleTrafficQuery$1;

    invoke-direct {v0}, Lcom/amap/api/services/traffic/CircleTrafficQuery$1;-><init>()V

    sput-object v0, Lcom/amap/api/services/traffic/CircleTrafficQuery;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Lcom/amap/api/services/traffic/a;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/amap/api/services/traffic/CircleTrafficQuery;->c:I

    const-class v0, Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/core/LatLonPoint;

    iput-object v0, p0, Lcom/amap/api/services/traffic/CircleTrafficQuery;->b:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/amap/api/services/traffic/CircleTrafficQuery;->c:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/amap/api/services/traffic/CircleTrafficQuery;->a:I

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/services/core/LatLonPoint;II)V
    .locals 1

    invoke-direct {p0}, Lcom/amap/api/services/traffic/a;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/amap/api/services/traffic/CircleTrafficQuery;->c:I

    iput-object p1, p0, Lcom/amap/api/services/traffic/CircleTrafficQuery;->b:Lcom/amap/api/services/core/LatLonPoint;

    iput p2, p0, Lcom/amap/api/services/traffic/CircleTrafficQuery;->c:I

    iput p3, p0, Lcom/amap/api/services/traffic/CircleTrafficQuery;->a:I

    return-void
.end method


# virtual methods
.method public clone()Lcom/amap/api/services/traffic/CircleTrafficQuery;
    .locals 4

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Lcom/amap/api/services/traffic/CircleTrafficQuery;

    iget-object v1, p0, Lcom/amap/api/services/traffic/CircleTrafficQuery;->b:Lcom/amap/api/services/core/LatLonPoint;

    iget v2, p0, Lcom/amap/api/services/traffic/CircleTrafficQuery;->c:I

    iget v3, p0, Lcom/amap/api/services/traffic/CircleTrafficQuery;->a:I

    invoke-direct {v0, v1, v2, v3}, Lcom/amap/api/services/traffic/CircleTrafficQuery;-><init>(Lcom/amap/api/services/core/LatLonPoint;II)V

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "CircleTrafficQuery"

    const-string v2, "CircleTrafficQueryClone"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amap/api/services/traffic/CircleTrafficQuery;->clone()Lcom/amap/api/services/traffic/CircleTrafficQuery;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCenterPoint()Lcom/amap/api/services/core/LatLonPoint;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/traffic/CircleTrafficQuery;->b:Lcom/amap/api/services/core/LatLonPoint;

    return-object v0
.end method

.method public bridge synthetic getLevel()I
    .locals 1

    invoke-super {p0}, Lcom/amap/api/services/traffic/a;->getLevel()I

    move-result v0

    return v0
.end method

.method public getRadius()I
    .locals 1

    iget v0, p0, Lcom/amap/api/services/traffic/CircleTrafficQuery;->c:I

    return v0
.end method

.method public setCenterPoint(Lcom/amap/api/services/core/LatLonPoint;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/traffic/CircleTrafficQuery;->b:Lcom/amap/api/services/core/LatLonPoint;

    return-void
.end method

.method public bridge synthetic setLevel(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/amap/api/services/traffic/a;->setLevel(I)V

    return-void
.end method

.method public setRadius(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/services/traffic/CircleTrafficQuery;->c:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/traffic/CircleTrafficQuery;->b:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Lcom/amap/api/services/traffic/CircleTrafficQuery;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/amap/api/services/traffic/CircleTrafficQuery;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
