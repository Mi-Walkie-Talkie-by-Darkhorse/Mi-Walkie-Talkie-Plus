.class public Lcom/bumptech/glide/load/engine/h;
.super Ljava/lang/Object;
.source "Engine.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/b/h$a;
.implements Lcom/bumptech/glide/load/engine/j;
.implements Lcom/bumptech/glide/load/engine/m$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/h$b;,
        Lcom/bumptech/glide/load/engine/h$a;,
        Lcom/bumptech/glide/load/engine/h$e;,
        Lcom/bumptech/glide/load/engine/h$f;,
        Lcom/bumptech/glide/load/engine/h$c;,
        Lcom/bumptech/glide/load/engine/h$d;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/bumptech/glide/load/c;",
            "Lcom/bumptech/glide/load/engine/i",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/bumptech/glide/load/engine/l;

.field private final c:Lcom/bumptech/glide/load/engine/b/h;

.field private final d:Lcom/bumptech/glide/load/engine/h$b;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/bumptech/glide/load/c;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/bumptech/glide/load/engine/m",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private final f:Lcom/bumptech/glide/load/engine/t;

.field private final g:Lcom/bumptech/glide/load/engine/h$c;

.field private final h:Lcom/bumptech/glide/load/engine/h$a;

.field private i:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lcom/bumptech/glide/load/engine/m",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/b/h;Lcom/bumptech/glide/load/engine/b/a$a;Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/c/a;)V
    .locals 12

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v11}, Lcom/bumptech/glide/load/engine/h;-><init>(Lcom/bumptech/glide/load/engine/b/h;Lcom/bumptech/glide/load/engine/b/a$a;Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/c/a;Ljava/util/Map;Lcom/bumptech/glide/load/engine/l;Ljava/util/Map;Lcom/bumptech/glide/load/engine/h$b;Lcom/bumptech/glide/load/engine/h$a;Lcom/bumptech/glide/load/engine/t;)V

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/engine/b/h;Lcom/bumptech/glide/load/engine/b/a$a;Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/c/a;Ljava/util/Map;Lcom/bumptech/glide/load/engine/l;Ljava/util/Map;Lcom/bumptech/glide/load/engine/h$b;Lcom/bumptech/glide/load/engine/h$a;Lcom/bumptech/glide/load/engine/t;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/b/h;",
            "Lcom/bumptech/glide/load/engine/b/a$a;",
            "Lcom/bumptech/glide/load/engine/c/a;",
            "Lcom/bumptech/glide/load/engine/c/a;",
            "Lcom/bumptech/glide/load/engine/c/a;",
            "Ljava/util/Map",
            "<",
            "Lcom/bumptech/glide/load/c;",
            "Lcom/bumptech/glide/load/engine/i",
            "<*>;>;",
            "Lcom/bumptech/glide/load/engine/l;",
            "Ljava/util/Map",
            "<",
            "Lcom/bumptech/glide/load/c;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/bumptech/glide/load/engine/m",
            "<*>;>;>;",
            "Lcom/bumptech/glide/load/engine/h$b;",
            "Lcom/bumptech/glide/load/engine/h$a;",
            "Lcom/bumptech/glide/load/engine/t;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/h;->c:Lcom/bumptech/glide/load/engine/b/h;

    new-instance v0, Lcom/bumptech/glide/load/engine/h$c;

    invoke-direct {v0, p2}, Lcom/bumptech/glide/load/engine/h$c;-><init>(Lcom/bumptech/glide/load/engine/b/a$a;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/h;->g:Lcom/bumptech/glide/load/engine/h$c;

    if-nez p8, :cond_0

    new-instance p8, Ljava/util/HashMap;

    invoke-direct {p8}, Ljava/util/HashMap;-><init>()V

    :cond_0
    iput-object p8, p0, Lcom/bumptech/glide/load/engine/h;->e:Ljava/util/Map;

    if-nez p7, :cond_1

    new-instance p7, Lcom/bumptech/glide/load/engine/l;

    invoke-direct {p7}, Lcom/bumptech/glide/load/engine/l;-><init>()V

    :cond_1
    iput-object p7, p0, Lcom/bumptech/glide/load/engine/h;->b:Lcom/bumptech/glide/load/engine/l;

    if-nez p6, :cond_2

    new-instance p6, Ljava/util/HashMap;

    invoke-direct {p6}, Ljava/util/HashMap;-><init>()V

    :cond_2
    iput-object p6, p0, Lcom/bumptech/glide/load/engine/h;->a:Ljava/util/Map;

    if-nez p9, :cond_3

    new-instance p9, Lcom/bumptech/glide/load/engine/h$b;

    invoke-direct {p9, p3, p4, p5, p0}, Lcom/bumptech/glide/load/engine/h$b;-><init>(Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/j;)V

    :cond_3
    iput-object p9, p0, Lcom/bumptech/glide/load/engine/h;->d:Lcom/bumptech/glide/load/engine/h$b;

    if-nez p10, :cond_4

    new-instance p10, Lcom/bumptech/glide/load/engine/h$a;

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/h;->g:Lcom/bumptech/glide/load/engine/h$c;

    invoke-direct {p10, v0}, Lcom/bumptech/glide/load/engine/h$a;-><init>(Lcom/bumptech/glide/load/engine/DecodeJob$d;)V

    :cond_4
    iput-object p10, p0, Lcom/bumptech/glide/load/engine/h;->h:Lcom/bumptech/glide/load/engine/h$a;

    if-nez p11, :cond_5

    new-instance p11, Lcom/bumptech/glide/load/engine/t;

    invoke-direct {p11}, Lcom/bumptech/glide/load/engine/t;-><init>()V

    :cond_5
    iput-object p11, p0, Lcom/bumptech/glide/load/engine/h;->f:Lcom/bumptech/glide/load/engine/t;

    invoke-interface {p1, p0}, Lcom/bumptech/glide/load/engine/b/h;->a(Lcom/bumptech/glide/load/engine/b/h$a;)V

    return-void
.end method

.method private a(Lcom/bumptech/glide/load/c;)Lcom/bumptech/glide/load/engine/m;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/c;",
            ")",
            "Lcom/bumptech/glide/load/engine/m",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/h;->c:Lcom/bumptech/glide/load/engine/b/h;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/engine/b/h;->a(Lcom/bumptech/glide/load/c;)Lcom/bumptech/glide/load/engine/q;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    instance-of v1, v0, Lcom/bumptech/glide/load/engine/m;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/bumptech/glide/load/engine/m;

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/bumptech/glide/load/engine/m;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/bumptech/glide/load/engine/m;-><init>(Lcom/bumptech/glide/load/engine/q;Z)V

    move-object v0, v1

    goto :goto_0
.end method

.method private a(Lcom/bumptech/glide/load/c;Z)Lcom/bumptech/glide/load/engine/m;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/c;",
            "Z)",
            "Lcom/bumptech/glide/load/engine/m",
            "<*>;"
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p2, :cond_0

    :goto_0
    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/h;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/m;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/m;->f()V

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/h;->e:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private a()Ljava/lang/ref/ReferenceQueue;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lcom/bumptech/glide/load/engine/m",
            "<*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/h;->i:Ljava/lang/ref/ReferenceQueue;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/h;->i:Ljava/lang/ref/ReferenceQueue;

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    new-instance v1, Lcom/bumptech/glide/load/engine/h$e;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/h;->e:Ljava/util/Map;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/h;->i:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, v2, v3}, Lcom/bumptech/glide/load/engine/h$e;-><init>(Ljava/util/Map;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/h;->i:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method private static a(Ljava/lang/String;JLcom/bumptech/glide/load/c;)V
    .locals 5

    const-string v0, "Engine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/bumptech/glide/util/d;->a(J)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms, key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private b(Lcom/bumptech/glide/load/c;Z)Lcom/bumptech/glide/load/engine/m;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/c;",
            "Z)",
            "Lcom/bumptech/glide/load/engine/m",
            "<*>;"
        }
    .end annotation

    if-nez p2, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/h;->a(Lcom/bumptech/glide/load/c;)Lcom/bumptech/glide/load/engine/m;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/m;->f()V

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/h;->e:Ljava/util/Map;

    new-instance v2, Lcom/bumptech/glide/load/engine/h$f;

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/h;->a()Ljava/lang/ref/ReferenceQueue;

    move-result-object v3

    invoke-direct {v2, p1, v0, v3}, Lcom/bumptech/glide/load/engine/h$f;-><init>(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/engine/m;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/e;Ljava/lang/Object;Lcom/bumptech/glide/load/c;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/engine/g;Ljava/util/Map;ZZLcom/bumptech/glide/load/e;ZZZLcom/bumptech/glide/request/e;)Lcom/bumptech/glide/load/engine/h$d;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/e;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/load/c;",
            "II",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<TR;>;",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/load/engine/g;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/bumptech/glide/load/h",
            "<*>;>;ZZ",
            "Lcom/bumptech/glide/load/e;",
            "ZZZ",
            "Lcom/bumptech/glide/request/e;",
            ")",
            "Lcom/bumptech/glide/load/engine/h$d;"
        }
    .end annotation

    invoke-static {}, Lcom/bumptech/glide/util/i;->a()V

    invoke-static {}, Lcom/bumptech/glide/util/d;->a()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/load/engine/h;->b:Lcom/bumptech/glide/load/engine/l;

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p10

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p13

    invoke-virtual/range {v2 .. v10}, Lcom/bumptech/glide/load/engine/l;->a(Ljava/lang/Object;Lcom/bumptech/glide/load/c;IILjava/util/Map;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/e;)Lcom/bumptech/glide/load/engine/k;

    move-result-object v5

    move-object/from16 v0, p0

    move/from16 v1, p14

    invoke-direct {v0, v5, v1}, Lcom/bumptech/glide/load/engine/h;->b(Lcom/bumptech/glide/load/c;Z)Lcom/bumptech/glide/load/engine/m;

    move-result-object v2

    if-eqz v2, :cond_1

    sget-object v3, Lcom/bumptech/glide/load/DataSource;->e:Lcom/bumptech/glide/load/DataSource;

    move-object/from16 v0, p17

    invoke-interface {v0, v2, v3}, Lcom/bumptech/glide/request/e;->a(Lcom/bumptech/glide/load/engine/q;Lcom/bumptech/glide/load/DataSource;)V

    const-string v2, "Engine"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Loaded resource from cache"

    move-wide/from16 v0, v20

    invoke-static {v2, v0, v1, v5}, Lcom/bumptech/glide/load/engine/h;->a(Ljava/lang/String;JLcom/bumptech/glide/load/c;)V

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p14

    invoke-direct {v0, v5, v1}, Lcom/bumptech/glide/load/engine/h;->a(Lcom/bumptech/glide/load/c;Z)Lcom/bumptech/glide/load/engine/m;

    move-result-object v2

    if-eqz v2, :cond_3

    sget-object v3, Lcom/bumptech/glide/load/DataSource;->e:Lcom/bumptech/glide/load/DataSource;

    move-object/from16 v0, p17

    invoke-interface {v0, v2, v3}, Lcom/bumptech/glide/request/e;->a(Lcom/bumptech/glide/load/engine/q;Lcom/bumptech/glide/load/DataSource;)V

    const-string v2, "Engine"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "Loaded resource from active resources"

    move-wide/from16 v0, v20

    invoke-static {v2, v0, v1, v5}, Lcom/bumptech/glide/load/engine/h;->a(Ljava/lang/String;JLcom/bumptech/glide/load/c;)V

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/load/engine/h;->a:Ljava/util/Map;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/load/engine/i;

    if-eqz v2, :cond_5

    move-object/from16 v0, p17

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/load/engine/i;->a(Lcom/bumptech/glide/request/e;)V

    const-string v3, "Engine"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "Added to existing load"

    move-wide/from16 v0, v20

    invoke-static {v3, v0, v1, v5}, Lcom/bumptech/glide/load/engine/h;->a(Ljava/lang/String;JLcom/bumptech/glide/load/c;)V

    :cond_4
    new-instance v3, Lcom/bumptech/glide/load/engine/h$d;

    move-object/from16 v0, p17

    invoke-direct {v3, v0, v2}, Lcom/bumptech/glide/load/engine/h$d;-><init>(Lcom/bumptech/glide/request/e;Lcom/bumptech/glide/load/engine/i;)V

    move-object v2, v3

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/load/engine/h;->d:Lcom/bumptech/glide/load/engine/h$b;

    move/from16 v0, p14

    move/from16 v1, p15

    invoke-virtual {v2, v5, v0, v1}, Lcom/bumptech/glide/load/engine/h$b;->a(Lcom/bumptech/glide/load/c;ZZ)Lcom/bumptech/glide/load/engine/i;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/load/engine/h;->h:Lcom/bumptech/glide/load/engine/h$a;

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    move/from16 v16, p16

    move-object/from16 v17, p13

    invoke-virtual/range {v2 .. v18}, Lcom/bumptech/glide/load/engine/h$a;->a(Lcom/bumptech/glide/e;Ljava/lang/Object;Lcom/bumptech/glide/load/engine/k;Lcom/bumptech/glide/load/c;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/engine/g;Ljava/util/Map;ZZZLcom/bumptech/glide/load/e;Lcom/bumptech/glide/load/engine/DecodeJob$a;)Lcom/bumptech/glide/load/engine/DecodeJob;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bumptech/glide/load/engine/h;->a:Ljava/util/Map;

    move-object/from16 v0, v18

    invoke-interface {v3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v18

    move-object/from16 v1, p17

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/engine/i;->a(Lcom/bumptech/glide/request/e;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/load/engine/i;->b(Lcom/bumptech/glide/load/engine/DecodeJob;)V

    const-string v2, "Engine"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "Started new load"

    move-wide/from16 v0, v20

    invoke-static {v2, v0, v1, v5}, Lcom/bumptech/glide/load/engine/h;->a(Ljava/lang/String;JLcom/bumptech/glide/load/c;)V

    :cond_6
    new-instance v2, Lcom/bumptech/glide/load/engine/h$d;

    move-object/from16 v0, p17

    move-object/from16 v1, v18

    invoke-direct {v2, v0, v1}, Lcom/bumptech/glide/load/engine/h$d;-><init>(Lcom/bumptech/glide/request/e;Lcom/bumptech/glide/load/engine/i;)V

    goto/16 :goto_0
.end method

.method public a(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/engine/m;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/c;",
            "Lcom/bumptech/glide/load/engine/m",
            "<*>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/bumptech/glide/util/i;->a()V

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1, p0}, Lcom/bumptech/glide/load/engine/m;->a(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/engine/m$a;)V

    invoke-virtual {p2}, Lcom/bumptech/glide/load/engine/m;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/h;->e:Ljava/util/Map;

    new-instance v1, Lcom/bumptech/glide/load/engine/h$f;

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/h;->a()Ljava/lang/ref/ReferenceQueue;

    move-result-object v2

    invoke-direct {v1, p1, p2, v2}, Lcom/bumptech/glide/load/engine/h$f;-><init>(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/engine/m;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/h;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lcom/bumptech/glide/load/engine/i;Lcom/bumptech/glide/load/c;)V
    .locals 1

    invoke-static {}, Lcom/bumptech/glide/util/i;->a()V

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/h;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/i;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/h;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public a(Lcom/bumptech/glide/load/engine/q;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/q",
            "<*>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/bumptech/glide/util/i;->a()V

    instance-of v0, p1, Lcom/bumptech/glide/load/engine/m;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/bumptech/glide/load/engine/m;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/m;->g()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot release anything but an EngineResource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/engine/m;)V
    .locals 1

    invoke-static {}, Lcom/bumptech/glide/util/i;->a()V

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/h;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/bumptech/glide/load/engine/m;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/h;->c:Lcom/bumptech/glide/load/engine/b/h;

    invoke-interface {v0, p1, p2}, Lcom/bumptech/glide/load/engine/b/h;->b(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/engine/q;)Lcom/bumptech/glide/load/engine/q;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/h;->f:Lcom/bumptech/glide/load/engine/t;

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/load/engine/t;->a(Lcom/bumptech/glide/load/engine/q;)V

    goto :goto_0
.end method

.method public b(Lcom/bumptech/glide/load/engine/q;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/q",
            "<*>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/bumptech/glide/util/i;->a()V

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/h;->f:Lcom/bumptech/glide/load/engine/t;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/t;->a(Lcom/bumptech/glide/load/engine/q;)V

    return-void
.end method
