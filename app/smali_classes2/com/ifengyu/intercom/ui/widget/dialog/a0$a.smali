.class Lcom/ifengyu/intercom/ui/widget/dialog/a0$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/widget/dialog/a0;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/widget/dialog/a0;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/widget/dialog/a0;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/a0$a;->a:Lcom/ifengyu/intercom/ui/widget/dialog/a0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/a0$a;->a:Lcom/ifengyu/intercom/ui/widget/dialog/a0;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/a0;->a(Lcom/ifengyu/intercom/ui/widget/dialog/a0;)Z

    move-result p1

    const/4 p2, 0x0

    const v0, 0x7f110331

    if-eqz p1, :cond_0

    invoke-static {v0}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/a0$a;->a:Lcom/ifengyu/intercom/ui/widget/dialog/a0;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/a0;->b(Lcom/ifengyu/intercom/ui/widget/dialog/a0;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/ifengyu/intercom/i/c0;->d(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {v0}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/a0$a;->a:Lcom/ifengyu/intercom/ui/widget/dialog/a0;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/a0;->d(Lcom/ifengyu/intercom/ui/widget/dialog/a0;)Lcom/ifengyu/intercom/update/dolphin/j;

    move-result-object p1

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/a0$a;->a:Lcom/ifengyu/intercom/ui/widget/dialog/a0;

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/widget/dialog/a0;->b(Lcom/ifengyu/intercom/ui/widget/dialog/a0;)Landroid/app/Activity;

    move-result-object p2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/a0$a;->a:Lcom/ifengyu/intercom/ui/widget/dialog/a0;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/a0;->c(Lcom/ifengyu/intercom/ui/widget/dialog/a0;)Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {p1, p2, v1, v1, v0}, Lcom/ifengyu/intercom/update/dolphin/j;->a(Landroid/app/Activity;IILcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/ifengyu/intercom/ui/widget/dialog/f;

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/a0$a;->a:Lcom/ifengyu/intercom/ui/widget/dialog/a0;

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/widget/dialog/a0;->b(Lcom/ifengyu/intercom/ui/widget/dialog/a0;)Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/ifengyu/intercom/ui/widget/dialog/f;-><init>(Landroid/app/Activity;)V

    const p2, 0x7f1100f9

    invoke-static {p2}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->a(Ljava/lang/CharSequence;)Lcom/ifengyu/intercom/ui/widget/dialog/f;

    const p2, 0x7f110093

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/f;

    const p2, 0x7f110312

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/a0$a$a;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/a0$a$a;-><init>(Lcom/ifengyu/intercom/ui/widget/dialog/a0$a;)V

    invoke-virtual {p1, p2, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/f;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->a()Lcom/ifengyu/intercom/ui/widget/dialog/f;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->d()V

    :goto_0
    return-void
.end method
