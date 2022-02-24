.class Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment$a;
.super Lcom/ifengyu/intercom/g/d/e;
.source "LiteSetupPasswordFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment$a;->b:Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment;

    invoke-direct {p0}, Lcom/ifengyu/intercom/g/d/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/intercom/bean/HttpNormalResult;I)V
    .locals 0

    .line 5
    iget-object p2, p0, Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment$a;->b:Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment;

    invoke-static {p2}, Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment;->c(Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment;)V

    .line 6
    iget p1, p1, Lcom/ifengyu/intercom/bean/HttpNormalResult;->errno:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    const p1, 0x7f11011b

    .line 7
    invoke-static {p1}, Lcom/ifengyu/library/a/m;->d(I)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 8
    invoke-static {p1}, Lcom/ifengyu/intercom/i/x;->a(I)I

    move-result p1

    invoke-static {p1}, Lcom/ifengyu/library/a/m;->d(I)V

    return-void

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment$a;->b:Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment;

    invoke-static {p1}, Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment;->d(Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/ifengyu/intercom/bean/HttpNormalResult;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment$a;->a(Lcom/ifengyu/intercom/bean/HttpNormalResult;I)V

    return-void
.end method

.method public a(Lokhttp3/Call;Ljava/lang/Exception;I)V
    .locals 0

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment$a;->b:Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment;

    invoke-static {p1}, Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment;->b(Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment;)V

    const p1, 0x7f110249

    .line 4
    invoke-static {p1}, Lcom/ifengyu/library/a/m;->d(I)V

    return-void
.end method

.method public a(Lokhttp3/Request;I)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment$a;->b:Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment;

    invoke-static {p1}, Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment;->a(Lcom/ifengyu/intercom/lite/login/LiteSetupPasswordFragment;)V

    return-void
.end method
