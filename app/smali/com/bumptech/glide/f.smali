.class public Lcom/bumptech/glide/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Object<",
        "Lcom/bumptech/glide/f<",
        "TTranscodeType;>;>;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/bumptech/glide/g;

.field private final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/bumptech/glide/request/e;

.field private final e:Lcom/bumptech/glide/e;

.field protected f:Lcom/bumptech/glide/request/e;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private g:Lcom/bumptech/glide/h;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/h<",
            "*-TTranscodeType;>;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/request/d<",
            "TTranscodeType;>;>;"
        }
    .end annotation
.end field

.field private j:Lcom/bumptech/glide/f;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/f<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field private k:Lcom/bumptech/glide/f;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/f<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field private l:Ljava/lang/Float;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private m:Z

.field private n:Z

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/bumptech/glide/request/e;

    invoke-direct {v0}, Lcom/bumptech/glide/request/e;-><init>()V

    sget-object v1, Lcom/bumptech/glide/load/engine/h;->b:Lcom/bumptech/glide/load/engine/h;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/e;->a(Lcom/bumptech/glide/load/engine/h;)Lcom/bumptech/glide/request/e;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/Priority;->d:Lcom/bumptech/glide/Priority;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/e;->a(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/e;->a(Z)Lcom/bumptech/glide/request/e;

    return-void
.end method

.method protected constructor <init>(Lcom/bumptech/glide/c;Lcom/bumptech/glide/g;Ljava/lang/Class;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/c;",
            "Lcom/bumptech/glide/g;",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/f;->m:Z

    iput-object p2, p0, Lcom/bumptech/glide/f;->b:Lcom/bumptech/glide/g;

    iput-object p3, p0, Lcom/bumptech/glide/f;->c:Ljava/lang/Class;

    invoke-virtual {p2}, Lcom/bumptech/glide/g;->e()Lcom/bumptech/glide/request/e;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/f;->d:Lcom/bumptech/glide/request/e;

    iput-object p4, p0, Lcom/bumptech/glide/f;->a:Landroid/content/Context;

    invoke-virtual {p2, p3}, Lcom/bumptech/glide/g;->b(Ljava/lang/Class;)Lcom/bumptech/glide/h;

    move-result-object p2

    iput-object p2, p0, Lcom/bumptech/glide/f;->g:Lcom/bumptech/glide/h;

    iget-object p2, p0, Lcom/bumptech/glide/f;->d:Lcom/bumptech/glide/request/e;

    iput-object p2, p0, Lcom/bumptech/glide/f;->f:Lcom/bumptech/glide/request/e;

    invoke-virtual {p1}, Lcom/bumptech/glide/c;->f()Lcom/bumptech/glide/e;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/f;->e:Lcom/bumptech/glide/e;

    return-void
.end method

.method private a(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/Priority;
    .locals 2
    .param p1    # Lcom/bumptech/glide/Priority;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/bumptech/glide/f$a;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown priority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/f;->f:Lcom/bumptech/glide/request/e;

    invoke-virtual {v1}, Lcom/bumptech/glide/request/e;->m()Lcom/bumptech/glide/Priority;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    sget-object p1, Lcom/bumptech/glide/Priority;->a:Lcom/bumptech/glide/Priority;

    return-object p1

    :cond_2
    sget-object p1, Lcom/bumptech/glide/Priority;->b:Lcom/bumptech/glide/Priority;

    return-object p1

    :cond_3
    sget-object p1, Lcom/bumptech/glide/Priority;->c:Lcom/bumptech/glide/Priority;

    return-object p1
.end method

.method private a(Lcom/bumptech/glide/request/h/h;Lcom/bumptech/glide/request/d;Lcom/bumptech/glide/request/c;Lcom/bumptech/glide/h;Lcom/bumptech/glide/Priority;IILcom/bumptech/glide/request/e;)Lcom/bumptech/glide/request/b;
    .locals 19
    .param p2    # Lcom/bumptech/glide/request/d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/request/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/h/h<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/request/d<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/request/c;",
            "Lcom/bumptech/glide/h<",
            "*-TTranscodeType;>;",
            "Lcom/bumptech/glide/Priority;",
            "II",
            "Lcom/bumptech/glide/request/e;",
            ")",
            "Lcom/bumptech/glide/request/b;"
        }
    .end annotation

    move-object/from16 v9, p0

    iget-object v0, v9, Lcom/bumptech/glide/f;->k:Lcom/bumptech/glide/f;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bumptech/glide/request/a;

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/bumptech/glide/request/a;-><init>(Lcom/bumptech/glide/request/c;)V

    move-object v3, v0

    move-object v15, v3

    goto :goto_0

    :cond_0
    move-object/from16 v1, p3

    const/4 v0, 0x0

    move-object v15, v0

    move-object v3, v1

    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/bumptech/glide/f;->b(Lcom/bumptech/glide/request/h/h;Lcom/bumptech/glide/request/d;Lcom/bumptech/glide/request/c;Lcom/bumptech/glide/h;Lcom/bumptech/glide/Priority;IILcom/bumptech/glide/request/e;)Lcom/bumptech/glide/request/b;

    move-result-object v0

    if-nez v15, :cond_1

    return-object v0

    :cond_1
    iget-object v1, v9, Lcom/bumptech/glide/f;->k:Lcom/bumptech/glide/f;

    iget-object v1, v1, Lcom/bumptech/glide/f;->f:Lcom/bumptech/glide/request/e;

    invoke-virtual {v1}, Lcom/bumptech/glide/request/e;->j()I

    move-result v1

    iget-object v2, v9, Lcom/bumptech/glide/f;->k:Lcom/bumptech/glide/f;

    iget-object v2, v2, Lcom/bumptech/glide/f;->f:Lcom/bumptech/glide/request/e;

    invoke-virtual {v2}, Lcom/bumptech/glide/request/e;->i()I

    move-result v2

    invoke-static/range {p6 .. p7}, Lcom/bumptech/glide/util/j;->b(II)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v9, Lcom/bumptech/glide/f;->k:Lcom/bumptech/glide/f;

    iget-object v3, v3, Lcom/bumptech/glide/f;->f:Lcom/bumptech/glide/request/e;

    invoke-virtual {v3}, Lcom/bumptech/glide/request/e;->A()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual/range {p8 .. p8}, Lcom/bumptech/glide/request/e;->j()I

    move-result v1

    invoke-virtual/range {p8 .. p8}, Lcom/bumptech/glide/request/e;->i()I

    move-result v2

    :cond_2
    move/from16 v16, v1

    move/from16 v17, v2

    iget-object v10, v9, Lcom/bumptech/glide/f;->k:Lcom/bumptech/glide/f;

    iget-object v14, v10, Lcom/bumptech/glide/f;->g:Lcom/bumptech/glide/h;

    iget-object v1, v10, Lcom/bumptech/glide/f;->f:Lcom/bumptech/glide/request/e;

    invoke-virtual {v1}, Lcom/bumptech/glide/request/e;->m()Lcom/bumptech/glide/Priority;

    move-result-object v1

    iget-object v2, v9, Lcom/bumptech/glide/f;->k:Lcom/bumptech/glide/f;

    iget-object v2, v2, Lcom/bumptech/glide/f;->f:Lcom/bumptech/glide/request/e;

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object v13, v15

    move-object v3, v15

    move-object v15, v1

    move-object/from16 v18, v2

    invoke-direct/range {v10 .. v18}, Lcom/bumptech/glide/f;->a(Lcom/bumptech/glide/request/h/h;Lcom/bumptech/glide/request/d;Lcom/bumptech/glide/request/c;Lcom/bumptech/glide/h;Lcom/bumptech/glide/Priority;IILcom/bumptech/glide/request/e;)Lcom/bumptech/glide/request/b;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/bumptech/glide/request/a;->a(Lcom/bumptech/glide/request/b;Lcom/bumptech/glide/request/b;)V

    return-object v3
.end method

.method private a(Lcom/bumptech/glide/request/h/h;Lcom/bumptech/glide/request/d;Lcom/bumptech/glide/request/e;)Lcom/bumptech/glide/request/b;
    .locals 9
    .param p2    # Lcom/bumptech/glide/request/d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/h/h<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/request/d<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/request/e;",
            ")",
            "Lcom/bumptech/glide/request/b;"
        }
    .end annotation

    iget-object v4, p0, Lcom/bumptech/glide/f;->g:Lcom/bumptech/glide/h;

    invoke-virtual {p3}, Lcom/bumptech/glide/request/e;->m()Lcom/bumptech/glide/Priority;

    move-result-object v5

    invoke-virtual {p3}, Lcom/bumptech/glide/request/e;->j()I

    move-result v6

    invoke-virtual {p3}, Lcom/bumptech/glide/request/e;->i()I

    move-result v7

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/bumptech/glide/f;->a(Lcom/bumptech/glide/request/h/h;Lcom/bumptech/glide/request/d;Lcom/bumptech/glide/request/c;Lcom/bumptech/glide/h;Lcom/bumptech/glide/Priority;IILcom/bumptech/glide/request/e;)Lcom/bumptech/glide/request/b;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/bumptech/glide/request/h/h;Lcom/bumptech/glide/request/d;Lcom/bumptech/glide/request/e;Lcom/bumptech/glide/request/c;Lcom/bumptech/glide/h;Lcom/bumptech/glide/Priority;II)Lcom/bumptech/glide/request/b;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/h/h<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/request/d<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/request/e;",
            "Lcom/bumptech/glide/request/c;",
            "Lcom/bumptech/glide/h<",
            "*-TTranscodeType;>;",
            "Lcom/bumptech/glide/Priority;",
            "II)",
            "Lcom/bumptech/glide/request/b;"
        }
    .end annotation

    move-object v0, p0

    iget-object v1, v0, Lcom/bumptech/glide/f;->a:Landroid/content/Context;

    iget-object v2, v0, Lcom/bumptech/glide/f;->e:Lcom/bumptech/glide/e;

    iget-object v3, v0, Lcom/bumptech/glide/f;->h:Ljava/lang/Object;

    iget-object v4, v0, Lcom/bumptech/glide/f;->c:Ljava/lang/Class;

    iget-object v11, v0, Lcom/bumptech/glide/f;->i:Ljava/util/List;

    invoke-virtual {v2}, Lcom/bumptech/glide/e;->c()Lcom/bumptech/glide/load/engine/i;

    move-result-object v13

    invoke-virtual/range {p5 .. p5}, Lcom/bumptech/glide/h;->a()Lcom/bumptech/glide/request/i/e;

    move-result-object v14

    move-object/from16 v5, p3

    move/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p6

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v12, p4

    invoke-static/range {v1 .. v14}, Lcom/bumptech/glide/request/SingleRequest;->b(Landroid/content/Context;Lcom/bumptech/glide/e;Ljava/lang/Object;Ljava/lang/Class;Lcom/bumptech/glide/request/e;IILcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/h/h;Lcom/bumptech/glide/request/d;Ljava/util/List;Lcom/bumptech/glide/request/c;Lcom/bumptech/glide/load/engine/i;Lcom/bumptech/glide/request/i/e;)Lcom/bumptech/glide/request/SingleRequest;

    move-result-object v1

    return-object v1
.end method

.method private a(Lcom/bumptech/glide/request/e;Lcom/bumptech/glide/request/b;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/bumptech/glide/request/e;->u()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {p2}, Lcom/bumptech/glide/request/b;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private b(Ljava/lang/Object;)Lcom/bumptech/glide/f;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/bumptech/glide/f<",
            "TTranscodeType;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/f;->h:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bumptech/glide/f;->n:Z

    return-object p0
.end method

.method private b(Lcom/bumptech/glide/request/h/h;Lcom/bumptech/glide/request/d;Lcom/bumptech/glide/request/c;Lcom/bumptech/glide/h;Lcom/bumptech/glide/Priority;IILcom/bumptech/glide/request/e;)Lcom/bumptech/glide/request/b;
    .locals 19
    .param p3    # Lcom/bumptech/glide/request/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/h/h<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/request/d<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/request/c;",
            "Lcom/bumptech/glide/h<",
            "*-TTranscodeType;>;",
            "Lcom/bumptech/glide/Priority;",
            "II",
            "Lcom/bumptech/glide/request/e;",
            ")",
            "Lcom/bumptech/glide/request/b;"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v4, p3

    move-object/from16 v10, p5

    iget-object v0, v9, Lcom/bumptech/glide/f;->j:Lcom/bumptech/glide/f;

    if-eqz v0, :cond_4

    iget-boolean v1, v9, Lcom/bumptech/glide/f;->o:Z

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/bumptech/glide/f;->g:Lcom/bumptech/glide/h;

    iget-boolean v0, v0, Lcom/bumptech/glide/f;->m:Z

    if-eqz v0, :cond_0

    move-object/from16 v14, p4

    goto :goto_0

    :cond_0
    move-object v14, v1

    :goto_0
    iget-object v0, v9, Lcom/bumptech/glide/f;->j:Lcom/bumptech/glide/f;

    iget-object v0, v0, Lcom/bumptech/glide/f;->f:Lcom/bumptech/glide/request/e;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/e;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v9, Lcom/bumptech/glide/f;->j:Lcom/bumptech/glide/f;

    iget-object v0, v0, Lcom/bumptech/glide/f;->f:Lcom/bumptech/glide/request/e;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/e;->m()Lcom/bumptech/glide/Priority;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-direct {v9, v10}, Lcom/bumptech/glide/f;->a(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/Priority;

    move-result-object v0

    :goto_1
    move-object v15, v0

    iget-object v0, v9, Lcom/bumptech/glide/f;->j:Lcom/bumptech/glide/f;

    iget-object v0, v0, Lcom/bumptech/glide/f;->f:Lcom/bumptech/glide/request/e;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/e;->j()I

    move-result v0

    iget-object v1, v9, Lcom/bumptech/glide/f;->j:Lcom/bumptech/glide/f;

    iget-object v1, v1, Lcom/bumptech/glide/f;->f:Lcom/bumptech/glide/request/e;

    invoke-virtual {v1}, Lcom/bumptech/glide/request/e;->i()I

    move-result v1

    invoke-static/range {p6 .. p7}, Lcom/bumptech/glide/util/j;->b(II)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v9, Lcom/bumptech/glide/f;->j:Lcom/bumptech/glide/f;

    iget-object v2, v2, Lcom/bumptech/glide/f;->f:Lcom/bumptech/glide/request/e;

    invoke-virtual {v2}, Lcom/bumptech/glide/request/e;->A()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual/range {p8 .. p8}, Lcom/bumptech/glide/request/e;->j()I

    move-result v0

    invoke-virtual/range {p8 .. p8}, Lcom/bumptech/glide/request/e;->i()I

    move-result v1

    :cond_2
    move/from16 v16, v0

    move/from16 v17, v1

    new-instance v13, Lcom/bumptech/glide/request/g;

    invoke-direct {v13, v4}, Lcom/bumptech/glide/request/g;-><init>(Lcom/bumptech/glide/request/c;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p8

    move-object v4, v13

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/bumptech/glide/f;->a(Lcom/bumptech/glide/request/h/h;Lcom/bumptech/glide/request/d;Lcom/bumptech/glide/request/e;Lcom/bumptech/glide/request/c;Lcom/bumptech/glide/h;Lcom/bumptech/glide/Priority;II)Lcom/bumptech/glide/request/b;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v9, Lcom/bumptech/glide/f;->o:Z

    iget-object v10, v9, Lcom/bumptech/glide/f;->j:Lcom/bumptech/glide/f;

    iget-object v1, v10, Lcom/bumptech/glide/f;->f:Lcom/bumptech/glide/request/e;

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object v2, v13

    move-object/from16 v18, v1

    invoke-direct/range {v10 .. v18}, Lcom/bumptech/glide/f;->a(Lcom/bumptech/glide/request/h/h;Lcom/bumptech/glide/request/d;Lcom/bumptech/glide/request/c;Lcom/bumptech/glide/h;Lcom/bumptech/glide/Priority;IILcom/bumptech/glide/request/e;)Lcom/bumptech/glide/request/b;

    move-result-object v1

    const/4 v3, 0x0

    iput-boolean v3, v9, Lcom/bumptech/glide/f;->o:Z

    invoke-virtual {v2, v0, v1}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/request/b;Lcom/bumptech/glide/request/b;)V

    return-object v2

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v0, v9, Lcom/bumptech/glide/f;->l:Ljava/lang/Float;

    if-eqz v0, :cond_5

    new-instance v11, Lcom/bumptech/glide/request/g;

    invoke-direct {v11, v4}, Lcom/bumptech/glide/request/g;-><init>(Lcom/bumptech/glide/request/c;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p8

    move-object v4, v11

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/bumptech/glide/f;->a(Lcom/bumptech/glide/request/h/h;Lcom/bumptech/glide/request/d;Lcom/bumptech/glide/request/e;Lcom/bumptech/glide/request/c;Lcom/bumptech/glide/h;Lcom/bumptech/glide/Priority;II)Lcom/bumptech/glide/request/b;

    move-result-object v12

    invoke-virtual/range {p8 .. p8}, Lcom/bumptech/glide/request/e;->clone()Lcom/bumptech/glide/request/e;

    move-result-object v0

    iget-object v1, v9, Lcom/bumptech/glide/f;->l:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/e;->a(F)Lcom/bumptech/glide/request/e;

    move-result-object v3

    invoke-direct {v9, v10}, Lcom/bumptech/glide/f;->a(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/Priority;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/bumptech/glide/f;->a(Lcom/bumptech/glide/request/h/h;Lcom/bumptech/glide/request/d;Lcom/bumptech/glide/request/e;Lcom/bumptech/glide/request/c;Lcom/bumptech/glide/h;Lcom/bumptech/glide/Priority;II)Lcom/bumptech/glide/request/b;

    move-result-object v0

    invoke-virtual {v11, v12, v0}, Lcom/bumptech/glide/request/g;->a(Lcom/bumptech/glide/request/b;Lcom/bumptech/glide/request/b;)V

    return-object v11

    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p8

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/bumptech/glide/f;->a(Lcom/bumptech/glide/request/h/h;Lcom/bumptech/glide/request/d;Lcom/bumptech/glide/request/e;Lcom/bumptech/glide/request/c;Lcom/bumptech/glide/h;Lcom/bumptech/glide/Priority;II)Lcom/bumptech/glide/request/b;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/bumptech/glide/request/h/h;Lcom/bumptech/glide/request/d;Lcom/bumptech/glide/request/e;)Lcom/bumptech/glide/request/h/h;
    .locals 2
    .param p1    # Lcom/bumptech/glide/request/h/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/request/d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/request/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/bumptech/glide/request/h/h<",
            "TTranscodeType;>;>(TY;",
            "Lcom/bumptech/glide/request/d<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/request/e;",
            ")TY;"
        }
    .end annotation

    invoke-static {}, Lcom/bumptech/glide/util/j;->a()V

    invoke-static {p1}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/bumptech/glide/f;->n:Z

    if-eqz v0, :cond_2

    invoke-virtual {p3}, Lcom/bumptech/glide/request/e;->a()Lcom/bumptech/glide/request/e;

    invoke-direct {p0, p1, p2, p3}, Lcom/bumptech/glide/f;->a(Lcom/bumptech/glide/request/h/h;Lcom/bumptech/glide/request/d;Lcom/bumptech/glide/request/e;)Lcom/bumptech/glide/request/b;

    move-result-object p2

    invoke-interface {p1}, Lcom/bumptech/glide/request/h/h;->c()Lcom/bumptech/glide/request/b;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/bumptech/glide/request/b;->b(Lcom/bumptech/glide/request/b;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p3, v0}, Lcom/bumptech/glide/f;->a(Lcom/bumptech/glide/request/e;Lcom/bumptech/glide/request/b;)Z

    move-result p3

    if-nez p3, :cond_1

    invoke-interface {p2}, Lcom/bumptech/glide/request/b;->a()V

    invoke-static {v0}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p2, v0

    check-cast p2, Lcom/bumptech/glide/request/b;

    invoke-interface {p2}, Lcom/bumptech/glide/request/b;->isRunning()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-interface {v0}, Lcom/bumptech/glide/request/b;->f()V

    :cond_0
    return-object p1

    :cond_1
    iget-object p3, p0, Lcom/bumptech/glide/f;->b:Lcom/bumptech/glide/g;

    invoke-virtual {p3, p1}, Lcom/bumptech/glide/g;->a(Lcom/bumptech/glide/request/h/h;)V

    invoke-interface {p1, p2}, Lcom/bumptech/glide/request/h/h;->a(Lcom/bumptech/glide/request/b;)V

    iget-object p3, p0, Lcom/bumptech/glide/f;->b:Lcom/bumptech/glide/g;

    invoke-virtual {p3, p1, p2}, Lcom/bumptech/glide/g;->a(Lcom/bumptech/glide/request/h/h;Lcom/bumptech/glide/request/b;)V

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "You must call #load() before calling #into()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/h;)Lcom/bumptech/glide/f;
    .locals 0
    .param p1    # Lcom/bumptech/glide/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/h<",
            "*-TTranscodeType;>;)",
            "Lcom/bumptech/glide/f<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/bumptech/glide/h;

    iput-object p1, p0, Lcom/bumptech/glide/f;->g:Lcom/bumptech/glide/h;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bumptech/glide/f;->m:Z

    return-object p0
.end method

.method public a(Lcom/bumptech/glide/request/d;)Lcom/bumptech/glide/f;
    .locals 1
    .param p1    # Lcom/bumptech/glide/request/d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/d<",
            "TTranscodeType;>;)",
            "Lcom/bumptech/glide/f<",
            "TTranscodeType;>;"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/f;->i:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/f;->i:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/f;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/request/e;)Lcom/bumptech/glide/f;
    .locals 1
    .param p1    # Lcom/bumptech/glide/request/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/e;",
            ")",
            "Lcom/bumptech/glide/f<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/bumptech/glide/f;->a()Lcom/bumptech/glide/request/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/e;->a(Lcom/bumptech/glide/request/e;)Lcom/bumptech/glide/request/e;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/f;->f:Lcom/bumptech/glide/request/e;

    return-object p0
.end method

.method public a(Ljava/lang/Object;)Lcom/bumptech/glide/f;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/bumptech/glide/f<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/bumptech/glide/f;->b(Ljava/lang/Object;)Lcom/bumptech/glide/f;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/bumptech/glide/f;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/bumptech/glide/f<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/bumptech/glide/f;->b(Ljava/lang/Object;)Lcom/bumptech/glide/f;

    return-object p0
.end method

.method protected a()Lcom/bumptech/glide/request/e;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/f;->d:Lcom/bumptech/glide/request/e;

    iget-object v1, p0, Lcom/bumptech/glide/f;->f:Lcom/bumptech/glide/request/e;

    if-ne v0, v1, :cond_0

    invoke-virtual {v1}, Lcom/bumptech/glide/request/e;->clone()Lcom/bumptech/glide/request/e;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public a(Lcom/bumptech/glide/request/h/h;)Lcom/bumptech/glide/request/h/h;
    .locals 1
    .param p1    # Lcom/bumptech/glide/request/h/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/bumptech/glide/request/h/h<",
            "TTranscodeType;>;>(TY;)TY;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/bumptech/glide/f;->a(Lcom/bumptech/glide/request/h/h;Lcom/bumptech/glide/request/d;)Lcom/bumptech/glide/request/h/h;

    return-object p1
.end method

.method a(Lcom/bumptech/glide/request/h/h;Lcom/bumptech/glide/request/d;)Lcom/bumptech/glide/request/h/h;
    .locals 1
    .param p1    # Lcom/bumptech/glide/request/h/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/request/d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/bumptech/glide/request/h/h<",
            "TTranscodeType;>;>(TY;",
            "Lcom/bumptech/glide/request/d<",
            "TTranscodeType;>;)TY;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bumptech/glide/f;->a()Lcom/bumptech/glide/request/e;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/f;->b(Lcom/bumptech/glide/request/h/h;Lcom/bumptech/glide/request/d;Lcom/bumptech/glide/request/e;)Lcom/bumptech/glide/request/h/h;

    return-object p1
.end method

.method public a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/h/i;
    .locals 3
    .param p1    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            ")",
            "Lcom/bumptech/glide/request/h/i<",
            "Landroid/widget/ImageView;",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-static {}, Lcom/bumptech/glide/util/j;->a()V

    invoke-static {p1}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bumptech/glide/f;->f:Lcom/bumptech/glide/request/e;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/e;->z()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/e;->x()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/bumptech/glide/f$a;->a:[I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v0}, Lcom/bumptech/glide/request/e;->clone()Lcom/bumptech/glide/request/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/e;->D()Lcom/bumptech/glide/request/e;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0}, Lcom/bumptech/glide/request/e;->clone()Lcom/bumptech/glide/request/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/e;->E()Lcom/bumptech/glide/request/e;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {v0}, Lcom/bumptech/glide/request/e;->clone()Lcom/bumptech/glide/request/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/e;->D()Lcom/bumptech/glide/request/e;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-virtual {v0}, Lcom/bumptech/glide/request/e;->clone()Lcom/bumptech/glide/request/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/e;->C()Lcom/bumptech/glide/request/e;

    move-result-object v0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/bumptech/glide/f;->e:Lcom/bumptech/glide/e;

    iget-object v2, p0, Lcom/bumptech/glide/f;->c:Ljava/lang/Class;

    invoke-virtual {v1, p1, v2}, Lcom/bumptech/glide/e;->a(Landroid/widget/ImageView;Ljava/lang/Class;)Lcom/bumptech/glide/request/h/i;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/bumptech/glide/f;->b(Lcom/bumptech/glide/request/h/h;Lcom/bumptech/glide/request/d;Lcom/bumptech/glide/request/e;)Lcom/bumptech/glide/request/h/h;

    check-cast p1, Lcom/bumptech/glide/request/h/i;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b(Lcom/bumptech/glide/request/d;)Lcom/bumptech/glide/f;
    .locals 1
    .param p1    # Lcom/bumptech/glide/request/d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/d<",
            "TTranscodeType;>;)",
            "Lcom/bumptech/glide/f<",
            "TTranscodeType;>;"
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/f;->i:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/f;->a(Lcom/bumptech/glide/request/d;)Lcom/bumptech/glide/f;

    return-object p0
.end method

.method public clone()Lcom/bumptech/glide/f;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/f<",
            "TTranscodeType;>;"
        }
    .end annotation

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/f;

    iget-object v1, v0, Lcom/bumptech/glide/f;->f:Lcom/bumptech/glide/request/e;

    invoke-virtual {v1}, Lcom/bumptech/glide/request/e;->clone()Lcom/bumptech/glide/request/e;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/f;->f:Lcom/bumptech/glide/request/e;

    iget-object v1, v0, Lcom/bumptech/glide/f;->g:Lcom/bumptech/glide/h;

    invoke-virtual {v1}, Lcom/bumptech/glide/h;->clone()Lcom/bumptech/glide/h;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/f;->g:Lcom/bumptech/glide/h;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bumptech/glide/f;->clone()Lcom/bumptech/glide/f;

    move-result-object v0

    return-object v0
.end method
