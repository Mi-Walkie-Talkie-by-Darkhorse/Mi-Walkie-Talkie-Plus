.class public Lcom/ifengyu/intercom/ui/map/e/b/a;
.super Ljava/lang/Object;
.source "OsmClusterItem.java"


# instance fields
.field private a:Landroid/graphics/Point;

.field private b:Lorg/osmdroid/api/IGeoPoint;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ifengyu/intercom/ui/map/f/a/f;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/ifengyu/intercom/ui/map/f/a/f;


# direct methods
.method public constructor <init>(Landroid/graphics/Point;Lorg/osmdroid/api/IGeoPoint;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/e/b/a;->a:Landroid/graphics/Point;

    .line 3
    iput-object p2, p0, Lcom/ifengyu/intercom/ui/map/e/b/a;->b:Lorg/osmdroid/api/IGeoPoint;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/e/b/a;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()Lorg/osmdroid/api/IGeoPoint;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/e/b/a;->b:Lorg/osmdroid/api/IGeoPoint;

    return-object v0
.end method

.method public a(Lcom/ifengyu/intercom/ui/map/f/a/f;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/e/b/a;->c:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public b()Landroid/graphics/Point;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/e/b/a;->a:Landroid/graphics/Point;

    return-object v0
.end method

.method public b(Lcom/ifengyu/intercom/ui/map/f/a/f;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/e/b/a;->d:Lcom/ifengyu/intercom/ui/map/f/a/f;

    return-void
.end method

.method public c()Lcom/ifengyu/intercom/ui/map/f/a/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/e/b/a;->d:Lcom/ifengyu/intercom/ui/map/f/a/f;

    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/ui/map/f/a/f;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/e/b/a;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/e/b/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
