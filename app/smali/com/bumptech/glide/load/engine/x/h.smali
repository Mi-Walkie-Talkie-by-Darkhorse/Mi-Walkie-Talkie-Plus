.class Lcom/bumptech/glide/load/engine/x/h;
.super Ljava/lang/Object;
.source "GroupedLinkedMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/x/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Lcom/bumptech/glide/load/engine/x/m;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/engine/x/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/x/h$a<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Lcom/bumptech/glide/load/engine/x/h$a<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/bumptech/glide/load/engine/x/h$a;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/x/h$a;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/x/h;->a:Lcom/bumptech/glide/load/engine/x/h$a;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/x/h;->b:Ljava/util/Map;

    return-void
.end method

.method private a(Lcom/bumptech/glide/load/engine/x/h$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/x/h$a<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 20
    invoke-static {p1}, Lcom/bumptech/glide/load/engine/x/h;->c(Lcom/bumptech/glide/load/engine/x/h$a;)V

    .line 21
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/x/h;->a:Lcom/bumptech/glide/load/engine/x/h$a;

    iput-object v0, p1, Lcom/bumptech/glide/load/engine/x/h$a;->d:Lcom/bumptech/glide/load/engine/x/h$a;

    .line 22
    iget-object v0, v0, Lcom/bumptech/glide/load/engine/x/h$a;->c:Lcom/bumptech/glide/load/engine/x/h$a;

    iput-object v0, p1, Lcom/bumptech/glide/load/engine/x/h$a;->c:Lcom/bumptech/glide/load/engine/x/h$a;

    .line 23
    invoke-static {p1}, Lcom/bumptech/glide/load/engine/x/h;->d(Lcom/bumptech/glide/load/engine/x/h$a;)V

    return-void
.end method

.method private b(Lcom/bumptech/glide/load/engine/x/h$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/x/h$a<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/bumptech/glide/load/engine/x/h;->c(Lcom/bumptech/glide/load/engine/x/h$a;)V

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/x/h;->a:Lcom/bumptech/glide/load/engine/x/h$a;

    iget-object v1, v0, Lcom/bumptech/glide/load/engine/x/h$a;->d:Lcom/bumptech/glide/load/engine/x/h$a;

    iput-object v1, p1, Lcom/bumptech/glide/load/engine/x/h$a;->d:Lcom/bumptech/glide/load/engine/x/h$a;

    .line 3
    iput-object v0, p1, Lcom/bumptech/glide/load/engine/x/h$a;->c:Lcom/bumptech/glide/load/engine/x/h$a;

    .line 4
    invoke-static {p1}, Lcom/bumptech/glide/load/engine/x/h;->d(Lcom/bumptech/glide/load/engine/x/h$a;)V

    return-void
.end method

.method private static c(Lcom/bumptech/glide/load/engine/x/h$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/engine/x/h$a<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/x/h$a;->d:Lcom/bumptech/glide/load/engine/x/h$a;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/x/h$a;->c:Lcom/bumptech/glide/load/engine/x/h$a;

    iput-object v1, v0, Lcom/bumptech/glide/load/engine/x/h$a;->c:Lcom/bumptech/glide/load/engine/x/h$a;

    .line 2
    iget-object p0, p0, Lcom/bumptech/glide/load/engine/x/h$a;->c:Lcom/bumptech/glide/load/engine/x/h$a;

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/x/h$a;->d:Lcom/bumptech/glide/load/engine/x/h$a;

    return-void
.end method

.method private static d(Lcom/bumptech/glide/load/engine/x/h$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/engine/x/h$a<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/x/h$a;->c:Lcom/bumptech/glide/load/engine/x/h$a;

    iput-object p0, v0, Lcom/bumptech/glide/load/engine/x/h$a;->d:Lcom/bumptech/glide/load/engine/x/h$a;

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/x/h$a;->d:Lcom/bumptech/glide/load/engine/x/h$a;

    iput-object p0, v0, Lcom/bumptech/glide/load/engine/x/h$a;->c:Lcom/bumptech/glide/load/engine/x/h$a;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/x/h;->a:Lcom/bumptech/glide/load/engine/x/h$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/engine/x/h$a;->d:Lcom/bumptech/glide/load/engine/x/h$a;

    .line 14
    :goto_0
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/x/h;->a:Lcom/bumptech/glide/load/engine/x/h$a;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 15
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/x/h$a;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 16
    :cond_0
    invoke-static {v0}, Lcom/bumptech/glide/load/engine/x/h;->c(Lcom/bumptech/glide/load/engine/x/h$a;)V

    .line 17
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/x/h;->b:Ljava/util/Map;

    iget-object v2, v0, Lcom/bumptech/glide/load/engine/x/h$a;->a:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v1, v0, Lcom/bumptech/glide/load/engine/x/h$a;->a:Ljava/lang/Object;

    check-cast v1, Lcom/bumptech/glide/load/engine/x/m;

    invoke-interface {v1}, Lcom/bumptech/glide/load/engine/x/m;->offer()V

    .line 19
    iget-object v0, v0, Lcom/bumptech/glide/load/engine/x/h$a;->d:Lcom/bumptech/glide/load/engine/x/h$a;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcom/bumptech/glide/load/engine/x/m;)Ljava/lang/Object;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/x/h;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/x/h$a;

    if-nez v0, :cond_0

    .line 8
    new-instance v0, Lcom/bumptech/glide/load/engine/x/h$a;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/engine/x/h$a;-><init>(Ljava/lang/Object;)V

    .line 9
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/x/h;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/x/m;->offer()V

    .line 11
    :goto_0
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/x/h;->a(Lcom/bumptech/glide/load/engine/x/h$a;)V

    .line 12
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/x/h$a;->a()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/bumptech/glide/load/engine/x/m;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/x/h;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/x/h$a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/bumptech/glide/load/engine/x/h$a;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/engine/x/h$a;-><init>(Ljava/lang/Object;)V

    .line 3
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/x/h;->b(Lcom/bumptech/glide/load/engine/x/h$a;)V

    .line 4
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/x/h;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/x/m;->offer()V

    .line 6
    :goto_0
    invoke-virtual {v0, p2}, Lcom/bumptech/glide/load/engine/x/h$a;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GroupedLinkedMap( "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/x/h;->a:Lcom/bumptech/glide/load/engine/x/h$a;

    iget-object v1, v1, Lcom/bumptech/glide/load/engine/x/h$a;->c:Lcom/bumptech/glide/load/engine/x/h$a;

    const/4 v2, 0x0

    .line 3
    :goto_0
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/x/h;->a:Lcom/bumptech/glide/load/engine/x/h$a;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    const/16 v3, 0x7b

    .line 4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/bumptech/glide/load/engine/x/h$a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/x/h$a;->b()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "}, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v1, v1, Lcom/bumptech/glide/load/engine/x/h$a;->c:Lcom/bumptech/glide/load/engine/x/h$a;

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, " )"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
