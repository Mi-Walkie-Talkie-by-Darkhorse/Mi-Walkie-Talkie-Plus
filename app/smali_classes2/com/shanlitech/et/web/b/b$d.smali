.class Lcom/shanlitech/et/web/b/b$d;
.super Lb/c/a/c/d;
.source "TOBServiceAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shanlitech/et/web/b/b;->U(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/shanlitech/et/web/b/b;


# direct methods
.method constructor <init>(Lcom/shanlitech/et/web/b/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/web/b/b$d;->b:Lcom/shanlitech/et/web/b/b;

    invoke-direct {p0}, Lb/c/a/c/d;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/lzy/okgo/model/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/model/a<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/web/b/b$d;->b:Lcom/shanlitech/et/web/b/b;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "onError"

    aput-object v3, v1, v2

    invoke-virtual {p1}, Lcom/lzy/okgo/model/a;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lcom/lzy/okgo/model/a;->a()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "TOBServiceAPI"

    invoke-static {v0, v2, v1}, Lcom/shanlitech/et/web/b/b;->D(Lcom/shanlitech/et/web/b/b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-super {p0, p1}, Lb/c/a/c/a;->b(Lcom/lzy/okgo/model/a;)V

    return-void
.end method

.method public c(Lcom/lzy/okgo/model/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/model/a<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/web/b/b$d;->b:Lcom/shanlitech/et/web/b/b;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "onSuccess"

    aput-object v3, v1, v2

    invoke-virtual {p1}, Lcom/lzy/okgo/model/a;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lcom/lzy/okgo/model/a;->a()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "TOBServiceAPI"

    invoke-static {v0, v2, v1}, Lcom/shanlitech/et/web/b/b;->A(Lcom/shanlitech/et/web/b/b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    new-instance v0, Lcom/shanlitech/et/web/b/b$d$a;

    invoke-direct {v0, p0}, Lcom/shanlitech/et/web/b/b$d$a;-><init>(Lcom/shanlitech/et/web/b/b$d;)V

    .line 3
    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lcom/lzy/okgo/model/a;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/blankj/utilcode/util/h;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shanlitech/et/web/im/IMServiceAPIResult;

    .line 5
    invoke-virtual {p1}, Lcom/shanlitech/et/web/im/IMServiceAPIResult;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/shanlitech/et/web/b/b$d;->b:Lcom/shanlitech/et/web/b/b;

    invoke-static {p1}, Lcom/shanlitech/et/web/b/b;->B(Lcom/shanlitech/et/web/b/b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/shanlitech/et/web/b/b;->C(Lcom/shanlitech/et/web/b/b;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
