.class Lcom/shanlitech/et/web/b/b$f;
.super Lb/c/a/c/d;
.source "TOBServiceAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shanlitech/et/web/b/b;->F(JLcom/shanlitech/et/notice/event/ResultEvent$TYPE;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

.field final synthetic c:Lcom/shanlitech/et/web/b/b;


# direct methods
.method constructor <init>(Lcom/shanlitech/et/web/b/b;Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/web/b/b$f;->c:Lcom/shanlitech/et/web/b/b;

    iput-object p2, p0, Lcom/shanlitech/et/web/b/b$f;->b:Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

    invoke-direct {p0}, Lb/c/a/c/d;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/lzy/okgo/model/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/model/a<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lb/c/a/c/a;->b(Lcom/lzy/okgo/model/a;)V

    .line 2
    iget-object v0, p0, Lcom/shanlitech/et/web/b/b$f;->b:Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

    invoke-virtual {p1}, Lcom/lzy/okgo/model/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lzy/okgo/model/a;->b()I

    move-result p1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1}, Lcom/shanlitech/et/web/b/b;->S(Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;ZLjava/lang/String;I)V

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
    iget-object v0, p0, Lcom/shanlitech/et/web/b/b$f;->c:Lcom/shanlitech/et/web/b/b;

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

    invoke-static {v0, v2, v1}, Lcom/shanlitech/et/web/b/b;->y(Lcom/shanlitech/et/web/b/b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/shanlitech/et/web/b/b$f;->b:Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;

    invoke-static {v0, p1}, Lcom/shanlitech/et/web/b/b;->R(Lcom/shanlitech/et/notice/event/ResultEvent$TYPE;Lcom/lzy/okgo/model/a;)V

    return-void
.end method
