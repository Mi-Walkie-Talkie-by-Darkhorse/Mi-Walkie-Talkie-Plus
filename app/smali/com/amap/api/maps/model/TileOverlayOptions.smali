.class public final Lcom/amap/api/maps/model/TileOverlayOptions;
.super Ljava/lang/Object;
.source "TileOverlayOptions.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lcom/amap/api/maps/model/TileOverlayOptionsCreator;


# instance fields
.field private final a:I

.field private b:Lcom/amap/api/maps/model/TileProvider;

.field private c:Z

.field private d:F

.field private e:I

.field private f:J

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/amap/api/maps/model/TileOverlayOptionsCreator;

    invoke-direct {v0}, Lcom/amap/api/maps/model/TileOverlayOptionsCreator;-><init>()V

    sput-object v0, Lcom/amap/api/maps/model/TileOverlayOptions;->CREATOR:Lcom/amap/api/maps/model/TileOverlayOptionsCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->c:Z

    const/high16 v1, 0x500000

    .line 3
    iput v1, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->e:I

    const-wide/32 v1, 0x1400000

    .line 4
    iput-wide v1, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->f:J

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->g:Ljava/lang/String;

    .line 6
    iput-boolean v0, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->h:Z

    .line 7
    iput-boolean v0, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->i:Z

    .line 8
    iput v0, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->a:I

    return-void
.end method

.method constructor <init>(IZF)V
    .locals 3

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->c:Z

    const/high16 v1, 0x500000

    .line 11
    iput v1, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->e:I

    const-wide/32 v1, 0x1400000

    .line 12
    iput-wide v1, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->f:J

    const/4 v1, 0x0

    .line 13
    iput-object v1, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->g:Ljava/lang/String;

    .line 14
    iput-boolean v0, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->h:Z

    .line 15
    iput-boolean v0, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->i:Z

    .line 16
    iput p1, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->a:I

    .line 17
    iput-boolean p2, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->c:Z

    .line 18
    iput p3, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->d:F

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final diskCacheDir(Ljava/lang/String;)Lcom/amap/api/maps/model/TileOverlayOptions;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->g:Ljava/lang/String;

    return-object p0
.end method

.method public final diskCacheEnabled(Z)Lcom/amap/api/maps/model/TileOverlayOptions;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->i:Z

    return-object p0
.end method

.method public final diskCacheSize(I)Lcom/amap/api/maps/model/TileOverlayOptions;
    .locals 2

    mul-int/lit16 p1, p1, 0x400

    int-to-long v0, p1

    .line 1
    iput-wide v0, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->f:J

    return-object p0
.end method

.method public final getDiskCacheDir()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final getDiskCacheEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->i:Z

    return v0
.end method

.method public final getDiskCacheSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->f:J

    return-wide v0
.end method

.method public final getMemCacheSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->e:I

    return v0
.end method

.method public final getMemoryCacheEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->h:Z

    return v0
.end method

.method public final getTileProvider()Lcom/amap/api/maps/model/TileProvider;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->b:Lcom/amap/api/maps/model/TileProvider;

    return-object v0
.end method

.method public final getZIndex()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->d:F

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->c:Z

    return v0
.end method

.method public final memCacheSize(I)Lcom/amap/api/maps/model/TileOverlayOptions;
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->e:I

    return-object p0
.end method

.method public final memoryCacheEnabled(Z)Lcom/amap/api/maps/model/TileOverlayOptions;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->h:Z

    return-object p0
.end method

.method public final tileProvider(Lcom/amap/api/maps/model/TileProvider;)Lcom/amap/api/maps/model/TileOverlayOptions;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->b:Lcom/amap/api/maps/model/TileProvider;

    return-object p0
.end method

.method public final visible(Z)Lcom/amap/api/maps/model/TileOverlayOptions;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->c:Z

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget p2, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-object p2, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->b:Lcom/amap/api/maps/model/TileProvider;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 3
    iget-boolean p2, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->c:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 4
    iget p2, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->d:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 5
    iget p2, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->e:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget-wide v0, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->f:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 7
    iget-object p2, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->g:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget-boolean p2, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->h:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 9
    iget-boolean p2, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->i:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method

.method public final zIndex(F)Lcom/amap/api/maps/model/TileOverlayOptions;
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/api/maps/model/TileOverlayOptions;->d:F

    return-object p0
.end method
