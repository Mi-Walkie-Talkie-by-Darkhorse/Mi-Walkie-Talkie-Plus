.class public Lcom/amap/api/maps/model/TextOptionsCreator;
.super Ljava/lang/Object;
.source "TextOptionsCreator.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/amap/api/maps/model/TextOptions;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/amap/api/maps/model/TextOptions;
    .locals 8

    const/4 v0, 0x1

    new-instance v1, Lcom/amap/api/maps/model/TextOptions;

    invoke-direct {v1}, Lcom/amap/api/maps/model/TextOptions;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/amap/api/maps/model/TextOptions;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2

    new-instance v3, Lcom/amap/api/maps/model/LatLng;

    const-string v4, "lat"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-string v6, "lng"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v3}, Lcom/amap/api/maps/model/TextOptions;->position(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/TextOptions;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/TextOptions;->text(Ljava/lang/String;)Lcom/amap/api/maps/model/TextOptions;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/TextOptions;->typeface(Landroid/graphics/Typeface;)Lcom/amap/api/maps/model/TextOptions;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/TextOptions;->rotate(F)Lcom/amap/api/maps/model/TextOptions;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/amap/api/maps/model/TextOptions;->align(II)Lcom/amap/api/maps/model/TextOptions;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/TextOptions;->backgroundColor(I)Lcom/amap/api/maps/model/TextOptions;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/TextOptions;->fontColor(I)Lcom/amap/api/maps/model/TextOptions;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/TextOptions;->fontSize(I)Lcom/amap/api/maps/model/TextOptions;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/TextOptions;->zIndex(F)Lcom/amap/api/maps/model/TextOptions;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/amap/api/maps/model/TextOptions;->visible(Z)Lcom/amap/api/maps/model/TextOptions;

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "obj"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/model/TextOptions;->setObject(Ljava/lang/Object;)Lcom/amap/api/maps/model/TextOptions;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-object v1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/amap/api/maps/model/TextOptionsCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/amap/api/maps/model/TextOptions;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/amap/api/maps/model/TextOptions;
    .locals 1

    new-array v0, p1, [Lcom/amap/api/maps/model/TextOptions;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/amap/api/maps/model/TextOptionsCreator;->newArray(I)[Lcom/amap/api/maps/model/TextOptions;

    move-result-object v0

    return-object v0
.end method
