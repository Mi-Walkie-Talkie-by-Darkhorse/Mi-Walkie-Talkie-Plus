.class Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment$a;
.super Lcom/ifengyu/intercom/g/d/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;->A()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment$a;->b:Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;

    invoke-direct {p0}, Lcom/ifengyu/intercom/g/d/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/intercom/bean/HttpNormalResult;I)V
    .locals 0

    iget-object p2, p0, Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment$a;->b:Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;

    invoke-static {p2}, Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;->c(Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment$a;->b:Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;

    const p2, 0x7f110249

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;->a(Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;I)V

    return-void

    :cond_0
    iget p1, p1, Lcom/ifengyu/intercom/bean/HttpNormalResult;->errno:I

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment$a;->b:Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;

    invoke-static {p1}, Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;->d(Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment$a;->b:Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;

    invoke-static {p1}, Lcom/ifengyu/intercom/i/x;->a(I)I

    move-result p1

    invoke-static {p2, p1}, Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;->a(Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;I)V

    :goto_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Lcom/ifengyu/intercom/bean/HttpNormalResult;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment$a;->a(Lcom/ifengyu/intercom/bean/HttpNormalResult;I)V

    return-void
.end method

.method public a(Lokhttp3/Call;Ljava/lang/Exception;I)V
    .locals 0

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment$a;->b:Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;

    invoke-static {p1}, Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;->b(Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;)V

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onError"

    invoke-static {p2, p1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment$a;->b:Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;

    const p2, 0x7f110249

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;->a(Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;I)V

    return-void
.end method

.method public a(Lokhttp3/Request;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/ifengyu/intercom/g/d/b;->a(Lokhttp3/Request;I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment$a;->b:Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;

    invoke-static {p1}, Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;->a(Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;)V

    return-void
.end method
