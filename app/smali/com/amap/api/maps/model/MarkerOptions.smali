.class public final Lcom/amap/api/maps/model/MarkerOptions;
.super Ljava/lang/Object;
.source "MarkerOptions.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lcom/amap/api/maps/model/MarkerOptionsCreator;


# instance fields
.field a:Ljava/lang/String;

.field b:F

.field c:Z

.field d:Z

.field e:I

.field f:F

.field private g:Lcom/amap/api/maps/model/LatLng;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:F

.field private k:F

.field private l:F

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:I

.field private q:I

.field private r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/maps/model/BitmapDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private s:I

.field private t:Z

.field private u:Z

.field private v:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amap/api/maps/model/MarkerOptionsCreator;

    invoke-direct {v0}, Lcom/amap/api/maps/model/MarkerOptionsCreator;-><init>()V

    sput-object v0, Lcom/amap/api/maps/model/MarkerOptions;->CREATOR:Lcom/amap/api/maps/model/MarkerOptionsCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->j:F

    iput v2, p0, Lcom/amap/api/maps/model/MarkerOptions;->k:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->l:F

    iput-boolean v1, p0, Lcom/amap/api/maps/model/MarkerOptions;->m:Z

    iput-boolean v3, p0, Lcom/amap/api/maps/model/MarkerOptions;->n:Z

    iput-boolean v1, p0, Lcom/amap/api/maps/model/MarkerOptions;->o:Z

    iput v1, p0, Lcom/amap/api/maps/model/MarkerOptions;->p:I

    iput v1, p0, Lcom/amap/api/maps/model/MarkerOptions;->q:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->r:Ljava/util/ArrayList;

    const/16 v0, 0x14

    iput v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->s:I

    iput-boolean v1, p0, Lcom/amap/api/maps/model/MarkerOptions;->t:Z

    iput-boolean v1, p0, Lcom/amap/api/maps/model/MarkerOptions;->u:Z

    iput v2, p0, Lcom/amap/api/maps/model/MarkerOptions;->b:F

    iput-boolean v1, p0, Lcom/amap/api/maps/model/MarkerOptions;->c:Z

    iput-boolean v3, p0, Lcom/amap/api/maps/model/MarkerOptions;->d:Z

    const/4 v0, 0x5

    iput v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->e:I

    return-void
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->r:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->r:Ljava/util/ArrayList;
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


# virtual methods
.method public alpha(F)Lcom/amap/api/maps/model/MarkerOptions;
    .locals 0

    iput p1, p0, Lcom/amap/api/maps/model/MarkerOptions;->b:F

    return-object p0
.end method

.method public anchor(FF)Lcom/amap/api/maps/model/MarkerOptions;
    .locals 0

    iput p1, p0, Lcom/amap/api/maps/model/MarkerOptions;->j:F

    iput p2, p0, Lcom/amap/api/maps/model/MarkerOptions;->k:F

    return-object p0
.end method

.method public autoOverturnInfoWindow(Z)Lcom/amap/api/maps/model/MarkerOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/maps/model/MarkerOptions;->c:Z

    return-object p0
.end method

.method public belowMaskLayer(Z)Lcom/amap/api/maps/model/MarkerOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/maps/model/MarkerOptions;->v:Z

    return-object p0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public displayLevel(I)Lcom/amap/api/maps/model/MarkerOptions;
    .locals 0

    iput p1, p0, Lcom/amap/api/maps/model/MarkerOptions;->e:I

    return-object p0
.end method

.method public draggable(Z)Lcom/amap/api/maps/model/MarkerOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/maps/model/MarkerOptions;->m:Z

    return-object p0
.end method

.method public getAlpha()F
    .locals 1

    iget v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->b:F

    return v0
.end method

.method public getAnchorU()F
    .locals 1

    iget v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->j:F

    return v0
.end method

.method public getAnchorV()F
    .locals 1

    iget v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->k:F

    return v0
.end method

.method public getDisplayLevel()I
    .locals 1

    iget v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->e:I

    return v0
.end method

.method public getIcon()Lcom/amap/api/maps/model/BitmapDescriptor;
    .locals 2

    iget-object v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->r:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->r:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/BitmapDescriptor;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIcons()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/maps/model/BitmapDescriptor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->r:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getInfoWindowOffsetX()I
    .locals 1

    iget v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->p:I

    return v0
.end method

.method public getInfoWindowOffsetY()I
    .locals 1

    iget v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->q:I

    return v0
.end method

.method public getPeriod()I
    .locals 1

    iget v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->s:I

    return v0
.end method

.method public getPosition()Lcom/amap/api/maps/model/LatLng;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->g:Lcom/amap/api/maps/model/LatLng;

    return-object v0
.end method

.method public getRotateAngle()F
    .locals 1

    iget v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->f:F

    return v0
.end method

.method public getSnippet()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getZIndex()F
    .locals 1

    iget v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->l:F

    return v0
.end method

.method public icon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MarkerOptions;
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps/model/MarkerOptions;->a()V

    iget-object v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public icons(Ljava/util/ArrayList;)Lcom/amap/api/maps/model/MarkerOptions;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/maps/model/BitmapDescriptor;",
            ">;)",
            "Lcom/amap/api/maps/model/MarkerOptions;"
        }
    .end annotation

    iput-object p1, p0, Lcom/amap/api/maps/model/MarkerOptions;->r:Ljava/util/ArrayList;

    return-object p0
.end method

.method public infoWindowEnable(Z)Lcom/amap/api/maps/model/MarkerOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/maps/model/MarkerOptions;->d:Z

    return-object p0
.end method

.method public isBelowMaskLayer()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->v:Z

    return v0
.end method

.method public isDraggable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->m:Z

    return v0
.end method

.method public isFlat()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->u:Z

    return v0
.end method

.method public isGps()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->t:Z

    return v0
.end method

.method public isInfoWindowAutoOverturn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->c:Z

    return v0
.end method

.method public isInfoWindowEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->d:Z

    return v0
.end method

.method public isPerspective()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->o:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->n:Z

    return v0
.end method

.method public period(I)Lcom/amap/api/maps/model/MarkerOptions;
    .locals 1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    iput v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->s:I

    :goto_0
    return-object p0

    :cond_0
    iput p1, p0, Lcom/amap/api/maps/model/MarkerOptions;->s:I

    goto :goto_0
.end method

.method public perspective(Z)Lcom/amap/api/maps/model/MarkerOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/maps/model/MarkerOptions;->o:Z

    return-object p0
.end method

.method public position(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/MarkerOptions;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/maps/model/MarkerOptions;->g:Lcom/amap/api/maps/model/LatLng;

    return-object p0
.end method

.method public rotateAngle(F)Lcom/amap/api/maps/model/MarkerOptions;
    .locals 0

    iput p1, p0, Lcom/amap/api/maps/model/MarkerOptions;->f:F

    return-object p0
.end method

.method public setFlat(Z)Lcom/amap/api/maps/model/MarkerOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/maps/model/MarkerOptions;->u:Z

    return-object p0
.end method

.method public setGps(Z)Lcom/amap/api/maps/model/MarkerOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/maps/model/MarkerOptions;->t:Z

    return-object p0
.end method

.method public setInfoWindowOffset(II)Lcom/amap/api/maps/model/MarkerOptions;
    .locals 0

    iput p1, p0, Lcom/amap/api/maps/model/MarkerOptions;->p:I

    iput p2, p0, Lcom/amap/api/maps/model/MarkerOptions;->q:I

    return-object p0
.end method

.method public snippet(Ljava/lang/String;)Lcom/amap/api/maps/model/MarkerOptions;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/maps/model/MarkerOptions;->i:Ljava/lang/String;

    return-object p0
.end method

.method public title(Ljava/lang/String;)Lcom/amap/api/maps/model/MarkerOptions;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/maps/model/MarkerOptions;->h:Ljava/lang/String;

    return-object p0
.end method

.method public visible(Z)Lcom/amap/api/maps/model/MarkerOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/maps/model/MarkerOptions;->n:Z

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->g:Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->j:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->k:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->p:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->q:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x7

    new-array v0, v0, [Z

    iget-boolean v1, p0, Lcom/amap/api/maps/model/MarkerOptions;->n:Z

    aput-boolean v1, v0, v3

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/amap/api/maps/model/MarkerOptions;->m:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/amap/api/maps/model/MarkerOptions;->t:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/amap/api/maps/model/MarkerOptions;->u:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/amap/api/maps/model/MarkerOptions;->c:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/amap/api/maps/model/MarkerOptions;->d:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/amap/api/maps/model/MarkerOptions;->v:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    iget-object v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->s:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->r:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->l:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->b:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->f:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->r:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/maps/model/MarkerOptions;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    :cond_0
    return-void
.end method

.method public zIndex(F)Lcom/amap/api/maps/model/MarkerOptions;
    .locals 0

    iput p1, p0, Lcom/amap/api/maps/model/MarkerOptions;->l:F

    return-object p0
.end method
