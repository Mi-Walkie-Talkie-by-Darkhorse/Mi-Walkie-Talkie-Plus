.class final Lcom/amap/api/col/l3/j$b$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3/j$b;->a(Lcom/amap/api/col/l3/am;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3/ew;

.field final synthetic b:Lcom/amap/api/col/l3/j$b;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3/j$b;Lcom/amap/api/col/l3/ew;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3/j$b$2;->b:Lcom/amap/api/col/l3/j$b;

    iput-object p2, p0, Lcom/amap/api/col/l3/j$b$2;->a:Lcom/amap/api/col/l3/ew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/j$b$2;->a:Lcom/amap/api/col/l3/ew;

    iget-object v1, p0, Lcom/amap/api/col/l3/j$b$2;->b:Lcom/amap/api/col/l3/j$b;

    iget-object v1, v1, Lcom/amap/api/col/l3/j$b;->a:Lcom/amap/api/col/l3/j;

    iget-object v1, v1, Lcom/amap/api/col/l3/j;->d:Lcom/amap/api/col/l3/am;

    iget-object v1, v1, Lcom/amap/api/maps/model/IndoorBuildingInfo;->floor_names:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3/ew;->a([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/l3/j$b$2;->a:Lcom/amap/api/col/l3/ew;

    iget-object v1, p0, Lcom/amap/api/col/l3/j$b$2;->b:Lcom/amap/api/col/l3/j$b;

    iget-object v1, v1, Lcom/amap/api/col/l3/j$b;->a:Lcom/amap/api/col/l3/j;

    iget-object v1, v1, Lcom/amap/api/col/l3/j;->d:Lcom/amap/api/col/l3/am;

    iget-object v1, v1, Lcom/amap/api/maps/model/IndoorBuildingInfo;->activeFloorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3/ew;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/l3/j$b$2;->a:Lcom/amap/api/col/l3/ew;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/ew;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/j$b$2;->a:Lcom/amap/api/col/l3/ew;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3/ew;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
