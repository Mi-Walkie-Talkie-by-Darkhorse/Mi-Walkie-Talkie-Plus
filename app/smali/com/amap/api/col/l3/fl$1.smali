.class final Lcom/amap/api/col/l3/fl$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/LayoutInflater$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3/fl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3/fl;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3/fl;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3/fl$1;->a:Lcom/amap/api/col/l3/fl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3/fl$1;->a:Lcom/amap/api/col/l3/fl;

    invoke-static {v0, p1, p2, p3}, Lcom/amap/api/col/l3/fl;->a(Lcom/amap/api/col/l3/fl;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
