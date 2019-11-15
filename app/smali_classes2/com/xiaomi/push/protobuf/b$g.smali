.class public final Lcom/xiaomi/push/protobuf/b$g;
.super Lcom/google/protobuf/micro/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/protobuf/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/micro/e;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/protobuf/b$g;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/protobuf/b$g;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/protobuf/b$g;->f:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/push/protobuf/b$g;->g:I

    return-void
.end method

.method public static b([B)Lcom/xiaomi/push/protobuf/b$g;
    .locals 1

    new-instance v0, Lcom/xiaomi/push/protobuf/b$g;

    invoke-direct {v0}, Lcom/xiaomi/push/protobuf/b$g;-><init>()V

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/protobuf/b$g;->a([B)Lcom/google/protobuf/micro/e;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/protobuf/b$g;

    check-cast v0, Lcom/xiaomi/push/protobuf/b$g;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/push/protobuf/b$g;->g:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/b$g;->b()I

    :cond_0
    iget v0, p0, Lcom/xiaomi/push/protobuf/b$g;->g:I

    return v0
.end method

.method public synthetic a(Lcom/google/protobuf/micro/b;)Lcom/google/protobuf/micro/e;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/protobuf/b$g;->b(Lcom/google/protobuf/micro/b;)Lcom/xiaomi/push/protobuf/b$g;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/b$g;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/protobuf/b$g;->a:Z

    iput-object p1, p0, Lcom/xiaomi/push/protobuf/b$g;->b:Ljava/lang/String;

    return-object p0
.end method

.method public a(Lcom/google/protobuf/micro/c;)V
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/b$g;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/b$g;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/c;->a(ILjava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/b$g;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/b$g;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/c;->a(ILjava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/b$g;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/b$g;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/c;->a(ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public b()I
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/b$g;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/b$g;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/c;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/b$g;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/b$g;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/c;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/b$g;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/b$g;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/c;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iput v0, p0, Lcom/xiaomi/push/protobuf/b$g;->g:I

    return v0
.end method

.method public b(Lcom/google/protobuf/micro/b;)Lcom/xiaomi/push/protobuf/b$g;
    .locals 1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/push/protobuf/b$g;->a(Lcom/google/protobuf/micro/b;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/protobuf/b$g;->a(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/b$g;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/protobuf/b$g;->b(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/b$g;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/protobuf/b$g;->c(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/b$g;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public b(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/b$g;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/protobuf/b$g;->c:Z

    iput-object p1, p0, Lcom/xiaomi/push/protobuf/b$g;->d:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/xiaomi/push/protobuf/b$g;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/protobuf/b$g;->e:Z

    iput-object p1, p0, Lcom/xiaomi/push/protobuf/b$g;->f:Ljava/lang/String;

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/protobuf/b$g;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/push/protobuf/b$g;->a:Z

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/protobuf/b$g;->d:Ljava/lang/String;

    return-object v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/push/protobuf/b$g;->c:Z

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/protobuf/b$g;->f:Ljava/lang/String;

    return-object v0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/push/protobuf/b$g;->e:Z

    return v0
.end method
