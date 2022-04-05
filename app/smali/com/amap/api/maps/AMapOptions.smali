.class public Lcom/amap/api/maps/AMapOptions;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lcom/amap/api/maps/AMapOptionsCreator;

.field public static final LOGO_MARGIN_BOTTOM:I = 0x2

.field public static final LOGO_MARGIN_LEFT:I = 0x0

.field public static final LOGO_MARGIN_RIGHT:I = 0x1

.field public static final LOGO_POSITION_BOTTOM_CENTER:I = 0x1

.field public static final LOGO_POSITION_BOTTOM_LEFT:I = 0x0

.field public static final LOGO_POSITION_BOTTOM_RIGHT:I = 0x2

.field public static final ZOOM_POSITION_RIGHT_BUTTOM:I = 0x2

.field public static final ZOOM_POSITION_RIGHT_CENTER:I = 0x1


# instance fields
.field private a:I

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Lcom/amap/api/maps/model/CameraPosition;

.field private i:Z

.field private j:Z

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amap/api/maps/AMapOptionsCreator;

    invoke-direct {v0}, Lcom/amap/api/maps/AMapOptionsCreator;-><init>()V

    sput-object v0, Lcom/amap/api/maps/AMapOptions;->CREATOR:Lcom/amap/api/maps/AMapOptionsCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/maps/AMapOptions;->a:I

    iput-boolean v0, p0, Lcom/amap/api/maps/AMapOptions;->b:Z

    iput-boolean v0, p0, Lcom/amap/api/maps/AMapOptions;->c:Z

    iput-boolean v0, p0, Lcom/amap/api/maps/AMapOptions;->d:Z

    iput-boolean v0, p0, Lcom/amap/api/maps/AMapOptions;->e:Z

    iput-boolean v0, p0, Lcom/amap/api/maps/AMapOptions;->f:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/maps/AMapOptions;->g:Z

    iput-boolean v0, p0, Lcom/amap/api/maps/AMapOptions;->i:Z

    iput-boolean v0, p0, Lcom/amap/api/maps/AMapOptions;->j:Z

    iput v0, p0, Lcom/amap/api/maps/AMapOptions;->k:I

    return-void
.end method


# virtual methods
.method public camera(Lcom/amap/api/maps/model/CameraPosition;)Lcom/amap/api/maps/AMapOptions;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/maps/AMapOptions;->h:Lcom/amap/api/maps/model/CameraPosition;

    return-object p0
.end method

.method public compassEnabled(Z)Lcom/amap/api/maps/AMapOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/maps/AMapOptions;->i:Z

    return-object p0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCamera()Lcom/amap/api/maps/model/CameraPosition;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps/AMapOptions;->h:Lcom/amap/api/maps/model/CameraPosition;

    return-object v0
.end method

.method public getCompassEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/maps/AMapOptions;->i:Z

    return v0
.end method

.method public getLogoPosition()I
    .locals 1

    iget v0, p0, Lcom/amap/api/maps/AMapOptions;->k:I

    return v0
.end method

.method public getMapType()I
    .locals 1

    iget v0, p0, Lcom/amap/api/maps/AMapOptions;->a:I

    return v0
.end method

.method public getRotateGesturesEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/maps/AMapOptions;->b:Z

    return v0
.end method

.method public getScaleControlsEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/maps/AMapOptions;->j:Z

    return v0
.end method

.method public getScrollGesturesEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/maps/AMapOptions;->c:Z

    return v0
.end method

.method public getTiltGesturesEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/maps/AMapOptions;->d:Z

    return v0
.end method

.method public getZOrderOnTop()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/maps/AMapOptions;->g:Z

    return v0
.end method

.method public getZoomControlsEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/maps/AMapOptions;->f:Z

    return v0
.end method

.method public getZoomGesturesEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/maps/AMapOptions;->e:Z

    return v0
.end method

.method public logoPosition(I)Lcom/amap/api/maps/AMapOptions;
    .locals 0

    iput p1, p0, Lcom/amap/api/maps/AMapOptions;->k:I

    return-object p0
.end method

.method public mapType(I)Lcom/amap/api/maps/AMapOptions;
    .locals 0

    iput p1, p0, Lcom/amap/api/maps/AMapOptions;->a:I

    return-object p0
.end method

.method public rotateGesturesEnabled(Z)Lcom/amap/api/maps/AMapOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/maps/AMapOptions;->b:Z

    return-object p0
.end method

.method public scaleControlsEnabled(Z)Lcom/amap/api/maps/AMapOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/maps/AMapOptions;->j:Z

    return-object p0
.end method

.method public scrollGesturesEnabled(Z)Lcom/amap/api/maps/AMapOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/maps/AMapOptions;->c:Z

    return-object p0
.end method

.method public tiltGesturesEnabled(Z)Lcom/amap/api/maps/AMapOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/maps/AMapOptions;->d:Z

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/maps/AMapOptions;->h:Lcom/amap/api/maps/model/CameraPosition;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget p2, p0, Lcom/amap/api/maps/AMapOptions;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p2, 0x8

    new-array p2, p2, [Z

    iget-boolean v0, p0, Lcom/amap/api/maps/AMapOptions;->b:Z

    const/4 v1, 0x0

    aput-boolean v0, p2, v1

    iget-boolean v0, p0, Lcom/amap/api/maps/AMapOptions;->c:Z

    const/4 v1, 0x1

    aput-boolean v0, p2, v1

    iget-boolean v0, p0, Lcom/amap/api/maps/AMapOptions;->d:Z

    const/4 v1, 0x2

    aput-boolean v0, p2, v1

    iget-boolean v0, p0, Lcom/amap/api/maps/AMapOptions;->e:Z

    const/4 v1, 0x3

    aput-boolean v0, p2, v1

    iget-boolean v0, p0, Lcom/amap/api/maps/AMapOptions;->f:Z

    const/4 v1, 0x4

    aput-boolean v0, p2, v1

    iget-boolean v0, p0, Lcom/amap/api/maps/AMapOptions;->g:Z

    const/4 v1, 0x5

    aput-boolean v0, p2, v1

    iget-boolean v0, p0, Lcom/amap/api/maps/AMapOptions;->i:Z

    const/4 v1, 0x6

    aput-boolean v0, p2, v1

    iget-boolean v0, p0, Lcom/amap/api/maps/AMapOptions;->j:Z

    const/4 v1, 0x7

    aput-boolean v0, p2, v1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    return-void
.end method

.method public zOrderOnTop(Z)Lcom/amap/api/maps/AMapOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/maps/AMapOptions;->g:Z

    return-object p0
.end method

.method public zoomControlsEnabled(Z)Lcom/amap/api/maps/AMapOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/maps/AMapOptions;->f:Z

    return-object p0
.end method

.method public zoomGesturesEnabled(Z)Lcom/amap/api/maps/AMapOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/maps/AMapOptions;->e:Z

    return-object p0
.end method
