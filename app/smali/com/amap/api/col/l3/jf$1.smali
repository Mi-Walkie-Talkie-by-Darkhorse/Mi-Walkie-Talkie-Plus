.class final Lcom/amap/api/col/l3/jf$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3/jf;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3/jf;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3/jf;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3/jf$1;->a:Lcom/amap/api/col/l3/jf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    iget-object p1, p0, Lcom/amap/api/col/l3/jf$1;->a:Lcom/amap/api/col/l3/jf;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/amap/api/col/l3/jf;->a:Z

    invoke-static {p2}, Lcom/amap/api/col/l3/fn$a;->a(Landroid/os/IBinder;)Lcom/amap/api/col/l3/fn;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amap/api/col/l3/jf;->a(Lcom/amap/api/col/l3/jf;Lcom/amap/api/col/l3/fn;)Lcom/amap/api/col/l3/fn;

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lcom/amap/api/col/l3/jf$1;->a:Lcom/amap/api/col/l3/jf;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/amap/api/col/l3/jf;->a:Z

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/amap/api/col/l3/jf;->a(Lcom/amap/api/col/l3/jf;Lcom/amap/api/col/l3/fn;)Lcom/amap/api/col/l3/fn;

    return-void
.end method
