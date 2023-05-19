.class Lcom/shanlitech/et/web/b/b$c;
.super Lb/c/a/c/d;
.source "TOBServiceAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shanlitech/et/web/b/b;->M(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lcom/shanlitech/et/web/b/b;


# direct methods
.method constructor <init>(Lcom/shanlitech/et/web/b/b;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/web/b/b$c;->c:Lcom/shanlitech/et/web/b/b;

    iput p2, p0, Lcom/shanlitech/et/web/b/b$c;->b:I

    invoke-direct {p0}, Lb/c/a/c/d;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/lzy/okgo/model/a;)V
    .locals 1
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
    iget-object v0, p0, Lcom/shanlitech/et/web/b/b$c;->c:Lcom/shanlitech/et/web/b/b;

    invoke-static {v0, p1}, Lcom/shanlitech/et/web/b/b;->z(Lcom/shanlitech/et/web/b/b;Lcom/lzy/okgo/model/a;)V

    return-void
.end method

.method public c(Lcom/lzy/okgo/model/a;)V
    .locals 4
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.READ_PHONE_STATE"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/model/a<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/web/b/b$c;->c:Lcom/shanlitech/et/web/b/b;

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

    invoke-static {v0, v2, v1}, Lcom/shanlitech/et/web/b/b;->w(Lcom/shanlitech/et/web/b/b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    new-instance v0, Lcom/shanlitech/et/web/b/b$c$a;

    invoke-direct {v0, p0}, Lcom/shanlitech/et/web/b/b$c$a;-><init>(Lcom/shanlitech/et/web/b/b$c;)V

    .line 3
    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lcom/lzy/okgo/model/a;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/blankj/utilcode/util/h;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shanlitech/et/web/im/IMServiceAPIResult;

    .line 5
    invoke-virtual {p1}, Lcom/shanlitech/et/web/im/IMServiceAPIResult;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/shanlitech/et/web/b/b$c;->c:Lcom/shanlitech/et/web/b/b;

    invoke-virtual {p1}, Lcom/shanlitech/et/web/im/IMServiceAPIResult;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shanlitech/et/web/model/UserInfo;

    sget-object v1, Lcom/shanlitech/et/web/LoginType;->e:Lcom/shanlitech/et/web/LoginType;

    iget v2, p0, Lcom/shanlitech/et/web/b/b$c;->b:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/shanlitech/et/web/b/b;->N(Lcom/shanlitech/et/web/model/UserInfo;Lcom/shanlitech/et/web/LoginType;I)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/shanlitech/et/web/b/b$c;->c:Lcom/shanlitech/et/web/b/b;

    invoke-virtual {p1}, Lcom/shanlitech/et/web/im/IMServiceAPIResult;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/shanlitech/et/web/im/IMServiceAPIResult;->getCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/shanlitech/et/web/im/IMServiceAPIResult;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shanlitech/et/web/model/UserInfo;

    invoke-static {v0, v1, v2, p1}, Lcom/shanlitech/et/web/b/b;->x(Lcom/shanlitech/et/web/b/b;Ljava/lang/String;ILcom/shanlitech/et/web/model/UserInfo;)V

    :goto_0
    return-void
.end method
