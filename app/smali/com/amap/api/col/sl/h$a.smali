.class final Lcom/amap/api/col/sl/h$a;
.super Ljava/lang/Object;
.source "H5LocationClient.java"

# interfaces
.implements Lcom/amap/api/location/AMapLocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/sl/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/sl/h;


# direct methods
.method constructor <init>(Lcom/amap/api/col/sl/h;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/sl/h$a;->a:Lcom/amap/api/col/sl/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Lcom/amap/api/location/AMapLocation;)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/sl/h$a;->a:Lcom/amap/api/col/sl/h;

    invoke-static {v0}, Lcom/amap/api/col/sl/h;->c(Lcom/amap/api/col/sl/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/sl/h$a;->a:Lcom/amap/api/col/sl/h;

    iget-object v1, p0, Lcom/amap/api/col/sl/h$a;->a:Lcom/amap/api/col/sl/h;

    invoke-static {p1}, Lcom/amap/api/col/sl/h;->a(Lcom/amap/api/location/AMapLocation;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amap/api/col/sl/h;->a(Lcom/amap/api/col/sl/h;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
