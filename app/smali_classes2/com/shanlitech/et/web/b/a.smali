.class public final synthetic Lcom/shanlitech/et/web/b/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/shanlitech/et/web/b/b;

.field public final synthetic b:Lcom/lzy/okgo/model/a;


# direct methods
.method public synthetic constructor <init>(Lcom/shanlitech/et/web/b/b;Lcom/lzy/okgo/model/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shanlitech/et/web/b/a;->a:Lcom/shanlitech/et/web/b/b;

    iput-object p2, p0, Lcom/shanlitech/et/web/b/a;->b:Lcom/lzy/okgo/model/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/shanlitech/et/web/b/a;->a:Lcom/shanlitech/et/web/b/b;

    iget-object v1, p0, Lcom/shanlitech/et/web/b/a;->b:Lcom/lzy/okgo/model/a;

    invoke-virtual {v0, v1}, Lcom/shanlitech/et/web/b/b;->L(Lcom/lzy/okgo/model/a;)V

    return-void
.end method
