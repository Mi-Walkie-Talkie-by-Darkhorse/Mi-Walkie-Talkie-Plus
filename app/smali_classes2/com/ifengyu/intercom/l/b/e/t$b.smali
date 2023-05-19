.class Lcom/ifengyu/intercom/l/b/e/t$b;
.super Lcom/ifengyu/blelib/b/c;
.source "Mi3UpgradeViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/l/b/e/t;->B()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:[B

.field final synthetic d:Lcom/ifengyu/intercom/l/b/e/t;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/l/b/e/t;[B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/l/b/e/t$b;->d:Lcom/ifengyu/intercom/l/b/e/t;

    iput-object p2, p0, Lcom/ifengyu/intercom/l/b/e/t$b;->c:[B

    invoke-direct {p0}, Lcom/ifengyu/blelib/b/c;-><init>()V

    return-void
.end method


# virtual methods
.method public c(I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/l/b/e/t;->c()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ota request failed"

    invoke-static {p1, v0}, Lcom/ifengyu/library/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/e/t$b;->d:Lcom/ifengyu/intercom/l/b/e/t;

    iget-object p1, p1, Lcom/ifengyu/intercom/l/b/e/t;->c:Landroidx/lifecycle/o;

    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public d(Lcom/ifengyu/blelib/c/c;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/blelib/c/c;->d()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/e/t$b;->d:Lcom/ifengyu/intercom/l/b/e/t;

    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/e/t$b;->c:[B

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/l/b/e/t;->f(Lcom/ifengyu/intercom/l/b/e/t;[B)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/blelib/c/c;->d()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 4
    invoke-static {}, Lcom/ifengyu/intercom/l/b/e/t;->c()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ota response low power"

    invoke-static {p1, v0}, Lcom/ifengyu/library/utils/k;->m(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/e/t$b;->d:Lcom/ifengyu/intercom/l/b/e/t;

    iget-object p1, p1, Lcom/ifengyu/intercom/l/b/e/t;->c:Landroidx/lifecycle/o;

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/ifengyu/blelib/c/c;->d()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 7
    invoke-static {}, Lcom/ifengyu/intercom/l/b/e/t;->c()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ota response failed"

    invoke-static {p1, v0}, Lcom/ifengyu/library/utils/k;->m(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/e/t$b;->d:Lcom/ifengyu/intercom/l/b/e/t;

    iget-object p1, p1, Lcom/ifengyu/intercom/l/b/e/t;->c:Landroidx/lifecycle/o;

    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method
