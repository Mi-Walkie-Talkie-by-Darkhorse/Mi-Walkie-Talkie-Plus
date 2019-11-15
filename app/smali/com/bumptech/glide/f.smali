.class public Lcom/bumptech/glide/f;
.super Ljava/lang/Object;
.source "RequestBuilder.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field protected static final a:Lcom/bumptech/glide/request/d;


# instance fields
.field protected b:Lcom/bumptech/glide/request/d;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final c:Lcom/bumptech/glide/e;

.field private final d:Lcom/bumptech/glide/g;

.field private final e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TTranscodeType;>;"
        }
    .end annotation
.end field

.field private final f:Lcom/bumptech/glide/request/d;

.field private final g:Lcom/bumptech/glide/c;

.field private h:Lcom/bumptech/glide/h;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/h",
            "<*-TTranscodeType;>;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private j:Lcom/bumptech/glide/request/c;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/c",
            "<TTranscodeType;>;"
        }
    .end annotation
.end field

.field private k:Lcom/bumptech/glide/f;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/f",
            "<TTranscodeType;>;"
        }
    .end annotation
.end field

.field private l:Ljava/lang/Float;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private m:Z

.field private n:Z

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/bumptech/glide/request/d;

    invoke-direct {v0}, Lcom/bumptech/glide/request/d;-><init>()V

    sget-object v1, Lcom/bumptech/glide/load/engine/g;->c:Lcom/bumptech/glide/load/engine/g;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/d;->b(Lcom/bumptech/glide/load/engine/g;)Lcom/bumptech/glide/request/d;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/Priority;->d:Lcom/bumptech/glide/Priority;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/d;->a(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/d;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/d;->a(Z)Lcom/bumptech/glide/request/d;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/f;->a:Lcom/bumptech/glide/request/d;

    return-void
.end method

.method protected constructor <init>(Lcom/bumptech/glide/c;Lcom/bumptech/glide/g;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/c;",
            "Lcom/bumptech/glide/g;",
            "Ljava/lang/Class",
            "<TTranscodeType;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/f;->m:Z

    iput-object p1, p0, Lcom/bumptech/glide/f;->g:Lcom/bumptech/glide/c;

    iput-object p2, p0, Lcom/bumptech/glide/f;->d:Lcom/bumptech/glide/g;

    invoke-virtual {p1}, Lcom/bumptech/glide/c;->e()Lcom/bumptech/glide/e;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/f;->c:Lcom/bumptech/glide/e;

    iput-object p3, p0, Lcom/bumptech/glide/f;->e:Ljava/lang/Class;

    invoke-virtual {p2}, Lcom/bumptech/glide/g;->h()Lcom/bumptech/glide/request/d;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/f;->f:Lcom/bumptech/glide/request/d;

    invoke-virtual {p2, p3}, Lcom/bumptech/glide/g;->b(Ljava/lang/Class;)Lcom/bumptech/glide/h;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/f;->h:Lcom/bumptech/glide/h;

    iget-object v0, p0, Lcom/bumptech/glide/f;->f:Lcom/bumptech/glide/request/d;

    iput-object v0, p0, Lcom/bumptech/glide/f;->b:Lcom/bumptech/glide/request/d;

    return-void
.end method

.method private a(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/Priority;
    .locals 3

    sget-object v0, Lcom/bumptech/glide/f$1;->b:[I

    invoke-virtual {p1}, Lcom/bumptech/glide/Priority;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown priority: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/f;->b:Lcom/bumptech/glide/request/d;

    invoke-virtual {v2}, Lcom/bumptech/glide/request/d;->x()Lcom/bumptech/glide/Priority;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object v0, Lcom/bumptech/glide/Priority;->c:Lcom/bumptech/glide/Priority;

    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Lcom/bumptech/glide/Priority;->b:Lcom/bumptech/glide/Priority;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/bumptech/glide/Priority;->a:Lcom/bumptech/glide/Priority;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private a(Lcom/bumptech/glide/request/a/h;Lcom/bumptech/glide/request/d;)Lcom/bumptech/glide/request/a/h;
    .locals 3
    .param p1    # Lcom/bumptech/glide/request/a/h;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/bumptech/glide/request/a/h",
            "<TTranscodeType;>;>(TY;",
            "Lcom/bumptech/glide/request/d;",
            ")TY;"
        }
    .end annotation

    invoke-static {}, Lcom/bumptech/glide/util/i;->a()V

    invoke-static {p1}, Lcom/bumptech/glide/util/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/bumptech/glide/f;->n:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must call #load() before calling #into()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p2}, Lcom/bumptech/glide/request/d;->h()Lcom/bumptech/glide/request/d;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/f;->b(Lcom/bumptech/glide/request/a/h;Lcom/bumptech/glide/request/d;)Lcom/bumptech/glide/request/a;

    move-result-object v0

    invoke-interface {p1}, Lcom/bumptech/glide/request/a/h;->b()Lcom/bumptech/glide/request/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bumptech/glide/request/a;->a(Lcom/bumptech/glide/request/a;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lcom/bumptech/glide/request/a;->i()V

    invoke-static {v1}, Lcom/bumptech/glide/util/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/a;

    invoke-interface {v0}, Lcom/bumptech/glide/request/a;->e()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v1}, Lcom/bumptech/glide/request/a;->a()V

    :cond_1
    :goto_0
    return-object p1

    :cond_2
    iget-object v1, p0, Lcom/bumptech/glide/f;->d:Lcom/bumptech/glide/g;

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/g;->a(Lcom/bumptech/glide/request/a/h;)V

    invoke-interface {p1, v0}, Lcom/bumptech/glide/request/a/h;->a(Lcom/bumptech/glide/request/a;)V

    iget-object v1, p0, Lcom/bumptech/glide/f;->d:Lcom/bumptech/glide/g;

    invoke-virtual {v1, p1, v0}, Lcom/bumptech/glide/g;->a(Lcom/bumptech/glide/request/a/h;Lcom/bumptech/glide/request/a;)V

    goto :goto_0
.end method

.method private a(Lcom/bumptech/glide/request/a/h;Lcom/bumptech/glide/request/d;Lcom/bumptech/glide/request/b;Lcom/bumptech/glide/h;Lcom/bumptech/glide/Priority;II)Lcom/bumptech/glide/request/a;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/a/h",
            "<TTranscodeType;>;",
            "Lcom/bumptech/glide/request/d;",
            "Lcom/bumptech/glide/request/b;",
            "Lcom/bumptech/glide/h",
            "<*-TTranscodeType;>;",
            "Lcom/bumptech/glide/Priority;",
            "II)",
            "Lcom/bumptech/glide/request/a;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/f;->c:Lcom/bumptech/glide/e;

    iget-object v1, p0, Lcom/bumptech/glide/f;->i:Ljava/lang/Object;

    iget-object v2, p0, Lcom/bumptech/glide/f;->e:Ljava/lang/Class;

    iget-object v8, p0, Lcom/bumptech/glide/f;->j:Lcom/bumptech/glide/request/c;

    iget-object v3, p0, Lcom/bumptech/glide/f;->c:Lcom/bumptech/glide/e;

    invoke-virtual {v3}, Lcom/bumptech/glide/e;->b()Lcom/bumptech/glide/load/engine/h;

    move-result-object v10

    invoke-virtual/range {p4 .. p4}, Lcom/bumptech/glide/h;->b()Lcom/bumptech/glide/request/b/e;

    move-result-object v11

    move-object v3, p2

    move/from16 v4, p6

    move/from16 v5, p7

    move-object/from16 v6, p5

    move-object v7, p1

    move-object v9, p3

    invoke-static/range {v0 .. v11}, Lcom/bumptech/glide/request/SingleRequest;->a(Lcom/bumptech/glide/e;Ljava/lang/Object;Ljava/lang/Class;Lcom/bumptech/glide/request/d;IILcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/a/h;Lcom/bumptech/glide/request/c;Lcom/bumptech/glide/request/b;Lcom/bumptech/glide/load/engine/h;Lcom/bumptech/glide/request/b/e;)Lcom/bumptech/glide/request/SingleRequest;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/bumptech/glide/request/a/h;Lcom/bumptech/glide/request/f;Lcom/bumptech/glide/h;Lcom/bumptech/glide/Priority;IILcom/bumptech/glide/request/d;)Lcom/bumptech/glide/request/a;
    .locals 14
    .param p2    # Lcom/bumptech/glide/request/f;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/a/h",
            "<TTranscodeType;>;",
            "Lcom/bumptech/glide/request/f;",
            "Lcom/bumptech/glide/h",
            "<*-TTranscodeType;>;",
            "Lcom/bumptech/glide/Priority;",
            "II",
            "Lcom/bumptech/glide/request/d;",
            ")",
            "Lcom/bumptech/glide/request/a;"
        }
    .end annotation

    iget-object v1, p0, Lcom/bumptech/glide/f;->k:Lcom/bumptech/glide/f;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/bumptech/glide/f;->o:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/f;->k:Lcom/bumptech/glide/f;

    iget-object v1, v1, Lcom/bumptech/glide/f;->h:Lcom/bumptech/glide/h;

    iget-object v2, p0, Lcom/bumptech/glide/f;->k:Lcom/bumptech/glide/f;

    iget-boolean v2, v2, Lcom/bumptech/glide/f;->m:Z

    if-eqz v2, :cond_5

    move-object/from16 v10, p3

    :goto_0
    iget-object v1, p0, Lcom/bumptech/glide/f;->k:Lcom/bumptech/glide/f;

    iget-object v1, v1, Lcom/bumptech/glide/f;->b:Lcom/bumptech/glide/request/d;

    invoke-virtual {v1}, Lcom/bumptech/glide/request/d;->w()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/bumptech/glide/f;->k:Lcom/bumptech/glide/f;

    iget-object v1, v1, Lcom/bumptech/glide/f;->b:Lcom/bumptech/glide/request/d;

    invoke-virtual {v1}, Lcom/bumptech/glide/request/d;->x()Lcom/bumptech/glide/Priority;

    move-result-object v1

    move-object v11, v1

    :goto_1
    iget-object v1, p0, Lcom/bumptech/glide/f;->k:Lcom/bumptech/glide/f;

    iget-object v1, v1, Lcom/bumptech/glide/f;->b:Lcom/bumptech/glide/request/d;

    invoke-virtual {v1}, Lcom/bumptech/glide/request/d;->y()I

    move-result v2

    iget-object v1, p0, Lcom/bumptech/glide/f;->k:Lcom/bumptech/glide/f;

    iget-object v1, v1, Lcom/bumptech/glide/f;->b:Lcom/bumptech/glide/request/d;

    invoke-virtual {v1}, Lcom/bumptech/glide/request/d;->A()I

    move-result v1

    invoke-static/range {p5 .. p6}, Lcom/bumptech/glide/util/i;->a(II)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/bumptech/glide/f;->k:Lcom/bumptech/glide/f;

    iget-object v3, v3, Lcom/bumptech/glide/f;->b:Lcom/bumptech/glide/request/d;

    invoke-virtual {v3}, Lcom/bumptech/glide/request/d;->z()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual/range {p7 .. p7}, Lcom/bumptech/glide/request/d;->y()I

    move-result v2

    invoke-virtual/range {p7 .. p7}, Lcom/bumptech/glide/request/d;->A()I

    move-result v1

    move v12, v1

    move v13, v2

    :goto_2
    new-instance v4, Lcom/bumptech/glide/request/f;

    move-object/from16 v0, p2

    invoke-direct {v4, v0}, Lcom/bumptech/glide/request/f;-><init>(Lcom/bumptech/glide/request/b;)V

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p7

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/bumptech/glide/f;->a(Lcom/bumptech/glide/request/a/h;Lcom/bumptech/glide/request/d;Lcom/bumptech/glide/request/b;Lcom/bumptech/glide/h;Lcom/bumptech/glide/Priority;II)Lcom/bumptech/glide/request/a;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/bumptech/glide/f;->o:Z

    iget-object v2, p0, Lcom/bumptech/glide/f;->k:Lcom/bumptech/glide/f;

    iget-object v3, p0, Lcom/bumptech/glide/f;->k:Lcom/bumptech/glide/f;

    iget-object v9, v3, Lcom/bumptech/glide/f;->b:Lcom/bumptech/glide/request/d;

    move-object v3, p1

    move-object v5, v10

    move-object v6, v11

    move v7, v13

    move v8, v12

    invoke-direct/range {v2 .. v9}, Lcom/bumptech/glide/f;->a(Lcom/bumptech/glide/request/a/h;Lcom/bumptech/glide/request/f;Lcom/bumptech/glide/h;Lcom/bumptech/glide/Priority;IILcom/bumptech/glide/request/d;)Lcom/bumptech/glide/request/a;

    move-result-object v2

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/bumptech/glide/f;->o:Z

    invoke-virtual {v4, v1, v2}, Lcom/bumptech/glide/request/f;->a(Lcom/bumptech/glide/request/a;Lcom/bumptech/glide/request/a;)V

    :goto_3
    return-object v4

    :cond_1
    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/bumptech/glide/f;->a(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/Priority;

    move-result-object v1

    move-object v11, v1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/bumptech/glide/f;->l:Ljava/lang/Float;

    if-eqz v1, :cond_3

    new-instance v4, Lcom/bumptech/glide/request/f;

    move-object/from16 v0, p2

    invoke-direct {v4, v0}, Lcom/bumptech/glide/request/f;-><init>(Lcom/bumptech/glide/request/b;)V

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p7

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/bumptech/glide/f;->a(Lcom/bumptech/glide/request/a/h;Lcom/bumptech/glide/request/d;Lcom/bumptech/glide/request/b;Lcom/bumptech/glide/h;Lcom/bumptech/glide/Priority;II)Lcom/bumptech/glide/request/a;

    move-result-object v9

    invoke-virtual/range {p7 .. p7}, Lcom/bumptech/glide/request/d;->a()Lcom/bumptech/glide/request/d;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/f;->l:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/d;->a(F)Lcom/bumptech/glide/request/d;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/bumptech/glide/f;->a(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/Priority;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v5, p3

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/bumptech/glide/f;->a(Lcom/bumptech/glide/request/a/h;Lcom/bumptech/glide/request/d;Lcom/bumptech/glide/request/b;Lcom/bumptech/glide/h;Lcom/bumptech/glide/Priority;II)Lcom/bumptech/glide/request/a;

    move-result-object v1

    invoke-virtual {v4, v9, v1}, Lcom/bumptech/glide/request/f;->a(Lcom/bumptech/glide/request/a;Lcom/bumptech/glide/request/a;)V

    goto :goto_3

    :cond_3
    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p7

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/bumptech/glide/f;->a(Lcom/bumptech/glide/request/a/h;Lcom/bumptech/glide/request/d;Lcom/bumptech/glide/request/b;Lcom/bumptech/glide/h;Lcom/bumptech/glide/Priority;II)Lcom/bumptech/glide/request/a;

    move-result-object v4

    goto :goto_3

    :cond_4
    move v12, v1

    move v13, v2

    goto/16 :goto_2

    :cond_5
    move-object v10, v1

    goto/16 :goto_0
.end method

.method private b(Ljava/lang/Object;)Lcom/bumptech/glide/f;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/bumptech/glide/f",
            "<TTranscodeType;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/f;->i:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/f;->n:Z

    return-object p0
.end method

.method private b(Lcom/bumptech/glide/request/a/h;Lcom/bumptech/glide/request/d;)Lcom/bumptech/glide/request/a;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/a/h",
            "<TTranscodeType;>;",
            "Lcom/bumptech/glide/request/d;",
            ")",
            "Lcom/bumptech/glide/request/a;"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/bumptech/glide/f;->h:Lcom/bumptech/glide/h;

    invoke-virtual {p2}, Lcom/bumptech/glide/request/d;->x()Lcom/bumptech/glide/Priority;

    move-result-object v4

    invoke-virtual {p2}, Lcom/bumptech/glide/request/d;->y()I

    move-result v5

    invoke-virtual {p2}, Lcom/bumptech/glide/request/d;->A()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/bumptech/glide/f;->a(Lcom/bumptech/glide/request/a/h;Lcom/bumptech/glide/request/f;Lcom/bumptech/glide/h;Lcom/bumptech/glide/Priority;IILcom/bumptech/glide/request/d;)Lcom/bumptech/glide/request/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/h;)Lcom/bumptech/glide/f;
    .locals 1
    .param p1    # Lcom/bumptech/glide/h;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/h",
            "<*-TTranscodeType;>;)",
            "Lcom/bumptech/glide/f",
            "<TTranscodeType;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/bumptech/glide/util/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/h;

    iput-object v0, p0, Lcom/bumptech/glide/f;->h:Lcom/bumptech/glide/h;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/f;->m:Z

    return-object p0
.end method

.method public a(Lcom/bumptech/glide/request/c;)Lcom/bumptech/glide/f;
    .locals 0
    .param p1    # Lcom/bumptech/glide/request/c;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/c",
            "<TTranscodeType;>;)",
            "Lcom/bumptech/glide/f",
            "<TTranscodeType;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/f;->j:Lcom/bumptech/glide/request/c;

    return-object p0
.end method

.method public a(Lcom/bumptech/glide/request/d;)Lcom/bumptech/glide/f;
    .locals 1
    .param p1    # Lcom/bumptech/glide/request/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/d;",
            ")",
            "Lcom/bumptech/glide/f",
            "<TTranscodeType;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/bumptech/glide/util/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/bumptech/glide/f;->a()Lcom/bumptech/glide/request/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/d;->a(Lcom/bumptech/glide/request/d;)Lcom/bumptech/glide/request/d;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/f;->b:Lcom/bumptech/glide/request/d;

    return-object p0
.end method

.method public a(Ljava/lang/Object;)Lcom/bumptech/glide/f;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/bumptech/glide/f",
            "<TTranscodeType;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/bumptech/glide/f;->b(Ljava/lang/Object;)Lcom/bumptech/glide/f;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/a/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            ")",
            "Lcom/bumptech/glide/request/a/h",
            "<TTranscodeType;>;"
        }
    .end annotation

    invoke-static {}, Lcom/bumptech/glide/util/i;->a()V

    invoke-static {p1}, Lcom/bumptech/glide/util/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bumptech/glide/f;->b:Lcom/bumptech/glide/request/d;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/d;->c()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/d;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/bumptech/glide/f$1;->a:[I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/bumptech/glide/f;->c:Lcom/bumptech/glide/e;

    iget-object v2, p0, Lcom/bumptech/glide/f;->e:Ljava/lang/Class;

    invoke-virtual {v1, p1, v2}, Lcom/bumptech/glide/e;->a(Landroid/widget/ImageView;Ljava/lang/Class;)Lcom/bumptech/glide/request/a/h;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/bumptech/glide/f;->a(Lcom/bumptech/glide/request/a/h;Lcom/bumptech/glide/request/d;)Lcom/bumptech/glide/request/a/h;

    move-result-object v0

    return-object v0

    :pswitch_0
    invoke-virtual {v0}, Lcom/bumptech/glide/request/d;->a()Lcom/bumptech/glide/request/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/d;->d()Lcom/bumptech/glide/request/d;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0}, Lcom/bumptech/glide/request/d;->a()Lcom/bumptech/glide/request/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/d;->f()Lcom/bumptech/glide/request/d;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {v0}, Lcom/bumptech/glide/request/d;->a()Lcom/bumptech/glide/request/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/d;->e()Lcom/bumptech/glide/request/d;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-virtual {v0}, Lcom/bumptech/glide/request/d;->a()Lcom/bumptech/glide/request/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/d;->f()Lcom/bumptech/glide/request/d;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a(Lcom/bumptech/glide/request/a/h;)Lcom/bumptech/glide/request/a/h;
    .locals 1
    .param p1    # Lcom/bumptech/glide/request/a/h;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/bumptech/glide/request/a/h",
            "<TTranscodeType;>;>(TY;)TY;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bumptech/glide/f;->a()Lcom/bumptech/glide/request/d;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/f;->a(Lcom/bumptech/glide/request/a/h;Lcom/bumptech/glide/request/d;)Lcom/bumptech/glide/request/a/h;

    move-result-object v0

    return-object v0
.end method

.method protected a()Lcom/bumptech/glide/request/d;
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/f;->f:Lcom/bumptech/glide/request/d;

    iget-object v1, p0, Lcom/bumptech/glide/f;->b:Lcom/bumptech/glide/request/d;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/f;->b:Lcom/bumptech/glide/request/d;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/d;->a()Lcom/bumptech/glide/request/d;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/f;->b:Lcom/bumptech/glide/request/d;

    goto :goto_0
.end method

.method public b()Lcom/bumptech/glide/f;
    .locals 2
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/f",
            "<TTranscodeType;>;"
        }
    .end annotation

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/f;

    iget-object v1, v0, Lcom/bumptech/glide/f;->b:Lcom/bumptech/glide/request/d;

    invoke-virtual {v1}, Lcom/bumptech/glide/request/d;->a()Lcom/bumptech/glide/request/d;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/f;->b:Lcom/bumptech/glide/request/d;

    iget-object v1, v0, Lcom/bumptech/glide/f;->h:Lcom/bumptech/glide/h;

    invoke-virtual {v1}, Lcom/bumptech/glide/h;->a()Lcom/bumptech/glide/h;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/f;->h:Lcom/bumptech/glide/h;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bumptech/glide/f;->b()Lcom/bumptech/glide/f;

    move-result-object v0

    return-object v0
.end method
