.class public final Lcom/xiaomi/push/protobuf/b$j;
.super Lcom/google/protobuf/micro/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/protobuf/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "j"
.end annotation


# instance fields
.field private a:Z

.field private b:Lcom/google/protobuf/micro/a;

.field private c:Z

.field private d:Lcom/xiaomi/push/protobuf/b$b;

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/micro/e;-><init>()V

    sget-object v0, Lcom/google/protobuf/micro/a;->a:Lcom/google/protobuf/micro/a;

    iput-object v0, p0, Lcom/xiaomi/push/protobuf/b$j;->b:Lcom/google/protobuf/micro/a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/protobuf/b$j;->d:Lcom/xiaomi/push/protobuf/b$b;

    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/push/protobuf/b$j;->e:I

    return-void
.end method

.method public static b([B)Lcom/xiaomi/push/protobuf/b$j;
    .locals 1

    new-instance v0, Lcom/xiaomi/push/protobuf/b$j;

    invoke-direct {v0}, Lcom/xiaomi/push/protobuf/b$j;-><init>()V

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/protobuf/b$j;->a([B)Lcom/google/protobuf/micro/e;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/protobuf/b$j;

    check-cast v0, Lcom/xiaomi/push/protobuf/b$j;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/push/protobuf/b$j;->e:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/b$j;->b()I

    :cond_0
    iget v0, p0, Lcom/xiaomi/push/protobuf/b$j;->e:I

    return v0
.end method

.method public synthetic a(Lcom/google/protobuf/micro/b;)Lcom/google/protobuf/micro/e;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/protobuf/b$j;->b(Lcom/google/protobuf/micro/b;)Lcom/xiaomi/push/protobuf/b$j;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/protobuf/micro/a;)Lcom/xiaomi/push/protobuf/b$j;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/protobuf/b$j;->a:Z

    iput-object p1, p0, Lcom/xiaomi/push/protobuf/b$j;->b:Lcom/google/protobuf/micro/a;

    return-object p0
.end method

.method public a(Lcom/xiaomi/push/protobuf/b$b;)Lcom/xiaomi/push/protobuf/b$j;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/protobuf/b$j;->c:Z

    iput-object p1, p0, Lcom/xiaomi/push/protobuf/b$j;->d:Lcom/xiaomi/push/protobuf/b$b;

    return-object p0
.end method

.method public a(Lcom/google/protobuf/micro/c;)V
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/b$j;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/b$j;->d()Lcom/google/protobuf/micro/a;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/c;->a(ILcom/google/protobuf/micro/a;)V

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/b$j;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/b$j;->g()Lcom/xiaomi/push/protobuf/b$b;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/c;->a(ILcom/google/protobuf/micro/e;)V

    :cond_1
    return-void
.end method

.method public b()I
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/b$j;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/b$j;->d()Lcom/google/protobuf/micro/a;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/c;->b(ILcom/google/protobuf/micro/a;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/b$j;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/xiaomi/push/protobuf/b$j;->g()Lcom/xiaomi/push/protobuf/b$b;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/c;->b(ILcom/google/protobuf/micro/e;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iput v0, p0, Lcom/xiaomi/push/protobuf/b$j;->e:I

    return v0
.end method

.method public b(Lcom/google/protobuf/micro/b;)Lcom/xiaomi/push/protobuf/b$j;
    .locals 1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/push/protobuf/b$j;->a(Lcom/google/protobuf/micro/b;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->h()Lcom/google/protobuf/micro/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/protobuf/b$j;->a(Lcom/google/protobuf/micro/a;)Lcom/xiaomi/push/protobuf/b$j;

    goto :goto_0

    :sswitch_2
    new-instance v0, Lcom/xiaomi/push/protobuf/b$b;

    invoke-direct {v0}, Lcom/xiaomi/push/protobuf/b$b;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/micro/b;->a(Lcom/google/protobuf/micro/e;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/protobuf/b$j;->a(Lcom/xiaomi/push/protobuf/b$b;)Lcom/xiaomi/push/protobuf/b$j;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public d()Lcom/google/protobuf/micro/a;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/protobuf/b$j;->b:Lcom/google/protobuf/micro/a;

    return-object v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/push/protobuf/b$j;->a:Z

    return v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/push/protobuf/b$j;->c:Z

    return v0
.end method

.method public g()Lcom/xiaomi/push/protobuf/b$b;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/protobuf/b$j;->d:Lcom/xiaomi/push/protobuf/b$b;

    return-object v0
.end method
