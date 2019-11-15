.class final Lcom/amap/api/col/sl/es$1;
.super Ljava/lang/Object;
.source "ConnectionServiceManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/sl/es;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/sl/es;


# direct methods
.method constructor <init>(Lcom/amap/api/col/sl/es;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/sl/es$1;->a:Lcom/amap/api/col/sl/es;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/sl/es$1;->a:Lcom/amap/api/col/sl/es;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/amap/api/col/sl/es;->a:Z

    iget-object v0, p0, Lcom/amap/api/col/sl/es$1;->a:Lcom/amap/api/col/sl/es;

    invoke-static {p2}, Lcom/amap/api/col/sl/j$a;->a(Landroid/os/IBinder;)Lcom/amap/api/col/sl/j;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amap/api/col/sl/es;->a(Lcom/amap/api/col/sl/es;Lcom/amap/api/col/sl/j;)Lcom/amap/api/col/sl/j;

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/sl/es$1;->a:Lcom/amap/api/col/sl/es;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/amap/api/col/sl/es;->a:Z

    iget-object v0, p0, Lcom/amap/api/col/sl/es$1;->a:Lcom/amap/api/col/sl/es;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amap/api/col/sl/es;->a(Lcom/amap/api/col/sl/es;Lcom/amap/api/col/sl/j;)Lcom/amap/api/col/sl/j;

    return-void
.end method
