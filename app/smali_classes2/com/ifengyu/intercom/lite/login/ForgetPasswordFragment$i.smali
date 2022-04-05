.class Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment$i;
.super Lcom/ifengyu/library/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;->E()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment$i;->d:Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;

    invoke-direct {p0, p2, p3}, Lcom/ifengyu/library/a/c;-><init>(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment$i;->d:Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;->mBtnGetCode:Landroidx/appcompat/widget/AppCompatButton;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    const p1, 0x7f11038b

    invoke-static {p1, v1}, Lcom/ifengyu/library/a/m;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public c()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment$i;->d:Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;

    iget-object v1, v0, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;->mBtnGetCode:Landroidx/appcompat/widget/AppCompatButton;

    iget-object v0, v0, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;->mEtPhone:Lcom/ifengyu/intercom/ui/widget/view/FixedEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/16 v2, 0xb

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment$i;->d:Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;

    iget-object v0, v0, Lcom/ifengyu/intercom/lite/login/ForgetPasswordFragment;->mBtnGetCode:Landroidx/appcompat/widget/AppCompatButton;

    const v1, 0x7f1101d3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    return-void
.end method
