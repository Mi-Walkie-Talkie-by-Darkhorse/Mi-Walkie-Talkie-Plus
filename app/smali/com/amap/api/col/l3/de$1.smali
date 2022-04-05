.class final Lcom/amap/api/col/l3/de$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amap/api/col/l3/eq$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3/de;-><init>(Lcom/amap/api/maps/model/TileOverlayOptions;Lcom/amap/api/col/l3/ae;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3/de;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3/de;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3/de$1;->a:Lcom/amap/api/col/l3/de;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3/de$1;->a:Lcom/amap/api/col/l3/de;

    invoke-static {v0}, Lcom/amap/api/col/l3/de;->a(Lcom/amap/api/col/l3/de;)Lcom/amap/api/col/l3/u;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/col/l3/u;->resetRenderTimeLongLong()V

    return-void
.end method
