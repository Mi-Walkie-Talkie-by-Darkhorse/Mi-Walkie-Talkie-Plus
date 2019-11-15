.class final Lcom/bumptech/glide/util/a/a$b;
.super Ljava/lang/Object;
.source "FactoryPools.java"

# interfaces
.implements Landroid/support/v4/util/Pools$Pool;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/util/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/support/v4/util/Pools$Pool",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/util/a/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/util/a/a$a",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/bumptech/glide/util/a/a$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/util/a/a$d",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final c:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/support/v4/util/Pools$Pool;Lcom/bumptech/glide/util/a/a$a;Lcom/bumptech/glide/util/a/a$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/Pools$Pool",
            "<TT;>;",
            "Lcom/bumptech/glide/util/a/a$a",
            "<TT;>;",
            "Lcom/bumptech/glide/util/a/a$d",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/util/a/a$b;->c:Landroid/support/v4/util/Pools$Pool;

    iput-object p2, p0, Lcom/bumptech/glide/util/a/a$b;->a:Lcom/bumptech/glide/util/a/a$a;

    iput-object p3, p0, Lcom/bumptech/glide/util/a/a$b;->b:Lcom/bumptech/glide/util/a/a$d;

    return-void
.end method


# virtual methods
.method public acquire()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/util/a/a$b;->c:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/util/a/a$b;->a:Lcom/bumptech/glide/util/a/a$a;

    invoke-interface {v0}, Lcom/bumptech/glide/util/a/a$a;->b()Ljava/lang/Object;

    move-result-object v1

    const-string v0, "FactoryPools"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FactoryPools"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Created new "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    instance-of v0, v1, Lcom/bumptech/glide/util/a/a$c;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/bumptech/glide/util/a/a$c;

    invoke-interface {v0}, Lcom/bumptech/glide/util/a/a$c;->b_()Lcom/bumptech/glide/util/a/b;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/util/a/b;->a(Z)V

    :cond_1
    return-object v1
.end method

.method public release(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    instance-of v0, p1, Lcom/bumptech/glide/util/a/a$c;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/bumptech/glide/util/a/a$c;

    invoke-interface {v0}, Lcom/bumptech/glide/util/a/a$c;->b_()Lcom/bumptech/glide/util/a/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/util/a/b;->a(Z)V

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/util/a/a$b;->b:Lcom/bumptech/glide/util/a/a$d;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/util/a/a$d;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bumptech/glide/util/a/a$b;->c:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0, p1}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
