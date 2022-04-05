.class final Lcom/ifengyu/library/a/m$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/library/a/m;->a(Ljava/lang/CharSequence;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/CharSequence;

.field final synthetic b:Z


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;Z)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/library/a/m$a;->a:Ljava/lang/CharSequence;

    iput-boolean p2, p0, Lcom/ifengyu/library/a/m$a;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/ifengyu/library/a/m;->a()Landroid/widget/Toast;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ifengyu/library/a/m;->c()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, ""

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/library/a/m;->a(Landroid/widget/Toast;)Landroid/widget/Toast;

    :cond_0
    invoke-static {}, Lcom/ifengyu/library/a/m;->a()Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/library/a/m$a;->a:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/ifengyu/library/a/m;->a()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/ifengyu/library/a/m;->a()Landroid/widget/Toast;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/library/a/m$a;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/ifengyu/library/a/m;->a()Landroid/widget/Toast;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ifengyu/library/a/m$a;->b:Z

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    invoke-static {}, Lcom/ifengyu/library/a/m;->a()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_0
    return-void
.end method
