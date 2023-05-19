.class public Lcom/qmuiteam/qmui/c/h;
.super Ljava/lang/Object;
.source "QMUISkinValueBuilder.java"


# static fields
.field private static b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/qmuiteam/qmui/c/h;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qmuiteam/qmui/c/h;->a:Ljava/util/HashMap;

    return-void
.end method

.method public static a()Lcom/qmuiteam/qmui/c/h;
    .locals 1

    .line 1
    sget-object v0, Lcom/qmuiteam/qmui/c/h;->b:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/qmuiteam/qmui/c/h;

    invoke-direct {v0}, Lcom/qmuiteam/qmui/c/h;-><init>()V

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/c/h;

    if-eqz v0, :cond_1

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lcom/qmuiteam/qmui/c/h;

    invoke-direct {v0}, Lcom/qmuiteam/qmui/c/h;-><init>()V

    return-object v0
.end method

.method public static r(Lcom/qmuiteam/qmui/c/h;)V
    .locals 2
    .param p0    # Lcom/qmuiteam/qmui/c/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/c/h;->j()Lcom/qmuiteam/qmui/c/h;

    .line 2
    sget-object v0, Lcom/qmuiteam/qmui/c/h;->b:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/qmuiteam/qmui/c/h;->b:Ljava/util/LinkedList;

    .line 4
    :cond_0
    sget-object v0, Lcom/qmuiteam/qmui/c/h;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 5
    sget-object v0, Lcom/qmuiteam/qmui/c/h;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public A(I)Lcom/qmuiteam/qmui/c/h;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/c/h;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "tcrSrc"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public B(I)Lcom/qmuiteam/qmui/c/h;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/c/h;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "tcTintColor"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public C(I)Lcom/qmuiteam/qmui/c/h;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/c/h;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "tctSrc"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public D(I)Lcom/qmuiteam/qmui/c/h;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/c/h;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "tintColor"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public E(I)Lcom/qmuiteam/qmui/c/h;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/c/h;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "topSeparator"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public F(I)Lcom/qmuiteam/qmui/c/h;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/c/h;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "underline"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public b(I)Lcom/qmuiteam/qmui/c/h;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/c/h;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "alpha"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public c(I)Lcom/qmuiteam/qmui/c/h;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/c/h;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "background"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/qmuiteam/qmui/c/h;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/c/h;->a:Ljava/util/HashMap;

    const-string v1, "background"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public e(I)Lcom/qmuiteam/qmui/c/h;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/c/h;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "bgTintColor"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public f(I)Lcom/qmuiteam/qmui/c/h;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/c/h;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "border"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public g(I)Lcom/qmuiteam/qmui/c/h;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/c/h;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "bottomSeparator"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public h(Ljava/lang/String;)Lcom/qmuiteam/qmui/c/h;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/c/h;->a:Ljava/util/HashMap;

    const-string v1, "bottomSeparator"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public i()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/qmuiteam/qmui/c/h;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3
    iget-object v4, p0, Lcom/qmuiteam/qmui/c/h;->a:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 4
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    const-string v2, "|"

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/qmuiteam/qmui/c/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/c/h;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-object p0
.end method

.method public k(I)Lcom/qmuiteam/qmui/c/h;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/c/h;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "hintColor"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public l()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/c/h;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public m(I)Lcom/qmuiteam/qmui/c/h;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/c/h;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "LeftSeparator"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public n(I)Lcom/qmuiteam/qmui/c/h;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/c/h;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "moreBgColor"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public o(I)Lcom/qmuiteam/qmui/c/h;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/c/h;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "moreTextColor"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public p(I)Lcom/qmuiteam/qmui/c/h;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/c/h;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "progressColor"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public q()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/qmuiteam/qmui/c/h;->r(Lcom/qmuiteam/qmui/c/h;)V

    return-void
.end method

.method public s(I)Lcom/qmuiteam/qmui/c/h;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/c/h;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "rightSeparator"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public t(I)Lcom/qmuiteam/qmui/c/h;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/c/h;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "secondTextColor"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public u(I)Lcom/qmuiteam/qmui/c/h;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/c/h;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "src"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public v(Ljava/lang/String;)Lcom/qmuiteam/qmui/c/h;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/c/h;->a:Ljava/util/HashMap;

    const-string v1, "src"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public w(I)Lcom/qmuiteam/qmui/c/h;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/c/h;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "textColor"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public x(Ljava/lang/String;)Lcom/qmuiteam/qmui/c/h;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/c/h;->a:Ljava/util/HashMap;

    const-string v1, "textColor"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public y(I)Lcom/qmuiteam/qmui/c/h;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/c/h;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "tcbSrc"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public z(I)Lcom/qmuiteam/qmui/c/h;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/c/h;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "tclSrc"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
