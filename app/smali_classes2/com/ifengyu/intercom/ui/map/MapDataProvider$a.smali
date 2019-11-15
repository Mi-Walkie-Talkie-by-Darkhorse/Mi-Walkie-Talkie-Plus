.class public Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;
.super Lcom/ifengyu/intercom/network/a/d;
.source "MapDataProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/map/MapDataProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/map/MapDataProvider;

.field private b:Lcom/ifengyu/intercom/greendao/bean/a;

.field private c:Lcom/ifengyu/intercom/greendao/dao/b;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/map/MapDataProvider;Lcom/ifengyu/intercom/greendao/bean/a;Lcom/ifengyu/intercom/greendao/dao/b;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;->a:Lcom/ifengyu/intercom/ui/map/MapDataProvider;

    invoke-direct {p0}, Lcom/ifengyu/intercom/network/a/d;-><init>()V

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;->b:Lcom/ifengyu/intercom/greendao/bean/a;

    iput-object p3, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;->c:Lcom/ifengyu/intercom/greendao/dao/b;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ifengyu/intercom/greendao/bean/a;->c(Ljava/lang/Integer;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ifengyu/intercom/greendao/bean/a;->d(Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;->b:Lcom/ifengyu/intercom/greendao/bean/a;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/bean/a;->h()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;->b:Lcom/ifengyu/intercom/greendao/bean/a;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/greendao/bean/a;->i()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;->b:Lcom/ifengyu/intercom/greendao/bean/a;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/greendao/bean/a;->g()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;->a:Lcom/ifengyu/intercom/ui/map/MapDataProvider;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->a(Lcom/ifengyu/intercom/ui/map/MapDataProvider;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;->b:Lcom/ifengyu/intercom/greendao/bean/a;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;->b:Lcom/ifengyu/intercom/greendao/bean/a;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/greendao/bean/a;->a(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;->a:Lcom/ifengyu/intercom/ui/map/MapDataProvider;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->b(Lcom/ifengyu/intercom/ui/map/MapDataProvider;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;->b:Lcom/ifengyu/intercom/greendao/bean/a;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/greendao/bean/a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;->a:Lcom/ifengyu/intercom/ui/map/MapDataProvider;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;->c:Lcom/ifengyu/intercom/greendao/dao/b;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;->b:Lcom/ifengyu/intercom/greendao/bean/a;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->a(Lcom/ifengyu/intercom/greendao/dao/b;Lcom/ifengyu/intercom/greendao/bean/a;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;->b:Lcom/ifengyu/intercom/greendao/bean/a;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;->b:Lcom/ifengyu/intercom/greendao/bean/a;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/greendao/bean/a;->h()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/greendao/bean/a;->c(Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;->a:Lcom/ifengyu/intercom/ui/map/MapDataProvider;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->c(Lcom/ifengyu/intercom/ui/map/MapDataProvider;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$b;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;->b:Lcom/ifengyu/intercom/greendao/bean/a;

    invoke-interface {v0, v2}, Lcom/ifengyu/intercom/ui/map/MapDataProvider$b;->a(Lcom/ifengyu/intercom/greendao/bean/a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;->a:Lcom/ifengyu/intercom/ui/map/MapDataProvider;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->d(Lcom/ifengyu/intercom/ui/map/MapDataProvider;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;->a:Lcom/ifengyu/intercom/ui/map/MapDataProvider;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->e(Lcom/ifengyu/intercom/ui/map/MapDataProvider;)I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;->a:Lcom/ifengyu/intercom/ui/map/MapDataProvider;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->a(Lcom/ifengyu/intercom/ui/map/MapDataProvider;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;->b:Lcom/ifengyu/intercom/greendao/bean/a;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;->b:Lcom/ifengyu/intercom/greendao/bean/a;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/greendao/bean/a;->a(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;->a:Lcom/ifengyu/intercom/ui/map/MapDataProvider;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;->c:Lcom/ifengyu/intercom/greendao/dao/b;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;->b:Lcom/ifengyu/intercom/greendao/bean/a;

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->a(Lcom/ifengyu/intercom/greendao/dao/b;Lcom/ifengyu/intercom/greendao/bean/a;)V

    const v0, 0x7f090214

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;->b:Lcom/ifengyu/intercom/greendao/bean/a;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;->b:Lcom/ifengyu/intercom/greendao/bean/a;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/greendao/bean/a;->i()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/greendao/bean/a;->d(Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;->a:Lcom/ifengyu/intercom/ui/map/MapDataProvider;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->c(Lcom/ifengyu/intercom/ui/map/MapDataProvider;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$b;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/MapDataProvider$a;->b:Lcom/ifengyu/intercom/greendao/bean/a;

    invoke-interface {v0, v2}, Lcom/ifengyu/intercom/ui/map/MapDataProvider$b;->a(Lcom/ifengyu/intercom/greendao/bean/a;)V

    goto :goto_0

    :cond_1
    return-void
.end method
