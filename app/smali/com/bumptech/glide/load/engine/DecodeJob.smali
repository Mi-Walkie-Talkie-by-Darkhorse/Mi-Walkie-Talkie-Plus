.class Lcom/bumptech/glide/load/engine/DecodeJob;
.super Ljava/lang/Object;
.source "DecodeJob.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/d$a;
.implements Lcom/bumptech/glide/util/a/a$c;
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/DecodeJob$Stage;,
        Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;,
        Lcom/bumptech/glide/load/engine/DecodeJob$d;,
        Lcom/bumptech/glide/load/engine/DecodeJob$a;,
        Lcom/bumptech/glide/load/engine/DecodeJob$c;,
        Lcom/bumptech/glide/load/engine/DecodeJob$e;,
        Lcom/bumptech/glide/load/engine/DecodeJob$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/d$a;",
        "Lcom/bumptech/glide/util/a/a$c;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/bumptech/glide/load/engine/DecodeJob",
        "<*>;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private A:Lcom/bumptech/glide/load/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/a/b",
            "<*>;"
        }
    .end annotation
.end field

.field private volatile B:Lcom/bumptech/glide/load/engine/d;

.field private volatile C:Z

.field private volatile D:Z

.field final a:Lcom/bumptech/glide/load/engine/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/e",
            "<TR;>;"
        }
    .end annotation
.end field

.field final b:Lcom/bumptech/glide/load/engine/DecodeJob$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/DecodeJob$c",
            "<*>;"
        }
    .end annotation
.end field

.field c:Lcom/bumptech/glide/load/c;

.field d:I

.field e:I

.field f:Lcom/bumptech/glide/load/engine/g;

.field g:Lcom/bumptech/glide/load/e;

.field h:Lcom/bumptech/glide/load/c;

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lcom/bumptech/glide/util/a/b;

.field private final k:Lcom/bumptech/glide/load/engine/DecodeJob$d;

.field private final l:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Lcom/bumptech/glide/load/engine/DecodeJob",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final m:Lcom/bumptech/glide/load/engine/DecodeJob$e;

.field private n:Lcom/bumptech/glide/e;

.field private o:Lcom/bumptech/glide/Priority;

.field private p:Lcom/bumptech/glide/load/engine/k;

.field private q:Lcom/bumptech/glide/load/engine/DecodeJob$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/DecodeJob$a",
            "<TR;>;"
        }
    .end annotation
.end field

.field private r:I

.field private s:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

.field private t:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

.field private u:J

.field private v:Z

.field private w:Ljava/lang/Thread;

.field private x:Lcom/bumptech/glide/load/c;

.field private y:Ljava/lang/Object;

.field private z:Lcom/bumptech/glide/load/DataSource;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/DecodeJob$d;Landroid/support/v4/util/Pools$Pool;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/DecodeJob$d;",
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Lcom/bumptech/glide/load/engine/DecodeJob",
            "<*>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bumptech/glide/load/engine/e;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/e;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->a:Lcom/bumptech/glide/load/engine/e;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->i:Ljava/util/List;

    invoke-static {}, Lcom/bumptech/glide/util/a/b;->a()Lcom/bumptech/glide/util/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->j:Lcom/bumptech/glide/util/a/b;

    new-instance v0, Lcom/bumptech/glide/load/engine/DecodeJob$c;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/DecodeJob$c;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->b:Lcom/bumptech/glide/load/engine/DecodeJob$c;

    new-instance v0, Lcom/bumptech/glide/load/engine/DecodeJob$e;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/DecodeJob$e;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->m:Lcom/bumptech/glide/load/engine/DecodeJob$e;

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->k:Lcom/bumptech/glide/load/engine/DecodeJob$d;

    iput-object p2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->l:Landroid/support/v4/util/Pools$Pool;

    return-void
.end method

.method private a(Lcom/bumptech/glide/load/DataSource;)Lcom/bumptech/glide/load/e;
    .locals 3

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->g:Lcom/bumptech/glide/load/e;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/k;->d:Lcom/bumptech/glide/load/d;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/e;->a(Lcom/bumptech/glide/load/d;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/bumptech/glide/load/DataSource;->d:Lcom/bumptech/glide/load/DataSource;

    if-eq p1, v1, :cond_2

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->a:Lcom/bumptech/glide/load/engine/e;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/e;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    new-instance v0, Lcom/bumptech/glide/load/e;

    invoke-direct {v0}, Lcom/bumptech/glide/load/e;-><init>()V

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->g:Lcom/bumptech/glide/load/e;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/e;->a(Lcom/bumptech/glide/load/e;)V

    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/k;->d:Lcom/bumptech/glide/load/d;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/load/e;->a(Lcom/bumptech/glide/load/d;Ljava/lang/Object;)Lcom/bumptech/glide/load/e;

    goto :goto_0
.end method

.method private a(Lcom/bumptech/glide/load/engine/DecodeJob$Stage;)Lcom/bumptech/glide/load/engine/DecodeJob$Stage;
    .locals 3

    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$1;->b:[I

    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized stage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->f:Lcom/bumptech/glide/load/engine/g;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/g;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->b:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->b:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/DecodeJob;->a(Lcom/bumptech/glide/load/engine/DecodeJob$Stage;)Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->f:Lcom/bumptech/glide/load/engine/g;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/g;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->c:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->c:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/DecodeJob;->a(Lcom/bumptech/glide/load/engine/DecodeJob$Stage;)Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->v:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->f:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->d:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->f:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lcom/bumptech/glide/load/a/b;Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;)Lcom/bumptech/glide/load/engine/q;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/a/b",
            "<*>;TData;",
            "Lcom/bumptech/glide/load/DataSource;",
            ")",
            "Lcom/bumptech/glide/load/engine/q",
            "<TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bumptech/glide/load/engine/GlideException;
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1}, Lcom/bumptech/glide/load/a/b;->a()V

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/bumptech/glide/util/d;->a()J

    move-result-wide v2

    invoke-direct {p0, p2, p3}, Lcom/bumptech/glide/load/engine/DecodeJob;->a(Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;)Lcom/bumptech/glide/load/engine/q;

    move-result-object v0

    const-string v1, "DecodeJob"

    const/4 v4, 0x2

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Decoded result "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v2, v3}, Lcom/bumptech/glide/load/engine/DecodeJob;->a(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-interface {p1}, Lcom/bumptech/glide/load/a/b;->a()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Lcom/bumptech/glide/load/a/b;->a()V

    throw v0
.end method

.method private a(Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;)Lcom/bumptech/glide/load/engine/q;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(TData;",
            "Lcom/bumptech/glide/load/DataSource;",
            ")",
            "Lcom/bumptech/glide/load/engine/q",
            "<TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bumptech/glide/load/engine/GlideException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->a:Lcom/bumptech/glide/load/engine/e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/engine/e;->b(Ljava/lang/Class;)Lcom/bumptech/glide/load/engine/o;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/load/engine/DecodeJob;->a(Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/engine/o;)Lcom/bumptech/glide/load/engine/q;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/engine/o;)Lcom/bumptech/glide/load/engine/q;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "ResourceType:",
            "Ljava/lang/Object;",
            ">(TData;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Lcom/bumptech/glide/load/engine/o",
            "<TData;TResourceType;TR;>;)",
            "Lcom/bumptech/glide/load/engine/q",
            "<TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bumptech/glide/load/engine/GlideException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/bumptech/glide/load/engine/DecodeJob;->a(Lcom/bumptech/glide/load/DataSource;)Lcom/bumptech/glide/load/e;

    move-result-object v2

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->n:Lcom/bumptech/glide/e;

    invoke-virtual {v0}, Lcom/bumptech/glide/e;->c()Lcom/bumptech/glide/Registry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/Registry;->b(Ljava/lang/Object;)Lcom/bumptech/glide/load/a/c;

    move-result-object v1

    :try_start_0
    iget v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->d:I

    iget v4, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->e:I

    new-instance v5, Lcom/bumptech/glide/load/engine/DecodeJob$b;

    invoke-direct {v5, p0, p2}, Lcom/bumptech/glide/load/engine/DecodeJob$b;-><init>(Lcom/bumptech/glide/load/engine/DecodeJob;Lcom/bumptech/glide/load/DataSource;)V

    move-object v0, p3

    invoke-virtual/range {v0 .. v5}, Lcom/bumptech/glide/load/engine/o;->a(Lcom/bumptech/glide/load/a/c;Lcom/bumptech/glide/load/e;IILcom/bumptech/glide/load/engine/f$a;)Lcom/bumptech/glide/load/engine/q;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-interface {v1}, Lcom/bumptech/glide/load/a/c;->b()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Lcom/bumptech/glide/load/a/c;->b()V

    throw v0
.end method

.method private a(Lcom/bumptech/glide/load/engine/q;Lcom/bumptech/glide/load/DataSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/q",
            "<TR;>;",
            "Lcom/bumptech/glide/load/DataSource;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->m()V

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->q:Lcom/bumptech/glide/load/engine/DecodeJob$a;

    invoke-interface {v0, p1, p2}, Lcom/bumptech/glide/load/engine/DecodeJob$a;->a(Lcom/bumptech/glide/load/engine/q;Lcom/bumptech/glide/load/DataSource;)V

    return-void
.end method

.method private a(Ljava/lang/String;J)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/bumptech/glide/load/engine/DecodeJob;->a(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;JLjava/lang/String;)V
    .locals 4

    const-string v1, "DecodeJob"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2, p3}, Lcom/bumptech/glide/util/d;->a(J)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", load key: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->p:Lcom/bumptech/glide/load/engine/k;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p4, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", thread: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method static synthetic b(Lcom/bumptech/glide/load/engine/DecodeJob;)Lcom/bumptech/glide/e;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->n:Lcom/bumptech/glide/e;

    return-object v0
.end method

.method private b(Lcom/bumptech/glide/load/engine/q;Lcom/bumptech/glide/load/DataSource;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/q",
            "<TR;>;",
            "Lcom/bumptech/glide/load/DataSource;",
            ")V"
        }
    .end annotation

    instance-of v0, p1, Lcom/bumptech/glide/load/engine/n;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/bumptech/glide/load/engine/n;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/n;->a()V

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->b:Lcom/bumptech/glide/load/engine/DecodeJob$c;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/DecodeJob$c;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/bumptech/glide/load/engine/p;->a(Lcom/bumptech/glide/load/engine/q;)Lcom/bumptech/glide/load/engine/p;

    move-result-object v0

    move-object p1, v0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/load/engine/DecodeJob;->a(Lcom/bumptech/glide/load/engine/q;Lcom/bumptech/glide/load/DataSource;)V

    sget-object v1, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->e:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->s:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->b:Lcom/bumptech/glide/load/engine/DecodeJob$c;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/DecodeJob$c;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->b:Lcom/bumptech/glide/load/engine/DecodeJob$c;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->k:Lcom/bumptech/glide/load/engine/DecodeJob$d;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->g:Lcom/bumptech/glide/load/e;

    invoke-virtual {v1, v2, v3}, Lcom/bumptech/glide/load/engine/DecodeJob$c;->a(Lcom/bumptech/glide/load/engine/DecodeJob$d;Lcom/bumptech/glide/load/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/p;->a()V

    :cond_3
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->e()V

    return-void

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/p;->a()V

    :cond_4
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->e()V

    throw v1
.end method

.method private e()V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->m:Lcom/bumptech/glide/load/engine/DecodeJob$e;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DecodeJob$e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->g()V

    :cond_0
    return-void
.end method

.method private f()V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->m:Lcom/bumptech/glide/load/engine/DecodeJob$e;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DecodeJob$e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->g()V

    :cond_0
    return-void
.end method

.method private g()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->m:Lcom/bumptech/glide/load/engine/DecodeJob$e;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DecodeJob$e;->c()V

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->b:Lcom/bumptech/glide/load/engine/DecodeJob$c;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DecodeJob$c;->b()V

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->a:Lcom/bumptech/glide/load/engine/e;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/e;->a()V

    iput-boolean v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->C:Z

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->n:Lcom/bumptech/glide/e;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->c:Lcom/bumptech/glide/load/c;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->g:Lcom/bumptech/glide/load/e;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->o:Lcom/bumptech/glide/Priority;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->p:Lcom/bumptech/glide/load/engine/k;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->q:Lcom/bumptech/glide/load/engine/DecodeJob$a;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->s:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->B:Lcom/bumptech/glide/load/engine/d;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->w:Ljava/lang/Thread;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->h:Lcom/bumptech/glide/load/c;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->y:Ljava/lang/Object;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->z:Lcom/bumptech/glide/load/DataSource;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->A:Lcom/bumptech/glide/load/a/b;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->u:J

    iput-boolean v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->D:Z

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->l:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0, p0}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method private h()I
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->o:Lcom/bumptech/glide/Priority;

    invoke-virtual {v0}, Lcom/bumptech/glide/Priority;->ordinal()I

    move-result v0

    return v0
.end method

.method private i()V
    .locals 3

    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$1;->a:[I

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->t:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized run reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->t:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->a:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/DecodeJob;->a(Lcom/bumptech/glide/load/engine/DecodeJob$Stage;)Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->s:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->j()Lcom/bumptech/glide/load/engine/d;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->B:Lcom/bumptech/glide/load/engine/d;

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->k()V

    :goto_0
    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->k()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->n()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private j()Lcom/bumptech/glide/load/engine/d;
    .locals 3

    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$1;->b:[I

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->s:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized stage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->s:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Lcom/bumptech/glide/load/engine/r;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->a:Lcom/bumptech/glide/load/engine/e;

    invoke-direct {v0, v1, p0}, Lcom/bumptech/glide/load/engine/r;-><init>(Lcom/bumptech/glide/load/engine/e;Lcom/bumptech/glide/load/engine/d$a;)V

    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Lcom/bumptech/glide/load/engine/a;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->a:Lcom/bumptech/glide/load/engine/e;

    invoke-direct {v0, v1, p0}, Lcom/bumptech/glide/load/engine/a;-><init>(Lcom/bumptech/glide/load/engine/e;Lcom/bumptech/glide/load/engine/d$a;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/bumptech/glide/load/engine/u;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->a:Lcom/bumptech/glide/load/engine/e;

    invoke-direct {v0, v1, p0}, Lcom/bumptech/glide/load/engine/u;-><init>(Lcom/bumptech/glide/load/engine/e;Lcom/bumptech/glide/load/engine/d$a;)V

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private k()V
    .locals 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->w:Ljava/lang/Thread;

    invoke-static {}, Lcom/bumptech/glide/util/d;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->u:J

    const/4 v0, 0x0

    :cond_0
    iget-boolean v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->D:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->B:Lcom/bumptech/glide/load/engine/d;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->B:Lcom/bumptech/glide/load/engine/d;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/d;->a()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->s:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    invoke-direct {p0, v1}, Lcom/bumptech/glide/load/engine/DecodeJob;->a(Lcom/bumptech/glide/load/engine/DecodeJob$Stage;)Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->s:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->j()Lcom/bumptech/glide/load/engine/d;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->B:Lcom/bumptech/glide/load/engine/d;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->s:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    sget-object v2, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->d:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->c()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->s:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    sget-object v2, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->f:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    if-eq v1, v2, :cond_3

    iget-boolean v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->D:Z

    if-eqz v1, :cond_1

    :cond_3
    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->l()V

    goto :goto_0
.end method

.method private l()V
    .locals 4

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->m()V

    new-instance v0, Lcom/bumptech/glide/load/engine/GlideException;

    const-string v1, "Failed to load resource"

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->i:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->q:Lcom/bumptech/glide/load/engine/DecodeJob$a;

    invoke-interface {v1, v0}, Lcom/bumptech/glide/load/engine/DecodeJob$a;->a(Lcom/bumptech/glide/load/engine/GlideException;)V

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->f()V

    return-void
.end method

.method private m()V
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->j:Lcom/bumptech/glide/util/a/b;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/a/b;->b()V

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->C:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already notified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->C:Z

    return-void
.end method

.method private n()V
    .locals 5

    const-string v0, "DecodeJob"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Retrieved data"

    iget-wide v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->u:J

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->y:Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", cache key: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->h:Lcom/bumptech/glide/load/c;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", fetcher: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->A:Lcom/bumptech/glide/load/a/b;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/bumptech/glide/load/engine/DecodeJob;->a(Ljava/lang/String;JLjava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->A:Lcom/bumptech/glide/load/a/b;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->y:Ljava/lang/Object;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->z:Lcom/bumptech/glide/load/DataSource;

    invoke-direct {p0, v0, v2, v3}, Lcom/bumptech/glide/load/engine/DecodeJob;->a(Lcom/bumptech/glide/load/a/b;Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;)Lcom/bumptech/glide/load/engine/q;
    :try_end_0
    .catch Lcom/bumptech/glide/load/engine/GlideException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->z:Lcom/bumptech/glide/load/DataSource;

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/load/engine/DecodeJob;->b(Lcom/bumptech/glide/load/engine/q;Lcom/bumptech/glide/load/DataSource;)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->x:Lcom/bumptech/glide/load/c;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->z:Lcom/bumptech/glide/load/DataSource;

    invoke-virtual {v0, v2, v3}, Lcom/bumptech/glide/load/engine/GlideException;->a(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/DataSource;)V

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->i:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->k()V

    goto :goto_1
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/engine/DecodeJob;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/DecodeJob",
            "<*>;)I"
        }
    .end annotation

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->h()I

    move-result v0

    invoke-direct {p1}, Lcom/bumptech/glide/load/engine/DecodeJob;->h()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->r:I

    iget v1, p1, Lcom/bumptech/glide/load/engine/DecodeJob;->r:I

    sub-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method a(Lcom/bumptech/glide/e;Ljava/lang/Object;Lcom/bumptech/glide/load/engine/k;Lcom/bumptech/glide/load/c;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/engine/g;Ljava/util/Map;ZZZLcom/bumptech/glide/load/e;Lcom/bumptech/glide/load/engine/DecodeJob$a;I)Lcom/bumptech/glide/load/engine/DecodeJob;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/e;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/load/engine/k;",
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
            "<*>;>;ZZZ",
            "Lcom/bumptech/glide/load/e;",
            "Lcom/bumptech/glide/load/engine/DecodeJob$a",
            "<TR;>;I)",
            "Lcom/bumptech/glide/load/engine/DecodeJob",
            "<TR;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->a:Lcom/bumptech/glide/load/engine/e;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->k:Lcom/bumptech/glide/load/engine/DecodeJob$d;

    move-object/from16 v16, v0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p10

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p15

    move-object/from16 v13, p11

    move/from16 v14, p12

    move/from16 v15, p13

    invoke-virtual/range {v2 .. v16}, Lcom/bumptech/glide/load/engine/e;->a(Lcom/bumptech/glide/e;Ljava/lang/Object;Lcom/bumptech/glide/load/c;IILcom/bumptech/glide/load/engine/g;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/e;Ljava/util/Map;ZZLcom/bumptech/glide/load/engine/DecodeJob$d;)Lcom/bumptech/glide/load/engine/e;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/bumptech/glide/load/engine/DecodeJob;->n:Lcom/bumptech/glide/e;

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/bumptech/glide/load/engine/DecodeJob;->c:Lcom/bumptech/glide/load/c;

    move-object/from16 v0, p9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/bumptech/glide/load/engine/DecodeJob;->o:Lcom/bumptech/glide/Priority;

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/bumptech/glide/load/engine/DecodeJob;->p:Lcom/bumptech/glide/load/engine/k;

    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/bumptech/glide/load/engine/DecodeJob;->d:I

    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/bumptech/glide/load/engine/DecodeJob;->e:I

    move-object/from16 v0, p10

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/bumptech/glide/load/engine/DecodeJob;->f:Lcom/bumptech/glide/load/engine/g;

    move/from16 v0, p14

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/bumptech/glide/load/engine/DecodeJob;->v:Z

    move-object/from16 v0, p15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/bumptech/glide/load/engine/DecodeJob;->g:Lcom/bumptech/glide/load/e;

    move-object/from16 v0, p16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/bumptech/glide/load/engine/DecodeJob;->q:Lcom/bumptech/glide/load/engine/DecodeJob$a;

    move/from16 v0, p17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/bumptech/glide/load/engine/DecodeJob;->r:I

    sget-object v2, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;->a:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bumptech/glide/load/engine/DecodeJob;->t:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/c;Ljava/lang/Exception;Lcom/bumptech/glide/load/a/b;Lcom/bumptech/glide/load/DataSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/c;",
            "Ljava/lang/Exception;",
            "Lcom/bumptech/glide/load/a/b",
            "<*>;",
            "Lcom/bumptech/glide/load/DataSource;",
            ")V"
        }
    .end annotation

    invoke-interface {p3}, Lcom/bumptech/glide/load/a/b;->a()V

    new-instance v0, Lcom/bumptech/glide/load/engine/GlideException;

    const-string v1, "Fetching data failed"

    invoke-direct {v0, v1, p2}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-interface {p3}, Lcom/bumptech/glide/load/a/b;->d()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p1, p4, v1}, Lcom/bumptech/glide/load/engine/GlideException;->a(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/DataSource;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->w:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;->b:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->t:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->q:Lcom/bumptech/glide/load/engine/DecodeJob$a;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/load/engine/DecodeJob$a;->a(Lcom/bumptech/glide/load/engine/DecodeJob;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->k()V

    goto :goto_0
.end method

.method public a(Lcom/bumptech/glide/load/c;Ljava/lang/Object;Lcom/bumptech/glide/load/a/b;Lcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/c;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/load/a/b",
            "<*>;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Lcom/bumptech/glide/load/c;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->h:Lcom/bumptech/glide/load/c;

    iput-object p2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->y:Ljava/lang/Object;

    iput-object p3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->A:Lcom/bumptech/glide/load/a/b;

    iput-object p4, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->z:Lcom/bumptech/glide/load/DataSource;

    iput-object p5, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->x:Lcom/bumptech/glide/load/c;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->w:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;->c:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->t:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->q:Lcom/bumptech/glide/load/engine/DecodeJob$a;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/load/engine/DecodeJob$a;->a(Lcom/bumptech/glide/load/engine/DecodeJob;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "DecodeJob.decodeFromRetrievedData"

    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    throw v0
.end method

.method a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->m:Lcom/bumptech/glide/load/engine/DecodeJob$e;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/DecodeJob$e;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->g()V

    :cond_0
    return-void
.end method

.method a()Z
    .locals 2

    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->a:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/DecodeJob;->a(Lcom/bumptech/glide/load/engine/DecodeJob$Stage;)Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->b:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->c:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->D:Z

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->B:Lcom/bumptech/glide/load/engine/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/d;->b()V

    :cond_0
    return-void
.end method

.method public b_()Lcom/bumptech/glide/util/a/b;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->j:Lcom/bumptech/glide/util/a/b;

    return-object v0
.end method

.method public c()V
    .locals 1

    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;->b:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->t:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->q:Lcom/bumptech/glide/load/engine/DecodeJob$a;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/load/engine/DecodeJob$a;->a(Lcom/bumptech/glide/load/engine/DecodeJob;)V

    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/bumptech/glide/load/engine/DecodeJob;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/engine/DecodeJob;->a(Lcom/bumptech/glide/load/engine/DecodeJob;)I

    move-result v0

    return v0
.end method

.method public run()V
    .locals 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "DecodeJob#run"

    invoke-static {v2}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->A:Lcom/bumptech/glide/load/a/b;

    :try_start_0
    iget-boolean v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->D:Z

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->l()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->A:Lcom/bumptech/glide/load/a/b;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->A:Lcom/bumptech/glide/load/a/b;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fetchers don\'t match!, old: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " new: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->A:Lcom/bumptech/glide/load/a/b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/h;->a(ZLjava/lang/String;)V

    if-eqz v3, :cond_2

    invoke-interface {v3}, Lcom/bumptech/glide/load/a/b;->a()V

    :cond_2
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    :goto_0
    return-void

    :cond_3
    :try_start_1
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->i()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_4

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->A:Lcom/bumptech/glide/load/a/b;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->A:Lcom/bumptech/glide/load/a/b;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    move v0, v1

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fetchers don\'t match!, old: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " new: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->A:Lcom/bumptech/glide/load/a/b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/h;->a(ZLjava/lang/String;)V

    if-eqz v3, :cond_6

    invoke-interface {v3}, Lcom/bumptech/glide/load/a/b;->a()V

    :cond_6
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    const-string v4, "DecodeJob"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "DecodeJob"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DecodeJob threw unexpectedly, isCancelled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->D:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", stage: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->s:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->s:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    sget-object v5, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->e:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    if-eq v4, v5, :cond_8

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->l()V

    :cond_8
    iget-boolean v4, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->D:Z

    if-nez v4, :cond_c

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v2

    if-eqz v3, :cond_9

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->A:Lcom/bumptech/glide/load/a/b;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->A:Lcom/bumptech/glide/load/a/b;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_9
    move v0, v1

    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fetchers don\'t match!, old: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " new: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->A:Lcom/bumptech/glide/load/a/b;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/h;->a(ZLjava/lang/String;)V

    if-eqz v3, :cond_b

    invoke-interface {v3}, Lcom/bumptech/glide/load/a/b;->a()V

    :cond_b
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    throw v2

    :cond_c
    if-eqz v3, :cond_d

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->A:Lcom/bumptech/glide/load/a/b;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->A:Lcom/bumptech/glide/load/a/b;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_d
    move v0, v1

    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fetchers don\'t match!, old: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " new: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->A:Lcom/bumptech/glide/load/a/b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/h;->a(ZLjava/lang/String;)V

    if-eqz v3, :cond_f

    invoke-interface {v3}, Lcom/bumptech/glide/load/a/b;->a()V

    :cond_f
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    goto/16 :goto_0
.end method
