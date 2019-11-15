.class final Lcom/ifengyu/library/util/l$1;
.super Ljava/lang/Object;
.source "UIUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/library/util/l;->a(Ljava/lang/CharSequence;Z)V
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

    iput-object p1, p0, Lcom/ifengyu/library/util/l$1;->a:Ljava/lang/CharSequence;

    iput-boolean p2, p0, Lcom/ifengyu/library/util/l$1;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/ifengyu/library/util/l;->j()Landroid/widget/Toast;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/ifengyu/library/util/l;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v1}, Lcom/ifengyu/library/util/l;->a(Landroid/widget/Toast;)Landroid/widget/Toast;

    :cond_0
    invoke-static {}, Lcom/ifengyu/library/util/l;->j()Landroid/widget/Toast;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ifengyu/library/util/l$1;->a:Ljava/lang/CharSequence;

    if-nez v1, :cond_2

    invoke-static {}, Lcom/ifengyu/library/util/l;->j()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/ifengyu/library/util/l;->j()Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/library/util/l$1;->a:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/ifengyu/library/util/l;->j()Landroid/widget/Toast;

    move-result-object v1

    iget-boolean v2, p0, Lcom/ifengyu/library/util/l$1;->b:Z

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setDuration(I)V

    invoke-static {}, Lcom/ifengyu/library/util/l;->j()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
