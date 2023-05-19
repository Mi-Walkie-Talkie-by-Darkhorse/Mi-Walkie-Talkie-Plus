.class Lcom/ifengyu/intercom/l/b/e/t$c;
.super Lcom/ifengyu/blelib/b/c;
.source "Mi3UpgradeViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/l/b/e/t;->z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/ifengyu/intercom/l/b/e/t;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/l/b/e/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/l/b/e/t$c;->c:Lcom/ifengyu/intercom/l/b/e/t;

    invoke-direct {p0}, Lcom/ifengyu/blelib/b/c;-><init>()V

    return-void
.end method


# virtual methods
.method public c(I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/e/t$c;->c:Lcom/ifengyu/intercom/l/b/e/t;

    iget-object p1, p1, Lcom/ifengyu/intercom/l/b/e/t;->c:Landroidx/lifecycle/o;

    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public d(Lcom/ifengyu/blelib/c/c;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/blelib/c/c;->d()I

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/e/t$c;->c:Lcom/ifengyu/intercom/l/b/e/t;

    iget-object p1, p1, Lcom/ifengyu/intercom/l/b/e/t;->d:Landroidx/lifecycle/o;

    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/e/t$c;->c:Lcom/ifengyu/intercom/l/b/e/t;

    iget-object p1, p1, Lcom/ifengyu/intercom/l/b/e/t;->c:Landroidx/lifecycle/o;

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/e/t$c;->c:Lcom/ifengyu/intercom/l/b/e/t;

    invoke-static {p1}, Lcom/ifengyu/intercom/l/b/e/t;->g(Lcom/ifengyu/intercom/l/b/e/t;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/e/t$c;->c:Lcom/ifengyu/intercom/l/b/e/t;

    iget-object p1, p1, Lcom/ifengyu/intercom/l/b/e/t;->c:Landroidx/lifecycle/o;

    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
