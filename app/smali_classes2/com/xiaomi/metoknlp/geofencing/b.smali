.class Lcom/xiaomi/metoknlp/geofencing/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/xiaomi/metoknlp/geofencing/a;


# direct methods
.method constructor <init>(Lcom/xiaomi/metoknlp/geofencing/a;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/metoknlp/geofencing/b;->a:Lcom/xiaomi/metoknlp/geofencing/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    const-string v0, "GeoFencingServiceWrapper"

    const-string v1, "*** GeoFencingService connected ***"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/metoknlp/geofencing/b;->a:Lcom/xiaomi/metoknlp/geofencing/a;

    invoke-static {p2}, Lcom/xiaomi/metoknlp/geofencing/c$a;->a(Landroid/os/IBinder;)Lcom/xiaomi/metoknlp/geofencing/c;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/metoknlp/geofencing/a;->a(Lcom/xiaomi/metoknlp/geofencing/a;Lcom/xiaomi/metoknlp/geofencing/c;)Lcom/xiaomi/metoknlp/geofencing/c;

    iget-object v0, p0, Lcom/xiaomi/metoknlp/geofencing/b;->a:Lcom/xiaomi/metoknlp/geofencing/a;

    invoke-static {v0}, Lcom/xiaomi/metoknlp/geofencing/a;->e(Lcom/xiaomi/metoknlp/geofencing/a;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/metoknlp/geofencing/b;->a:Lcom/xiaomi/metoknlp/geofencing/a;

    invoke-static {v0}, Lcom/xiaomi/metoknlp/geofencing/a;->e(Lcom/xiaomi/metoknlp/geofencing/a;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/xiaomi/metoknlp/geofencing/b;->a:Lcom/xiaomi/metoknlp/geofencing/a;

    invoke-static {v0}, Lcom/xiaomi/metoknlp/geofencing/a;->e(Lcom/xiaomi/metoknlp/geofencing/a;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "GeoFencingServiceWrapper"

    const-string v1, "*** GeoFencingService disconnected ***"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/metoknlp/geofencing/b;->a:Lcom/xiaomi/metoknlp/geofencing/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/metoknlp/geofencing/a;->a(Lcom/xiaomi/metoknlp/geofencing/a;Lcom/xiaomi/metoknlp/geofencing/c;)Lcom/xiaomi/metoknlp/geofencing/c;

    return-void
.end method
