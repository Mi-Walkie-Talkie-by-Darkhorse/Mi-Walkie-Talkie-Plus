.class Lcom/amap/api/mapcore/util/a$b$1;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/a$b;->a(Lcom/amap/api/mapcore/util/ad;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/ep;

.field final synthetic b:Lcom/amap/api/mapcore/util/a$b;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/a$b;Lcom/amap/api/mapcore/util/ep;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/a$b$1;->b:Lcom/amap/api/mapcore/util/a$b;

    iput-object p2, p0, Lcom/amap/api/mapcore/util/a$b$1;->a:Lcom/amap/api/mapcore/util/ep;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/a$b$1;->a:Lcom/amap/api/mapcore/util/ep;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/ep;->a(Z)V

    return-void
.end method
