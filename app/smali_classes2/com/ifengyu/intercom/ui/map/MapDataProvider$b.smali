.class public Lcom/ifengyu/intercom/ui/map/MapDataProvider$b;
.super Lcom/ifengyu/intercom/network/d/d;
.source "MapDataProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/map/MapDataProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/ifengyu/intercom/greendao/bean/a;

.field private b:Lcom/ifengyu/intercom/greendao/dao/b;

.field final synthetic c:Lcom/ifengyu/intercom/ui/map/MapDataProvider;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/map/MapDataProvider;Lcom/ifengyu/intercom/greendao/bean/a;Lcom/ifengyu/intercom/greendao/dao/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$b;->c:Lcom/ifengyu/intercom/ui/map/MapDataProvider;

    invoke-direct {p0}, Lcom/ifengyu/intercom/network/d/d;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$b;->a:Lcom/ifengyu/intercom/greendao/bean/a;

    .line 3
    iput-object p3, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$b;->b:Lcom/ifengyu/intercom/greendao/dao/b;

    const/4 p1, 0x0

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ifengyu/intercom/greendao/bean/a;->d(Ljava/lang/Integer;)V

    .line 5
    invoke-virtual {p2, p1}, Lcom/ifengyu/intercom/greendao/bean/a;->b(Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$b;->a:Lcom/ifengyu/intercom/greendao/bean/a;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/greendao/bean/a;->l()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$b;->a:Lcom/ifengyu/intercom/greendao/bean/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/a;->c()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$b;->a:Lcom/ifengyu/intercom/greendao/bean/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/a;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$b;->c:Lcom/ifengyu/intercom/ui/map/MapDataProvider;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->a(Lcom/ifengyu/intercom/ui/map/MapDataProvider;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$b;->a:Lcom/ifengyu/intercom/greendao/bean/a;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$b;->a:Lcom/ifengyu/intercom/greendao/bean/a;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/greendao/bean/a;->a(Ljava/lang/Boolean;)V

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$b;->c:Lcom/ifengyu/intercom/ui/map/MapDataProvider;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->d(Lcom/ifengyu/intercom/ui/map/MapDataProvider;)Ljava/util/HashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$b;->a:Lcom/ifengyu/intercom/greendao/bean/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$b;->c:Lcom/ifengyu/intercom/ui/map/MapDataProvider;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$b;->b:Lcom/ifengyu/intercom/greendao/dao/b;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$b;->a:Lcom/ifengyu/intercom/greendao/bean/a;

    invoke-virtual {p1, v0, v1}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->a(Lcom/ifengyu/intercom/greendao/dao/b;Lcom/ifengyu/intercom/greendao/bean/a;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$b;->c:Lcom/ifengyu/intercom/ui/map/MapDataProvider;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->c(Lcom/ifengyu/intercom/ui/map/MapDataProvider;)I

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$b;->c:Lcom/ifengyu/intercom/ui/map/MapDataProvider;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->b(Lcom/ifengyu/intercom/ui/map/MapDataProvider;)I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$b;->c:Lcom/ifengyu/intercom/ui/map/MapDataProvider;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->a(Lcom/ifengyu/intercom/ui/map/MapDataProvider;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$b;->a:Lcom/ifengyu/intercom/greendao/bean/a;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$b;->a:Lcom/ifengyu/intercom/greendao/bean/a;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/greendao/bean/a;->a(Ljava/lang/Boolean;)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$b;->c:Lcom/ifengyu/intercom/ui/map/MapDataProvider;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$b;->b:Lcom/ifengyu/intercom/greendao/dao/b;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$b;->a:Lcom/ifengyu/intercom/greendao/bean/a;

    invoke-virtual {v0, v2, v3}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->a(Lcom/ifengyu/intercom/greendao/dao/b;Lcom/ifengyu/intercom/greendao/bean/a;)V

    const v0, 0x7f110337

    .line 6
    invoke-static {v0}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$b;->a:Lcom/ifengyu/intercom/greendao/bean/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/a;->c()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/greendao/bean/a;->b(Ljava/lang/Integer;)V

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$b;->c:Lcom/ifengyu/intercom/ui/map/MapDataProvider;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->e(Lcom/ifengyu/intercom/ui/map/MapDataProvider;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/ui/map/MapDataProvider$c;

    .line 9
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$b;->a:Lcom/ifengyu/intercom/greendao/bean/a;

    invoke-interface {v1, v2}, Lcom/ifengyu/intercom/ui/map/MapDataProvider$c;->a(Lcom/ifengyu/intercom/greendao/bean/a;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$b;->a:Lcom/ifengyu/intercom/greendao/bean/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/a;->l()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/greendao/bean/a;->d(Ljava/lang/Integer;)V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$b;->c:Lcom/ifengyu/intercom/ui/map/MapDataProvider;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->e(Lcom/ifengyu/intercom/ui/map/MapDataProvider;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/ui/map/MapDataProvider$c;

    .line 3
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$b;->a:Lcom/ifengyu/intercom/greendao/bean/a;

    invoke-interface {v1, v2}, Lcom/ifengyu/intercom/ui/map/MapDataProvider$c;->a(Lcom/ifengyu/intercom/greendao/bean/a;)V

    goto :goto_0

    :cond_0
    return-void
.end method
