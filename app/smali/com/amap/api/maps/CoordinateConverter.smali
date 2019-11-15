.class public Lcom/amap/api/maps/CoordinateConverter;
.super Ljava/lang/Object;
.source "CoordinateConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/maps/CoordinateConverter$CoordType;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/amap/api/maps/CoordinateConverter$CoordType;

.field private c:Lcom/amap/api/maps/model/LatLng;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amap/api/maps/CoordinateConverter;->b:Lcom/amap/api/maps/CoordinateConverter$CoordType;

    iput-object v0, p0, Lcom/amap/api/maps/CoordinateConverter;->c:Lcom/amap/api/maps/model/LatLng;

    iput-object p1, p0, Lcom/amap/api/maps/CoordinateConverter;->a:Landroid/content/Context;

    return-void
.end method

.method public static isAMapDataAvailable(DD)Z
    .locals 2

    invoke-static {p0, p1, p2, p3}, Lcom/amap/api/mapcore/util/dy;->a(DD)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public convert()Lcom/amap/api/maps/model/LatLng;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/amap/api/maps/CoordinateConverter;->b:Lcom/amap/api/maps/CoordinateConverter$CoordType;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/amap/api/maps/CoordinateConverter;->c:Lcom/amap/api/maps/model/LatLng;

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Lcom/amap/api/maps/CoordinateConverter$1;->a:[I

    iget-object v2, p0, Lcom/amap/api/maps/CoordinateConverter;->b:Lcom/amap/api/maps/CoordinateConverter$CoordType;

    invoke-virtual {v2}, Lcom/amap/api/maps/CoordinateConverter$CoordType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/amap/api/maps/CoordinateConverter;->c:Lcom/amap/api/maps/model/LatLng;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ac;->a(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/amap/api/maps/CoordinateConverter;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/amap/api/maps/CoordinateConverter;->c:Lcom/amap/api/maps/model/LatLng;

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/ac;->b(Landroid/content/Context;Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/amap/api/maps/CoordinateConverter;->c:Lcom/amap/api/maps/model/LatLng;

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/amap/api/maps/CoordinateConverter;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/amap/api/maps/CoordinateConverter;->c:Lcom/amap/api/maps/model/LatLng;

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/ac;->a(Landroid/content/Context;Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLng;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    const-string v1, "CoordinateConverter"

    const-string v2, "convert"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/gf;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/maps/CoordinateConverter;->c:Lcom/amap/api/maps/model/LatLng;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public coord(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/CoordinateConverter;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/maps/CoordinateConverter;->c:Lcom/amap/api/maps/model/LatLng;

    return-object p0
.end method

.method public from(Lcom/amap/api/maps/CoordinateConverter$CoordType;)Lcom/amap/api/maps/CoordinateConverter;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/maps/CoordinateConverter;->b:Lcom/amap/api/maps/CoordinateConverter$CoordType;

    return-object p0
.end method
