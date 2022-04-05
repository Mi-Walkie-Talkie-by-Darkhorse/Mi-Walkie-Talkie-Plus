.class final Lcom/amap/api/col/l3/hn$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3/hn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/amap/api/col/l3/gh;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/amap/api/col/l3/gh;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3/hn$2;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/amap/api/col/l3/hn$2;->b:Lcom/amap/api/col/l3/gh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/hn$2;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/amap/api/col/l3/hn$2;->b:Lcom/amap/api/col/l3/gh;

    invoke-static {v0, v1}, Lcom/amap/api/col/l3/hh;->a(Landroid/content/Context;Lcom/amap/api/col/l3/gh;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
