.class final Lcom/ifengyu/intercom/b/v$1;
.super Ljava/lang/Object;
.source "MethodsUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V
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

    iput-object p1, p0, Lcom/ifengyu/intercom/b/v$1;->a:Ljava/lang/CharSequence;

    iput-boolean p2, p0, Lcom/ifengyu/intercom/b/v$1;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x1

    sget-object v1, Lcom/ifengyu/intercom/a;->e:Landroid/widget/Toast;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/MiTalkiApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    sput-object v1, Lcom/ifengyu/intercom/a;->e:Landroid/widget/Toast;

    :cond_0
    sget-object v1, Lcom/ifengyu/intercom/a;->e:Landroid/widget/Toast;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ifengyu/intercom/b/v$1;->a:Ljava/lang/CharSequence;

    if-nez v1, :cond_2

    sget-object v0, Lcom/ifengyu/intercom/a;->e:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v1, Lcom/ifengyu/intercom/a;->e:Landroid/widget/Toast;

    iget-object v2, p0, Lcom/ifengyu/intercom/b/v$1;->a:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/ifengyu/intercom/a;->e:Landroid/widget/Toast;

    iget-boolean v2, p0, Lcom/ifengyu/intercom/b/v$1;->b:Z

    if-eqz v2, :cond_3

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setDuration(I)V

    sget-object v0, Lcom/ifengyu/intercom/a;->e:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method
