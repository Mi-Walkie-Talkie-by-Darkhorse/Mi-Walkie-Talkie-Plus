.class public Lcom/amap/api/maps/model/TileProjection;
.super Ljava/lang/Object;
.source "TileProjection.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lcom/amap/api/maps/model/TileProjection;


# instance fields
.field public final maxX:I

.field public final maxY:I

.field public final minX:I

.field public final minY:I

.field public final offsetX:I

.field public final offsetY:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v1, 0x0

    new-instance v0, Lcom/amap/api/maps/model/TileProjection;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/maps/model/TileProjection;-><init>(IIIIII)V

    sput-object v0, Lcom/amap/api/maps/model/TileProjection;->CREATOR:Lcom/amap/api/maps/model/TileProjection;

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/amap/api/maps/model/TileProjection;->offsetX:I

    iput p2, p0, Lcom/amap/api/maps/model/TileProjection;->offsetY:I

    iput p3, p0, Lcom/amap/api/maps/model/TileProjection;->minX:I

    iput p4, p0, Lcom/amap/api/maps/model/TileProjection;->maxX:I

    iput p5, p0, Lcom/amap/api/maps/model/TileProjection;->minY:I

    iput p6, p0, Lcom/amap/api/maps/model/TileProjection;->maxY:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/amap/api/maps/model/TileProjection;->offsetX:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/amap/api/maps/model/TileProjection;->offsetY:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/amap/api/maps/model/TileProjection;->minX:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/amap/api/maps/model/TileProjection;->maxX:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/amap/api/maps/model/TileProjection;->maxX:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/amap/api/maps/model/TileProjection;->maxY:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
