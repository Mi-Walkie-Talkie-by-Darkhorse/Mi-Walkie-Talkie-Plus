.class public final Lcom/xiaomi/push/protobuf/a$a;
.super Lcom/google/protobuf/micro/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/protobuf/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:I

.field private g:Z

.field private h:Z

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/micro/e;-><init>()V

    iput v0, p0, Lcom/xiaomi/push/protobuf/a$a;->b:I

    iput-boolean v0, p0, Lcom/xiaomi/push/protobuf/a$a;->d:Z

    iput v0, p0, Lcom/xiaomi/push/protobuf/a$a;->f:I

    iput-boolean v0, p0, Lcom/xiaomi/push/protobuf/a$a;->h:Z

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/protobuf/a$a;->i:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/push/protobuf/a$a;->j:I

    return-void
.end method

.method public static b([B)Lcom/xiaomi/push/protobuf/a$a;
    .locals 1

    new-instance v0, Lcom/xiaomi/push/protobuf/a$a;

    invoke-direct {v0}, Lcom/xiaomi/push/protobuf/a$a;-><init>()V

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/protobuf/a$a;->a([B)Lcom/google/protobuf/micro/e;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/protobuf/a$a;

    check-cast v0, Lcom/xiaomi/push/protobuf/a$a;

    return-object v0
.end method

.method public static c(Lcom/google/protobuf/micro/b;)Lcom/xiaomi/push/protobuf/a$a;
    .locals 1

    new-instance v0, Lcom/xiaomi/push/protobuf/a$a;

    invoke-direct {v0}, Lcom/xiaomi/push/protobuf/a$a;-><init>()V

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/protobuf/a$a;->b(Lcom/google/protobuf/micro/b;)Lcom/xiaomi/push/protobuf/a$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/push/protobuf/a$a;->j:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/a$a;->b()I

    :cond_0
    iget v0, p0, Lcom/xiaomi/push/protobuf/a$a;->j:I

    return v0
.end method

.method public synthetic a(Lcom/google/protobuf/micro/b;)Lcom/google/protobuf/micro/e;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/protobuf/a$a;->b(Lcom/google/protobuf/micro/b;)Lcom/xiaomi/push/protobuf/a$a;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lcom/xiaomi/push/protobuf/a$a;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/protobuf/a$a;->a:Z

    iput p1, p0, Lcom/xiaomi/push/protobuf/a$a;->b:I

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/a$a;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/protobuf/a$a;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/protobuf/a$a;->i:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/push/protobuf/a$a;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Z)Lcom/xiaomi/push/protobuf/a$a;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/protobuf/a$a;->c:Z

    iput-boolean p1, p0, Lcom/xiaomi/push/protobuf/a$a;->d:Z

    return-object p0
.end method

.method public a(Lcom/google/protobuf/micro/c;)V
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/a$a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/a$a;->d()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/c;->b(II)V

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/a$a;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/a$a;->f()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/c;->a(IZ)V

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/a$a;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/a$a;->h()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/c;->a(II)V

    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/a$a;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/a$a;->j()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/c;->a(IZ)V

    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/a$a;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/c;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public b()I
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/a$a;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/a$a;->d()I

    move-result v2

    invoke-static {v0, v2}, Lcom/google/protobuf/micro/c;->d(II)I

    move-result v0

    add-int/2addr v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/a$a;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/a$a;->f()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/micro/c;->b(IZ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/a$a;->i()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/a$a;->h()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/micro/c;->c(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/a$a;->k()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/a$a;->j()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/micro/c;->b(IZ)I

    move-result v2

    add-int/2addr v0, v2

    move v2, v0

    :goto_1
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/a$a;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/micro/c;->b(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_2

    :cond_2
    add-int v0, v2, v1

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/a$a;->l()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/xiaomi/push/protobuf/a$a;->j:I

    return v0

    :cond_3
    move v2, v0

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public b(I)Lcom/xiaomi/push/protobuf/a$a;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/protobuf/a$a;->e:Z

    iput p1, p0, Lcom/xiaomi/push/protobuf/a$a;->f:I

    return-object p0
.end method

.method public b(Lcom/google/protobuf/micro/b;)Lcom/xiaomi/push/protobuf/a$a;
    .locals 1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/push/protobuf/a$a;->a(Lcom/google/protobuf/micro/b;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->i()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/protobuf/a$a;->a(I)Lcom/xiaomi/push/protobuf/a$a;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->f()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/protobuf/a$a;->a(Z)Lcom/xiaomi/push/protobuf/a$a;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->e()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/protobuf/a$a;->b(I)Lcom/xiaomi/push/protobuf/a$a;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->f()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/protobuf/a$a;->b(Z)Lcom/xiaomi/push/protobuf/a$a;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/protobuf/a$a;->a(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/a$a;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public b(Z)Lcom/xiaomi/push/protobuf/a$a;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/protobuf/a$a;->g:Z

    iput-boolean p1, p0, Lcom/xiaomi/push/protobuf/a$a;->h:Z

    return-object p0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/push/protobuf/a$a;->b:I

    return v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/push/protobuf/a$a;->a:Z

    return v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/push/protobuf/a$a;->d:Z

    return v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/push/protobuf/a$a;->c:Z

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/push/protobuf/a$a;->f:I

    return v0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/push/protobuf/a$a;->e:Z

    return v0
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/push/protobuf/a$a;->h:Z

    return v0
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/push/protobuf/a$a;->g:Z

    return v0
.end method

.method public l()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/push/protobuf/a$a;->i:Ljava/util/List;

    return-object v0
.end method

.method public m()I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/protobuf/a$a;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
