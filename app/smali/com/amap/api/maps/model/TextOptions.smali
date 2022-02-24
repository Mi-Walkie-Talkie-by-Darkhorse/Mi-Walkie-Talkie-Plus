.class public final Lcom/amap/api/maps/model/TextOptions;
.super Ljava/lang/Object;
.source "TextOptions.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lcom/amap/api/maps/model/TextOptionsCreator;


# instance fields
.field a:Ljava/lang/String;

.field private b:Lcom/amap/api/maps/model/LatLng;

.field private c:Ljava/lang/String;

.field private d:Landroid/graphics/Typeface;

.field private e:F

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Ljava/lang/Object;

.field private k:I

.field private l:F

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/amap/api/maps/model/TextOptionsCreator;

    invoke-direct {v0}, Lcom/amap/api/maps/model/TextOptionsCreator;-><init>()V

    sput-object v0, Lcom/amap/api/maps/model/TextOptions;->CREATOR:Lcom/amap/api/maps/model/TextOptionsCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/amap/api/maps/model/TextOptions;->d:Landroid/graphics/Typeface;

    const/4 v0, 0x4

    .line 3
    iput v0, p0, Lcom/amap/api/maps/model/TextOptions;->f:I

    const/16 v0, 0x20

    iput v0, p0, Lcom/amap/api/maps/model/TextOptions;->g:I

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/amap/api/maps/model/TextOptions;->h:I

    const/high16 v0, -0x1000000

    .line 5
    iput v0, p0, Lcom/amap/api/maps/model/TextOptions;->i:I

    const/16 v0, 0x14

    .line 6
    iput v0, p0, Lcom/amap/api/maps/model/TextOptions;->k:I

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/amap/api/maps/model/TextOptions;->l:F

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/amap/api/maps/model/TextOptions;->m:Z

    return-void
.end method


# virtual methods
.method public final align(II)Lcom/amap/api/maps/model/TextOptions;
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/api/maps/model/TextOptions;->f:I

    .line 2
    iput p2, p0, Lcom/amap/api/maps/model/TextOptions;->g:I

    return-object p0
.end method

.method public final backgroundColor(I)Lcom/amap/api/maps/model/TextOptions;
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/api/maps/model/TextOptions;->h:I

    return-object p0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final fontColor(I)Lcom/amap/api/maps/model/TextOptions;
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/api/maps/model/TextOptions;->i:I

    return-object p0
.end method

.method public final fontSize(I)Lcom/amap/api/maps/model/TextOptions;
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/api/maps/model/TextOptions;->k:I

    return-object p0
.end method

.method public final getAlignX()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/maps/model/TextOptions;->f:I

    return v0
.end method

.method public final getAlignY()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/maps/model/TextOptions;->g:I

    return v0
.end method

.method public final getBackgroundColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/maps/model/TextOptions;->h:I

    return v0
.end method

.method public final getFontColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/maps/model/TextOptions;->i:I

    return v0
.end method

.method public final getFontSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/maps/model/TextOptions;->k:I

    return v0
.end method

.method public final getObject()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/TextOptions;->j:Ljava/lang/Object;

    return-object v0
.end method

.method public final getPosition()Lcom/amap/api/maps/model/LatLng;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/TextOptions;->b:Lcom/amap/api/maps/model/LatLng;

    return-object v0
.end method

.method public final getRotate()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/maps/model/TextOptions;->e:F

    return v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/TextOptions;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/TextOptions;->d:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public final getZIndex()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/maps/model/TextOptions;->l:F

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/maps/model/TextOptions;->m:Z

    return v0
.end method

.method public final position(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/TextOptions;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/maps/model/TextOptions;->b:Lcom/amap/api/maps/model/LatLng;

    return-object p0
.end method

.method public final rotate(F)Lcom/amap/api/maps/model/TextOptions;
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/api/maps/model/TextOptions;->e:F

    return-object p0
.end method

.method public final setObject(Ljava/lang/Object;)Lcom/amap/api/maps/model/TextOptions;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/maps/model/TextOptions;->j:Ljava/lang/Object;

    return-object p0
.end method

.method public final text(Ljava/lang/String;)Lcom/amap/api/maps/model/TextOptions;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/maps/model/TextOptions;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final typeface(Landroid/graphics/Typeface;)Lcom/amap/api/maps/model/TextOptions;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/amap/api/maps/model/TextOptions;->d:Landroid/graphics/Typeface;

    :cond_0
    return-object p0
.end method

.method public final visible(Z)Lcom/amap/api/maps/model/TextOptions;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/maps/model/TextOptions;->m:Z

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    iget-object p2, p0, Lcom/amap/api/maps/model/TextOptions;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 3
    iget-object v0, p0, Lcom/amap/api/maps/model/TextOptions;->b:Lcom/amap/api/maps/model/LatLng;

    if-eqz v0, :cond_0

    .line 4
    iget-wide v0, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    const-string v2, "lat"

    invoke-virtual {p2, v2, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 5
    iget-object v0, p0, Lcom/amap/api/maps/model/TextOptions;->b:Lcom/amap/api/maps/model/LatLng;

    iget-wide v0, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    const-string v2, "lng"

    invoke-virtual {p2, v2, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 6
    :cond_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 7
    iget-object p2, p0, Lcom/amap/api/maps/model/TextOptions;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, Lcom/amap/api/maps/model/TextOptions;->d:Landroid/graphics/Typeface;

    invoke-virtual {p2}, Landroid/graphics/Typeface;->getStyle()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget p2, p0, Lcom/amap/api/maps/model/TextOptions;->e:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 10
    iget p2, p0, Lcom/amap/api/maps/model/TextOptions;->f:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    iget p2, p0, Lcom/amap/api/maps/model/TextOptions;->g:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    iget p2, p0, Lcom/amap/api/maps/model/TextOptions;->h:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    iget p2, p0, Lcom/amap/api/maps/model/TextOptions;->i:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    iget p2, p0, Lcom/amap/api/maps/model/TextOptions;->k:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    iget p2, p0, Lcom/amap/api/maps/model/TextOptions;->l:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 16
    iget-boolean p2, p0, Lcom/amap/api/maps/model/TextOptions;->m:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 17
    iget-object p2, p0, Lcom/amap/api/maps/model/TextOptions;->j:Ljava/lang/Object;

    instance-of p2, p2, Landroid/os/Parcelable;

    if-eqz p2, :cond_1

    .line 18
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 19
    iget-object v0, p0, Lcom/amap/api/maps/model/TextOptions;->j:Ljava/lang/Object;

    check-cast v0, Landroid/os/Parcelable;

    const-string v1, "obj"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 20
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public final zIndex(F)Lcom/amap/api/maps/model/TextOptions;
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/api/maps/model/TextOptions;->l:F

    return-object p0
.end method
