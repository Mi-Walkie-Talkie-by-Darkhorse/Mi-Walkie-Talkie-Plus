.class public Lcom/ifengyu/intercom/ui/map/TilePoint;
.super Ljava/lang/Object;
.source "TilePoint.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ifengyu/intercom/ui/map/TilePoint;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:I

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ifengyu/intercom/ui/map/TilePoint$1;

    invoke-direct {v0}, Lcom/ifengyu/intercom/ui/map/TilePoint$1;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/ui/map/TilePoint;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/ifengyu/intercom/ui/map/TilePoint;->a:I

    iput p2, p0, Lcom/ifengyu/intercom/ui/map/TilePoint;->b:I

    iput p3, p0, Lcom/ifengyu/intercom/ui/map/TilePoint;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/map/TilePoint;->a:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/map/TilePoint;->b:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/map/TilePoint;->c:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/map/TilePoint;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/map/TilePoint;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/map/TilePoint;->c:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/map/TilePoint;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/ifengyu/intercom/ui/map/TilePoint;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/ifengyu/intercom/ui/map/TilePoint;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
