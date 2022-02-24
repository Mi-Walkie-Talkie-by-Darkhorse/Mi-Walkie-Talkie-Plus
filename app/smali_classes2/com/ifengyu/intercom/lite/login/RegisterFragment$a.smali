.class Lcom/ifengyu/intercom/lite/login/RegisterFragment$a;
.super Lcom/ifengyu/intercom/g/d/f;
.source "RegisterFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/lite/login/RegisterFragment;->A()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/ifengyu/intercom/lite/login/RegisterFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/lite/login/RegisterFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/lite/login/RegisterFragment$a;->b:Lcom/ifengyu/intercom/lite/login/RegisterFragment;

    invoke-direct {p0}, Lcom/ifengyu/intercom/g/d/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/intercom/bean/LoginResult;I)V
    .locals 1

    .line 6
    iget-object p2, p0, Lcom/ifengyu/intercom/lite/login/RegisterFragment$a;->b:Lcom/ifengyu/intercom/lite/login/RegisterFragment;

    invoke-static {p2}, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->g(Lcom/ifengyu/intercom/lite/login/RegisterFragment;)V

    if-nez p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/login/RegisterFragment$a;->b:Lcom/ifengyu/intercom/lite/login/RegisterFragment;

    const p2, 0x7f110249

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->a(Lcom/ifengyu/intercom/lite/login/RegisterFragment;I)V

    return-void

    .line 8
    :cond_0
    iget p1, p1, Lcom/ifengyu/intercom/bean/LoginResult;->errno:I

    if-nez p1, :cond_1

    .line 9
    invoke-static {}, Lde/greenrobot/event/c;->b()Lde/greenrobot/event/c;

    move-result-object p1

    new-instance p2, Lcom/ifengyu/intercom/eventbus/b;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Lcom/ifengyu/intercom/eventbus/b;-><init>(I)V

    invoke-virtual {p1, p2}, Lde/greenrobot/event/c;->a(Ljava/lang/Object;)V

    .line 10
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/login/RegisterFragment$a;->b:Lcom/ifengyu/intercom/lite/login/RegisterFragment;

    invoke-static {p1}, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->h(Lcom/ifengyu/intercom/lite/login/RegisterFragment;)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object p2, p0, Lcom/ifengyu/intercom/lite/login/RegisterFragment$a;->b:Lcom/ifengyu/intercom/lite/login/RegisterFragment;

    invoke-static {p1}, Lcom/ifengyu/intercom/i/x;->a(I)I

    move-result p1

    invoke-static {p2, p1}, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->a(Lcom/ifengyu/intercom/lite/login/RegisterFragment;I)V

    :goto_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/ifengyu/intercom/bean/LoginResult;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/lite/login/RegisterFragment$a;->a(Lcom/ifengyu/intercom/bean/LoginResult;I)V

    return-void
.end method

.method public a(Lokhttp3/Call;Ljava/lang/Exception;I)V
    .locals 0

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/login/RegisterFragment$a;->b:Lcom/ifengyu/intercom/lite/login/RegisterFragment;

    invoke-static {p1}, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->f(Lcom/ifengyu/intercom/lite/login/RegisterFragment;)V

    .line 5
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/login/RegisterFragment$a;->b:Lcom/ifengyu/intercom/lite/login/RegisterFragment;

    const p2, 0x7f110249

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->a(Lcom/ifengyu/intercom/lite/login/RegisterFragment;I)V

    return-void
.end method

.method public a(Lokhttp3/Request;I)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Lcom/ifengyu/intercom/g/d/b;->a(Lokhttp3/Request;I)V

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/login/RegisterFragment$a;->b:Lcom/ifengyu/intercom/lite/login/RegisterFragment;

    invoke-static {p1}, Lcom/ifengyu/intercom/lite/login/RegisterFragment;->e(Lcom/ifengyu/intercom/lite/login/RegisterFragment;)V

    return-void
.end method
