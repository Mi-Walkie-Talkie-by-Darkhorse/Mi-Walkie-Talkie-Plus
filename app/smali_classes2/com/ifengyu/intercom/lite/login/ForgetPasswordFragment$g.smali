.class Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment$g;
.super Lcom/ifengyu/intercom/g/d/e;
.source "ForgetPasswordFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;->A()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment$g;->d:Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;

    iput-object p2, p0, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment$g;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment$g;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/ifengyu/intercom/g/d/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/intercom/bean/HttpNormalResult;I)V
    .locals 1

    .line 6
    iget-object p2, p0, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment$g;->d:Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;

    invoke-static {p2}, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;->f(Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;)V

    if-nez p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment$g;->d:Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;

    const p2, 0x7f110249

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;->a(Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;I)V

    return-void

    .line 8
    :cond_0
    iget p1, p1, Lcom/ifengyu/intercom/bean/HttpNormalResult;->errno:I

    if-nez p1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment$g;->d:Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;

    iget-object p2, p0, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment$g;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment$g;->c:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/ifengyu/intercom/lite/login/ResetPasswordFragment;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/qmuiteam/qmui/arch/b;->a(Lcom/qmuiteam/qmui/arch/b;)I

    goto :goto_0

    .line 10
    :cond_1
    iget-object p2, p0, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment$g;->d:Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;

    invoke-static {p1}, Lcom/ifengyu/intercom/i/x;->a(I)I

    move-result p1

    invoke-static {p2, p1}, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;->a(Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;I)V

    :goto_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/ifengyu/intercom/bean/HttpNormalResult;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment$g;->a(Lcom/ifengyu/intercom/bean/HttpNormalResult;I)V

    return-void
.end method

.method public a(Lokhttp3/Call;Ljava/lang/Exception;I)V
    .locals 0

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment$g;->d:Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;

    invoke-static {p1}, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;->e(Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;)V

    .line 5
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment$g;->d:Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;

    const p2, 0x7f110249

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;->a(Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;I)V

    return-void
.end method

.method public a(Lokhttp3/Request;I)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Lcom/ifengyu/intercom/g/d/b;->a(Lokhttp3/Request;I)V

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment$g;->d:Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;

    invoke-static {p1}, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;->d(Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;)V

    return-void
.end method
