.class public abstract Lcom/tencent/open/a/i;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private volatile a:I

.field private volatile b:Z

.field private c:Lcom/tencent/open/a/h;


# direct methods
.method public constructor <init>()V
    .locals 3

    sget v0, Lcom/tencent/open/a/c;->a:I

    const/4 v1, 0x1

    sget-object v2, Lcom/tencent/open/a/h;->a:Lcom/tencent/open/a/h;

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/open/a/i;-><init>(IZLcom/tencent/open/a/h;)V

    return-void
.end method

.method public constructor <init>(IZLcom/tencent/open/a/h;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/tencent/open/a/c;->a:I

    iput v0, p0, Lcom/tencent/open/a/i;->a:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/open/a/i;->b:Z

    sget-object v0, Lcom/tencent/open/a/h;->a:Lcom/tencent/open/a/h;

    iput-object v0, p0, Lcom/tencent/open/a/i;->c:Lcom/tencent/open/a/h;

    invoke-virtual {p0, p1}, Lcom/tencent/open/a/i;->a(I)V

    invoke-virtual {p0, p2}, Lcom/tencent/open/a/i;->a(Z)V

    invoke-virtual {p0, p3}, Lcom/tencent/open/a/i;->a(Lcom/tencent/open/a/h;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/open/a/i;->a:I

    return-void
.end method

.method protected abstract a(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public a(Lcom/tencent/open/a/h;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/open/a/i;->c:Lcom/tencent/open/a/h;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/open/a/i;->b:Z

    return-void
.end method

.method public b(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/open/a/i;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/open/a/i;->a:I

    invoke-static {v0, p1}, Lcom/tencent/open/a/d$a;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p7}, Lcom/tencent/open/a/i;->a(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/open/a/i;->b:Z

    return v0
.end method

.method public e()Lcom/tencent/open/a/h;
    .locals 1

    iget-object v0, p0, Lcom/tencent/open/a/i;->c:Lcom/tencent/open/a/h;

    return-object v0
.end method
