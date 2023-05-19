.class Lcom/ifengyu/intercom/l/b/e/u$h;
.super Lcom/ifengyu/blelib/b/c;
.source "Mi3ViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/l/b/e/u;->e0(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lcom/ifengyu/intercom/l/b/e/u;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/l/b/e/u;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/l/b/e/u$h;->d:Lcom/ifengyu/intercom/l/b/e/u;

    iput-object p2, p0, Lcom/ifengyu/intercom/l/b/e/u$h;->c:Ljava/util/List;

    invoke-direct {p0}, Lcom/ifengyu/blelib/b/c;-><init>()V

    return-void
.end method


# virtual methods
.method public c(I)V
    .locals 0

    return-void
.end method

.method public d(Lcom/ifengyu/blelib/c/c;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/ifengyu/blelib/c/c;->d()I

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/l/b/e/u$h;->d:Lcom/ifengyu/intercom/l/b/e/u;

    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/e/u$h;->c:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/l/b/e/u;->e0(Ljava/util/List;)V

    :cond_0
    return-void
.end method
