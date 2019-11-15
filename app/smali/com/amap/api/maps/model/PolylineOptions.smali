.class public final Lcom/amap/api/maps/model/PolylineOptions;
.super Ljava/lang/Object;
.source "PolylineOptions.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lcom/amap/api/maps/model/PolylineOptionsCreator;

.field public static final DOTTEDLINE_TYPE_CIRCLE:I = 0x1

.field public static final DOTTEDLINE_TYPE_SQUARE:I


# instance fields
.field a:Ljava/lang/String;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private c:F

.field private d:I

.field private e:F

.field private f:Z

.field private g:Lcom/amap/api/maps/model/BitmapDescriptor;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/BitmapDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:F

.field private p:Z

.field private q:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amap/api/maps/model/PolylineOptionsCreator;

    invoke-direct {v0}, Lcom/amap/api/maps/model/PolylineOptionsCreator;-><init>()V

    sput-object v0, Lcom/amap/api/maps/model/PolylineOptions;->CREATOR:Lcom/amap/api/maps/model/PolylineOptionsCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->c:F

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->d:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->e:F

    iput-boolean v2, p0, Lcom/amap/api/maps/model/PolylineOptions;->f:Z

    iput-boolean v2, p0, Lcom/amap/api/maps/model/PolylineOptions;->k:Z

    iput-boolean v1, p0, Lcom/amap/api/maps/model/PolylineOptions;->l:Z

    iput-boolean v1, p0, Lcom/amap/api/maps/model/PolylineOptions;->m:Z

    iput-boolean v1, p0, Lcom/amap/api/maps/model/PolylineOptions;->n:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->o:F

    iput-boolean v1, p0, Lcom/amap/api/maps/model/PolylineOptions;->p:Z

    iput v1, p0, Lcom/amap/api/maps/model/PolylineOptions;->q:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public aboveMaskLayer(Z)Lcom/amap/api/maps/model/PolylineOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/maps/model/PolylineOptions;->p:Z

    return-object p0
.end method

.method public add(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/PolylineOptions;
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public varargs add([Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/PolylineOptions;
    .locals 2

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->b:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public addAll(Ljava/lang/Iterable;)Lcom/amap/api/maps/model/PolylineOptions;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;)",
            "Lcom/amap/api/maps/model/PolylineOptions;"
        }
    .end annotation

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/LatLng;

    iget-object v2, p0, Lcom/amap/api/maps/model/PolylineOptions;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_0
    return-object p0
.end method

.method public color(I)Lcom/amap/api/maps/model/PolylineOptions;
    .locals 0

    iput p1, p0, Lcom/amap/api/maps/model/PolylineOptions;->d:I

    return-object p0
.end method

.method public colorValues(Ljava/util/List;)Lcom/amap/api/maps/model/PolylineOptions;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/amap/api/maps/model/PolylineOptions;"
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/maps/model/PolylineOptions;->i:Ljava/util/List;

    return-object p0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public geodesic(Z)Lcom/amap/api/maps/model/PolylineOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/maps/model/PolylineOptions;->l:Z

    return-object p0
.end method

.method public getColor()I
    .locals 1

    iget v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->d:I

    return v0
.end method

.method public getColorValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->i:Ljava/util/List;

    return-object v0
.end method

.method public getCustomTexture()Lcom/amap/api/maps/model/BitmapDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->g:Lcom/amap/api/maps/model/BitmapDescriptor;

    return-object v0
.end method

.method public getCustomTextureIndex()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->j:Ljava/util/List;

    return-object v0
.end method

.method public getCustomTextureList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/BitmapDescriptor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->h:Ljava/util/List;

    return-object v0
.end method

.method public getDottedLineType()I
    .locals 1

    iget v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->q:I

    return v0
.end method

.method public getPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->b:Ljava/util/List;

    return-object v0
.end method

.method public getTransparency()F
    .locals 1

    iget v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->o:F

    return v0
.end method

.method public getWidth()F
    .locals 1

    iget v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->c:F

    return v0
.end method

.method public getZIndex()F
    .locals 1

    iget v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->e:F

    return v0
.end method

.method public isAboveMaskLayer()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->p:Z

    return v0
.end method

.method public isDottedLine()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->m:Z

    return v0
.end method

.method public isGeodesic()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->l:Z

    return v0
.end method

.method public isUseGradient()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->n:Z

    return v0
.end method

.method public isUseTexture()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->k:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->f:Z

    return v0
.end method

.method public setCustomTexture(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/PolylineOptions;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/maps/model/PolylineOptions;->g:Lcom/amap/api/maps/model/BitmapDescriptor;

    return-object p0
.end method

.method public setCustomTextureIndex(Ljava/util/List;)Lcom/amap/api/maps/model/PolylineOptions;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/amap/api/maps/model/PolylineOptions;"
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/maps/model/PolylineOptions;->j:Ljava/util/List;

    return-object p0
.end method

.method public setCustomTextureList(Ljava/util/List;)Lcom/amap/api/maps/model/PolylineOptions;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/BitmapDescriptor;",
            ">;)",
            "Lcom/amap/api/maps/model/PolylineOptions;"
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/maps/model/PolylineOptions;->h:Ljava/util/List;

    return-object p0
.end method

.method public setDottedLine(Z)Lcom/amap/api/maps/model/PolylineOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/maps/model/PolylineOptions;->m:Z

    return-object p0
.end method

.method public setDottedLineType(I)Lcom/amap/api/maps/model/PolylineOptions;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->q:I

    return-object p0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setPoints(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->b:Ljava/util/List;

    if-eq v0, p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setUseTexture(Z)Lcom/amap/api/maps/model/PolylineOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/maps/model/PolylineOptions;->k:Z

    return-object p0
.end method

.method public transparency(F)Lcom/amap/api/maps/model/PolylineOptions;
    .locals 0

    iput p1, p0, Lcom/amap/api/maps/model/PolylineOptions;->o:F

    return-object p0
.end method

.method public useGradient(Z)Lcom/amap/api/maps/model/PolylineOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/maps/model/PolylineOptions;->n:Z

    return-object p0
.end method

.method public visible(Z)Lcom/amap/api/maps/model/PolylineOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/maps/model/PolylineOptions;->f:Z

    return-object p0
.end method

.method public width(F)Lcom/amap/api/maps/model/PolylineOptions;
    .locals 0

    iput p1, p0, Lcom/amap/api/maps/model/PolylineOptions;->c:F

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->b:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->c:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->q:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->e:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->o:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x5

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/amap/api/maps/model/PolylineOptions;->f:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/amap/api/maps/model/PolylineOptions;->m:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/amap/api/maps/model/PolylineOptions;->l:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/amap/api/maps/model/PolylineOptions;->n:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/amap/api/maps/model/PolylineOptions;->p:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    iget-object v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->g:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->g:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->h:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->h:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->j:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->j:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    :cond_2
    iget-object v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->i:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/maps/model/PolylineOptions;->i:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    :cond_3
    return-void
.end method

.method public zIndex(F)Lcom/amap/api/maps/model/PolylineOptions;
    .locals 0

    iput p1, p0, Lcom/amap/api/maps/model/PolylineOptions;->e:F

    return-object p0
.end method
