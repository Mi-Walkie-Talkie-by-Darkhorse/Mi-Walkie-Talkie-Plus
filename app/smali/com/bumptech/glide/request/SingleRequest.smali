.class public final Lcom/bumptech/glide/request/SingleRequest;
.super Ljava/lang/Object;
.source "SingleRequest.java"

# interfaces
.implements Lcom/bumptech/glide/request/a;
.implements Lcom/bumptech/glide/request/a/g;
.implements Lcom/bumptech/glide/request/e;
.implements Lcom/bumptech/glide/util/a/a$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/SingleRequest$Status;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/a;",
        "Lcom/bumptech/glide/request/a/g;",
        "Lcom/bumptech/glide/request/e;",
        "Lcom/bumptech/glide/util/a/a$c;"
    }
.end annotation


# static fields
.field private static final a:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Lcom/bumptech/glide/request/SingleRequest",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static z:Z


# instance fields
.field private b:Z

.field private final c:Ljava/lang/String;

.field private final d:Lcom/bumptech/glide/util/a/b;

.field private e:Lcom/bumptech/glide/request/b;

.field private f:Lcom/bumptech/glide/e;

.field private g:Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private h:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TR;>;"
        }
    .end annotation
.end field

.field private i:Lcom/bumptech/glide/request/d;

.field private j:I

.field private k:I

.field private l:Lcom/bumptech/glide/Priority;

.field private m:Lcom/bumptech/glide/request/a/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/a/h",
            "<TR;>;"
        }
    .end annotation
.end field

.field private n:Lcom/bumptech/glide/request/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/c",
            "<TR;>;"
        }
    .end annotation
.end field

.field private o:Lcom/bumptech/glide/load/engine/h;

.field private p:Lcom/bumptech/glide/request/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/b/e",
            "<-TR;>;"
        }
    .end annotation
.end field

.field private q:Lcom/bumptech/glide/load/engine/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/q",
            "<TR;>;"
        }
    .end annotation
.end field

.field private r:Lcom/bumptech/glide/load/engine/h$d;

.field private s:J

.field private t:Lcom/bumptech/glide/request/SingleRequest$Status;

.field private u:Landroid/graphics/drawable/Drawable;

.field private v:Landroid/graphics/drawable/Drawable;

.field private w:Landroid/graphics/drawable/Drawable;

.field private x:I

.field private y:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x96

    new-instance v1, Lcom/bumptech/glide/request/SingleRequest$1;

    invoke-direct {v1}, Lcom/bumptech/glide/request/SingleRequest$1;-><init>()V

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/a/a;->a(ILcom/bumptech/glide/util/a/a$a;)Landroid/support/v4/util/Pools$Pool;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/request/SingleRequest;->a:Landroid/support/v4/util/Pools$Pool;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/bumptech/glide/request/SingleRequest;->z:Z

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->c:Ljava/lang/String;

    invoke-static {}, Lcom/bumptech/glide/util/a/b;->a()Lcom/bumptech/glide/util/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->d:Lcom/bumptech/glide/util/a/b;

    return-void
.end method

.method private static a(IF)I
    .locals 1

    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_0

    :goto_0
    return p0

    :cond_0
    int-to-float v0, p0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p0

    goto :goto_0
.end method

.method private a(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    sget-boolean v0, Lcom/bumptech/glide/request/SingleRequest;->z:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/SingleRequest;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/SingleRequest;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lcom/bumptech/glide/e;Ljava/lang/Object;Ljava/lang/Class;Lcom/bumptech/glide/request/d;IILcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/a/h;Lcom/bumptech/glide/request/c;Lcom/bumptech/glide/request/b;Lcom/bumptech/glide/load/engine/h;Lcom/bumptech/glide/request/b/e;)Lcom/bumptech/glide/request/SingleRequest;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/e;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TR;>;",
            "Lcom/bumptech/glide/request/d;",
            "II",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/request/a/h",
            "<TR;>;",
            "Lcom/bumptech/glide/request/c",
            "<TR;>;",
            "Lcom/bumptech/glide/request/b;",
            "Lcom/bumptech/glide/load/engine/h;",
            "Lcom/bumptech/glide/request/b/e",
            "<-TR;>;)",
            "Lcom/bumptech/glide/request/SingleRequest",
            "<TR;>;"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/request/SingleRequest;->a:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/SingleRequest;

    if-nez v0, :cond_0

    new-instance v0, Lcom/bumptech/glide/request/SingleRequest;

    invoke-direct {v0}, Lcom/bumptech/glide/request/SingleRequest;-><init>()V

    :cond_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Lcom/bumptech/glide/request/SingleRequest;->b(Lcom/bumptech/glide/e;Ljava/lang/Object;Ljava/lang/Class;Lcom/bumptech/glide/request/d;IILcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/a/h;Lcom/bumptech/glide/request/c;Lcom/bumptech/glide/request/b;Lcom/bumptech/glide/load/engine/h;Lcom/bumptech/glide/request/b/e;)V

    return-object v0
.end method

.method private a(Lcom/bumptech/glide/load/engine/GlideException;I)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->d:Lcom/bumptech/glide/util/a/b;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/a/b;->b()V

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->f:Lcom/bumptech/glide/e;

    invoke-virtual {v0}, Lcom/bumptech/glide/e;->d()I

    move-result v0

    if-gt v0, p2, :cond_0

    const-string v1, "Glide"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load failed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bumptech/glide/request/SingleRequest;->g:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with size ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/bumptech/glide/request/SingleRequest;->x:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/bumptech/glide/request/SingleRequest;->y:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    const-string v0, "Glide"

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/load/engine/GlideException;->a(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->r:Lcom/bumptech/glide/load/engine/h$d;

    sget-object v0, Lcom/bumptech/glide/request/SingleRequest$Status;->e:Lcom/bumptech/glide/request/SingleRequest$Status;

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->t:Lcom/bumptech/glide/request/SingleRequest$Status;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/request/SingleRequest;->b:Z

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->n:Lcom/bumptech/glide/request/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->n:Lcom/bumptech/glide/request/c;

    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->g:Ljava/lang/Object;

    iget-object v2, p0, Lcom/bumptech/glide/request/SingleRequest;->m:Lcom/bumptech/glide/request/a/h;

    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->r()Z

    move-result v3

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/bumptech/glide/request/c;->a(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/request/a/h;Z)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    iput-boolean v4, p0, Lcom/bumptech/glide/request/SingleRequest;->b:Z

    return-void

    :catchall_0
    move-exception v0

    iput-boolean v4, p0, Lcom/bumptech/glide/request/SingleRequest;->b:Z

    throw v0
.end method

.method private a(Lcom/bumptech/glide/load/engine/q;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/q",
            "<*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->o:Lcom/bumptech/glide/load/engine/h;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/h;->a(Lcom/bumptech/glide/load/engine/q;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->q:Lcom/bumptech/glide/load/engine/q;

    return-void
.end method

.method private a(Lcom/bumptech/glide/load/engine/q;Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/q",
            "<TR;>;TR;",
            "Lcom/bumptech/glide/load/DataSource;",
            ")V"
        }
    .end annotation

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->r()Z

    move-result v5

    sget-object v0, Lcom/bumptech/glide/request/SingleRequest$Status;->d:Lcom/bumptech/glide/request/SingleRequest$Status;

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->t:Lcom/bumptech/glide/request/SingleRequest$Status;

    iput-object p1, p0, Lcom/bumptech/glide/request/SingleRequest;->q:Lcom/bumptech/glide/load/engine/q;

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->f:Lcom/bumptech/glide/e;

    invoke-virtual {v0}, Lcom/bumptech/glide/e;->d()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    const-string v0, "Glide"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finished loading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/request/SingleRequest;->g:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with size ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bumptech/glide/request/SingleRequest;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bumptech/glide/request/SingleRequest;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/bumptech/glide/request/SingleRequest;->s:J

    invoke-static {v2, v3}, Lcom/bumptech/glide/util/d;->a(J)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/request/SingleRequest;->b:Z

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->n:Lcom/bumptech/glide/request/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->n:Lcom/bumptech/glide/request/c;

    iget-object v2, p0, Lcom/bumptech/glide/request/SingleRequest;->g:Ljava/lang/Object;

    iget-object v3, p0, Lcom/bumptech/glide/request/SingleRequest;->m:Lcom/bumptech/glide/request/a/h;

    move-object v1, p2

    move-object v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/bumptech/glide/request/c;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/a/h;Lcom/bumptech/glide/load/DataSource;Z)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->p:Lcom/bumptech/glide/request/b/e;

    invoke-interface {v0, p3, v5}, Lcom/bumptech/glide/request/b/e;->a(Lcom/bumptech/glide/load/DataSource;Z)Lcom/bumptech/glide/request/b/d;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->m:Lcom/bumptech/glide/request/a/h;

    invoke-interface {v1, p2, v0}, Lcom/bumptech/glide/request/a/h;->a(Ljava/lang/Object;Lcom/bumptech/glide/request/b/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    iput-boolean v6, p0, Lcom/bumptech/glide/request/SingleRequest;->b:Z

    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->s()V

    return-void

    :catchall_0
    move-exception v0

    iput-boolean v6, p0, Lcom/bumptech/glide/request/SingleRequest;->b:Z

    throw v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "Request"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " this: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/request/SingleRequest;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private b(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->f:Lcom/bumptech/glide/e;

    invoke-static {v0, p1}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/bumptech/glide/request/SingleRequest;->z:Z

    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/SingleRequest;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Lcom/bumptech/glide/e;Ljava/lang/Object;Ljava/lang/Class;Lcom/bumptech/glide/request/d;IILcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/a/h;Lcom/bumptech/glide/request/c;Lcom/bumptech/glide/request/b;Lcom/bumptech/glide/load/engine/h;Lcom/bumptech/glide/request/b/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/e;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TR;>;",
            "Lcom/bumptech/glide/request/d;",
            "II",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/request/a/h",
            "<TR;>;",
            "Lcom/bumptech/glide/request/c",
            "<TR;>;",
            "Lcom/bumptech/glide/request/b;",
            "Lcom/bumptech/glide/load/engine/h;",
            "Lcom/bumptech/glide/request/b/e",
            "<-TR;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/request/SingleRequest;->f:Lcom/bumptech/glide/e;

    iput-object p2, p0, Lcom/bumptech/glide/request/SingleRequest;->g:Ljava/lang/Object;

    iput-object p3, p0, Lcom/bumptech/glide/request/SingleRequest;->h:Ljava/lang/Class;

    iput-object p4, p0, Lcom/bumptech/glide/request/SingleRequest;->i:Lcom/bumptech/glide/request/d;

    iput p5, p0, Lcom/bumptech/glide/request/SingleRequest;->j:I

    iput p6, p0, Lcom/bumptech/glide/request/SingleRequest;->k:I

    iput-object p7, p0, Lcom/bumptech/glide/request/SingleRequest;->l:Lcom/bumptech/glide/Priority;

    iput-object p8, p0, Lcom/bumptech/glide/request/SingleRequest;->m:Lcom/bumptech/glide/request/a/h;

    iput-object p9, p0, Lcom/bumptech/glide/request/SingleRequest;->n:Lcom/bumptech/glide/request/c;

    iput-object p10, p0, Lcom/bumptech/glide/request/SingleRequest;->e:Lcom/bumptech/glide/request/b;

    iput-object p11, p0, Lcom/bumptech/glide/request/SingleRequest;->o:Lcom/bumptech/glide/load/engine/h;

    iput-object p12, p0, Lcom/bumptech/glide/request/SingleRequest;->p:Lcom/bumptech/glide/request/b/e;

    sget-object v0, Lcom/bumptech/glide/request/SingleRequest$Status;->a:Lcom/bumptech/glide/request/SingleRequest$Status;

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->t:Lcom/bumptech/glide/request/SingleRequest$Status;

    return-void
.end method

.method private c(I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->f:Lcom/bumptech/glide/e;

    invoke-virtual {v0}, Lcom/bumptech/glide/e;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->i:Lcom/bumptech/glide/request/d;

    invoke-virtual {v1}, Lcom/bumptech/glide/request/d;->t()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/support/v4/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private k()V
    .locals 2

    iget-boolean v0, p0, Lcom/bumptech/glide/request/SingleRequest;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t start or clear loads in RequestListener or Target callbacks. If you must do so, consider posting your into() or clear() calls to the main thread using a Handler instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private l()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->u:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->i:Lcom/bumptech/glide/request/d;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/d;->n()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->u:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->u:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->i:Lcom/bumptech/glide/request/d;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/d;->o()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->i:Lcom/bumptech/glide/request/d;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/d;->o()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/SingleRequest;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->u:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->u:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private m()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->v:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->i:Lcom/bumptech/glide/request/d;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/d;->q()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->v:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->v:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->i:Lcom/bumptech/glide/request/d;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/d;->p()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->i:Lcom/bumptech/glide/request/d;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/d;->p()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/SingleRequest;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->v:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->v:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private n()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->w:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->i:Lcom/bumptech/glide/request/d;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/d;->s()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->w:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->w:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->i:Lcom/bumptech/glide/request/d;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/d;->r()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->i:Lcom/bumptech/glide/request/d;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/d;->r()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/SingleRequest;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->w:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->w:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private o()V
    .locals 2

    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->q()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->g:Ljava/lang/Object;

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->n()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->l()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->m()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_3
    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->m:Lcom/bumptech/glide/request/a/h;

    invoke-interface {v1, v0}, Lcom/bumptech/glide/request/a/h;->c(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private p()Z
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->e:Lcom/bumptech/glide/request/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->e:Lcom/bumptech/glide/request/b;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/b;->b(Lcom/bumptech/glide/request/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private q()Z
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->e:Lcom/bumptech/glide/request/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->e:Lcom/bumptech/glide/request/b;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/b;->c(Lcom/bumptech/glide/request/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private r()Z
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->e:Lcom/bumptech/glide/request/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->e:Lcom/bumptech/glide/request/b;

    invoke-interface {v0}, Lcom/bumptech/glide/request/b;->d()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private s()V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->e:Lcom/bumptech/glide/request/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->e:Lcom/bumptech/glide/request/b;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/b;->d(Lcom/bumptech/glide/request/a;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->k()V

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->d:Lcom/bumptech/glide/util/a/b;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/a/b;->b()V

    invoke-static {}, Lcom/bumptech/glide/util/d;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bumptech/glide/request/SingleRequest;->s:J

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->g:Ljava/lang/Object;

    if-nez v0, :cond_3

    iget v0, p0, Lcom/bumptech/glide/request/SingleRequest;->j:I

    iget v1, p0, Lcom/bumptech/glide/request/SingleRequest;->k:I

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/i;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/bumptech/glide/request/SingleRequest;->j:I

    iput v0, p0, Lcom/bumptech/glide/request/SingleRequest;->x:I

    iget v0, p0, Lcom/bumptech/glide/request/SingleRequest;->k:I

    iput v0, p0, Lcom/bumptech/glide/request/SingleRequest;->y:I

    :cond_0
    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->n()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x5

    :goto_0
    new-instance v1, Lcom/bumptech/glide/load/engine/GlideException;

    const-string v2, "Received null model"

    invoke-direct {v1, v2}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1, v0}, Lcom/bumptech/glide/request/SingleRequest;->a(Lcom/bumptech/glide/load/engine/GlideException;I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->t:Lcom/bumptech/glide/request/SingleRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/SingleRequest$Status;->b:Lcom/bumptech/glide/request/SingleRequest$Status;

    if-ne v0, v1, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot restart a running request"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->t:Lcom/bumptech/glide/request/SingleRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/SingleRequest$Status;->d:Lcom/bumptech/glide/request/SingleRequest$Status;

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->q:Lcom/bumptech/glide/load/engine/q;

    sget-object v1, Lcom/bumptech/glide/load/DataSource;->e:Lcom/bumptech/glide/load/DataSource;

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/request/SingleRequest;->a(Lcom/bumptech/glide/load/engine/q;Lcom/bumptech/glide/load/DataSource;)V

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/bumptech/glide/request/SingleRequest$Status;->c:Lcom/bumptech/glide/request/SingleRequest$Status;

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->t:Lcom/bumptech/glide/request/SingleRequest$Status;

    iget v0, p0, Lcom/bumptech/glide/request/SingleRequest;->j:I

    iget v1, p0, Lcom/bumptech/glide/request/SingleRequest;->k:I

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/i;->a(II)Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/bumptech/glide/request/SingleRequest;->j:I

    iget v1, p0, Lcom/bumptech/glide/request/SingleRequest;->k:I

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/request/SingleRequest;->a(II)V

    :goto_2
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->t:Lcom/bumptech/glide/request/SingleRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/SingleRequest$Status;->b:Lcom/bumptech/glide/request/SingleRequest$Status;

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->t:Lcom/bumptech/glide/request/SingleRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/SingleRequest$Status;->c:Lcom/bumptech/glide/request/SingleRequest$Status;

    if-ne v0, v1, :cond_7

    :cond_6
    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->q()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->m:Lcom/bumptech/glide/request/a/h;

    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->m()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bumptech/glide/request/a/h;->b(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    const-string v0, "Request"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finished run method in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/bumptech/glide/request/SingleRequest;->s:J

    invoke-static {v2, v3}, Lcom/bumptech/glide/util/d;->a(J)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/SingleRequest;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->m:Lcom/bumptech/glide/request/a/h;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/a/h;->a(Lcom/bumptech/glide/request/a/g;)V

    goto :goto_2
.end method

.method public a(II)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/request/SingleRequest;->d:Lcom/bumptech/glide/util/a/b;

    invoke-virtual {v2}, Lcom/bumptech/glide/util/a/b;->b()V

    const-string v2, "Request"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got onSizeReady in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/bumptech/glide/request/SingleRequest;->s:J

    invoke-static {v4, v5}, Lcom/bumptech/glide/util/d;->a(J)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/bumptech/glide/request/SingleRequest;->a(Ljava/lang/String;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/request/SingleRequest;->t:Lcom/bumptech/glide/request/SingleRequest$Status;

    sget-object v3, Lcom/bumptech/glide/request/SingleRequest$Status;->c:Lcom/bumptech/glide/request/SingleRequest$Status;

    if-eq v2, v3, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v2, Lcom/bumptech/glide/request/SingleRequest$Status;->b:Lcom/bumptech/glide/request/SingleRequest$Status;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bumptech/glide/request/SingleRequest;->t:Lcom/bumptech/glide/request/SingleRequest$Status;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/request/SingleRequest;->i:Lcom/bumptech/glide/request/d;

    invoke-virtual {v2}, Lcom/bumptech/glide/request/d;->B()F

    move-result v2

    move/from16 v0, p1

    invoke-static {v0, v2}, Lcom/bumptech/glide/request/SingleRequest;->a(IF)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/bumptech/glide/request/SingleRequest;->x:I

    move/from16 v0, p2

    invoke-static {v0, v2}, Lcom/bumptech/glide/request/SingleRequest;->a(IF)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/bumptech/glide/request/SingleRequest;->y:I

    const-string v2, "Request"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finished setup for calling load in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/bumptech/glide/request/SingleRequest;->s:J

    invoke-static {v4, v5}, Lcom/bumptech/glide/util/d;->a(J)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/bumptech/glide/request/SingleRequest;->a(Ljava/lang/String;)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/request/SingleRequest;->o:Lcom/bumptech/glide/load/engine/h;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bumptech/glide/request/SingleRequest;->f:Lcom/bumptech/glide/e;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bumptech/glide/request/SingleRequest;->g:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/bumptech/glide/request/SingleRequest;->i:Lcom/bumptech/glide/request/d;

    invoke-virtual {v5}, Lcom/bumptech/glide/request/d;->v()Lcom/bumptech/glide/load/c;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/bumptech/glide/request/SingleRequest;->x:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/bumptech/glide/request/SingleRequest;->y:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/bumptech/glide/request/SingleRequest;->i:Lcom/bumptech/glide/request/d;

    invoke-virtual {v8}, Lcom/bumptech/glide/request/d;->l()Ljava/lang/Class;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/bumptech/glide/request/SingleRequest;->h:Ljava/lang/Class;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/bumptech/glide/request/SingleRequest;->l:Lcom/bumptech/glide/Priority;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/bumptech/glide/request/SingleRequest;->i:Lcom/bumptech/glide/request/d;

    invoke-virtual {v11}, Lcom/bumptech/glide/request/d;->m()Lcom/bumptech/glide/load/engine/g;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/bumptech/glide/request/SingleRequest;->i:Lcom/bumptech/glide/request/d;

    invoke-virtual {v12}, Lcom/bumptech/glide/request/d;->i()Ljava/util/Map;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/bumptech/glide/request/SingleRequest;->i:Lcom/bumptech/glide/request/d;

    invoke-virtual {v13}, Lcom/bumptech/glide/request/d;->j()Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/bumptech/glide/request/SingleRequest;->i:Lcom/bumptech/glide/request/d;

    invoke-virtual {v14}, Lcom/bumptech/glide/request/d;->C()Z

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/bumptech/glide/request/SingleRequest;->i:Lcom/bumptech/glide/request/d;

    invoke-virtual {v15}, Lcom/bumptech/glide/request/d;->k()Lcom/bumptech/glide/load/e;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/request/SingleRequest;->i:Lcom/bumptech/glide/request/d;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/bumptech/glide/request/d;->u()Z

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/request/SingleRequest;->i:Lcom/bumptech/glide/request/d;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/bumptech/glide/request/d;->D()Z

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/request/SingleRequest;->i:Lcom/bumptech/glide/request/d;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/bumptech/glide/request/d;->E()Z

    move-result v18

    move-object/from16 v19, p0

    invoke-virtual/range {v2 .. v19}, Lcom/bumptech/glide/load/engine/h;->a(Lcom/bumptech/glide/e;Ljava/lang/Object;Lcom/bumptech/glide/load/c;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/engine/g;Ljava/util/Map;ZZLcom/bumptech/glide/load/e;ZZZLcom/bumptech/glide/request/e;)Lcom/bumptech/glide/load/engine/h$d;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bumptech/glide/request/SingleRequest;->r:Lcom/bumptech/glide/load/engine/h$d;

    const-string v2, "Request"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finished onSizeReady in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/bumptech/glide/request/SingleRequest;->s:J

    invoke-static {v4, v5}, Lcom/bumptech/glide/util/d;->a(J)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/bumptech/glide/request/SingleRequest;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public a(Lcom/bumptech/glide/load/engine/GlideException;)V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/request/SingleRequest;->a(Lcom/bumptech/glide/load/engine/GlideException;I)V

    return-void
.end method

.method public a(Lcom/bumptech/glide/load/engine/q;Lcom/bumptech/glide/load/DataSource;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/q",
            "<*>;",
            "Lcom/bumptech/glide/load/DataSource;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->d:Lcom/bumptech/glide/util/a/b;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/a/b;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->r:Lcom/bumptech/glide/load/engine/h$d;

    if-nez p1, :cond_0

    new-instance v0, Lcom/bumptech/glide/load/engine/GlideException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected to receive a Resource<R> with an object of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/request/SingleRequest;->h:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " inside, but instead got null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/request/SingleRequest;->a(Lcom/bumptech/glide/load/engine/GlideException;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/q;->c()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->h:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/SingleRequest;->a(Lcom/bumptech/glide/load/engine/q;)V

    new-instance v2, Lcom/bumptech/glide/load/engine/GlideException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected to receive an object of "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/bumptech/glide/request/SingleRequest;->h:Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " but instead got "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "{"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "} inside Resource{"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "}."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_3

    const-string v0, ""

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/bumptech/glide/request/SingleRequest;->a(Lcom/bumptech/glide/load/engine/GlideException;)V

    goto :goto_0

    :cond_2
    const-string v0, ""

    goto :goto_1

    :cond_3
    const-string v0, " To indicate failure return a null Resource object, rather than a Resource object containing null data."

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->p()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/SingleRequest;->a(Lcom/bumptech/glide/load/engine/q;)V

    sget-object v0, Lcom/bumptech/glide/request/SingleRequest$Status;->d:Lcom/bumptech/glide/request/SingleRequest$Status;

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->t:Lcom/bumptech/glide/request/SingleRequest$Status;

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1, v1, p2}, Lcom/bumptech/glide/request/SingleRequest;->a(Lcom/bumptech/glide/load/engine/q;Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;)V

    goto :goto_0
.end method

.method public a(Lcom/bumptech/glide/request/a;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/bumptech/glide/request/SingleRequest;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/bumptech/glide/request/SingleRequest;

    iget v1, p0, Lcom/bumptech/glide/request/SingleRequest;->j:I

    iget v2, p1, Lcom/bumptech/glide/request/SingleRequest;->j:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/bumptech/glide/request/SingleRequest;->k:I

    iget v2, p1, Lcom/bumptech/glide/request/SingleRequest;->k:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->g:Ljava/lang/Object;

    iget-object v2, p1, Lcom/bumptech/glide/request/SingleRequest;->g:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/bumptech/glide/util/i;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->h:Ljava/lang/Class;

    iget-object v2, p1, Lcom/bumptech/glide/request/SingleRequest;->h:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->i:Lcom/bumptech/glide/request/d;

    iget-object v2, p1, Lcom/bumptech/glide/request/SingleRequest;->i:Lcom/bumptech/glide/request/d;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/d;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->l:Lcom/bumptech/glide/Priority;

    iget-object v2, p1, Lcom/bumptech/glide/request/SingleRequest;->l:Lcom/bumptech/glide/Priority;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public b()V
    .locals 1

    invoke-virtual {p0}, Lcom/bumptech/glide/request/SingleRequest;->c()V

    sget-object v0, Lcom/bumptech/glide/request/SingleRequest$Status;->h:Lcom/bumptech/glide/request/SingleRequest$Status;

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->t:Lcom/bumptech/glide/request/SingleRequest$Status;

    return-void
.end method

.method public b_()Lcom/bumptech/glide/util/a/b;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->d:Lcom/bumptech/glide/util/a/b;

    return-object v0
.end method

.method public c()V
    .locals 2

    invoke-static {}, Lcom/bumptech/glide/util/i;->a()V

    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->k()V

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->t:Lcom/bumptech/glide/request/SingleRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/SingleRequest$Status;->g:Lcom/bumptech/glide/request/SingleRequest$Status;

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/bumptech/glide/request/SingleRequest;->j()V

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->q:Lcom/bumptech/glide/load/engine/q;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->q:Lcom/bumptech/glide/load/engine/q;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/SingleRequest;->a(Lcom/bumptech/glide/load/engine/q;)V

    :cond_1
    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->m:Lcom/bumptech/glide/request/a/h;

    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->m()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bumptech/glide/request/a/h;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    sget-object v0, Lcom/bumptech/glide/request/SingleRequest$Status;->g:Lcom/bumptech/glide/request/SingleRequest$Status;

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->t:Lcom/bumptech/glide/request/SingleRequest$Status;

    goto :goto_0
.end method

.method public e()Z
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->t:Lcom/bumptech/glide/request/SingleRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/SingleRequest$Status;->b:Lcom/bumptech/glide/request/SingleRequest$Status;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->t:Lcom/bumptech/glide/request/SingleRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/SingleRequest$Status;->c:Lcom/bumptech/glide/request/SingleRequest$Status;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->t:Lcom/bumptech/glide/request/SingleRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/SingleRequest$Status;->d:Lcom/bumptech/glide/request/SingleRequest$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 1

    invoke-virtual {p0}, Lcom/bumptech/glide/request/SingleRequest;->f()Z

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->t:Lcom/bumptech/glide/request/SingleRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/SingleRequest$Status;->f:Lcom/bumptech/glide/request/SingleRequest$Status;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->t:Lcom/bumptech/glide/request/SingleRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/SingleRequest$Status;->g:Lcom/bumptech/glide/request/SingleRequest$Status;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->k()V

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->f:Lcom/bumptech/glide/e;

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->g:Ljava/lang/Object;

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->h:Ljava/lang/Class;

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->i:Lcom/bumptech/glide/request/d;

    iput v1, p0, Lcom/bumptech/glide/request/SingleRequest;->j:I

    iput v1, p0, Lcom/bumptech/glide/request/SingleRequest;->k:I

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->m:Lcom/bumptech/glide/request/a/h;

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->n:Lcom/bumptech/glide/request/c;

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->e:Lcom/bumptech/glide/request/b;

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->p:Lcom/bumptech/glide/request/b/e;

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->r:Lcom/bumptech/glide/load/engine/h$d;

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->u:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->v:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->w:Landroid/graphics/drawable/Drawable;

    iput v1, p0, Lcom/bumptech/glide/request/SingleRequest;->x:I

    iput v1, p0, Lcom/bumptech/glide/request/SingleRequest;->y:I

    sget-object v0, Lcom/bumptech/glide/request/SingleRequest;->a:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0, p0}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method j()V
    .locals 1

    invoke-direct {p0}, Lcom/bumptech/glide/request/SingleRequest;->k()V

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->d:Lcom/bumptech/glide/util/a/b;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/a/b;->b()V

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->m:Lcom/bumptech/glide/request/a/h;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/a/h;->b(Lcom/bumptech/glide/request/a/g;)V

    sget-object v0, Lcom/bumptech/glide/request/SingleRequest$Status;->f:Lcom/bumptech/glide/request/SingleRequest$Status;

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->t:Lcom/bumptech/glide/request/SingleRequest$Status;

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->r:Lcom/bumptech/glide/load/engine/h$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->r:Lcom/bumptech/glide/load/engine/h$d;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/h$d;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->r:Lcom/bumptech/glide/load/engine/h$d;

    :cond_0
    return-void
.end method
