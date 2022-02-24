.class final Lcom/ifengyu/intercom/i/c0$a;
.super Ljava/lang/Object;
.source "MethodsUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V
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

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/i/c0$a;->a:Ljava/lang/CharSequence;

    iput-boolean p2, p0, Lcom/ifengyu/intercom/i/c0$a;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/d;->d:Landroid/widget/Toast;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, ""

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/d;->d:Landroid/widget/Toast;

    .line 3
    :cond_0
    sget-object v0, Lcom/ifengyu/intercom/d;->d:Landroid/widget/Toast;

    if-eqz v0, :cond_2

    .line 4
    iget-object v1, p0, Lcom/ifengyu/intercom/i/c0$a;->a:Ljava/lang/CharSequence;

    if-nez v1, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 7
    sget-object v0, Lcom/ifengyu/intercom/d;->d:Landroid/widget/Toast;

    iget-boolean v1, p0, Lcom/ifengyu/intercom/i/c0$a;->b:Z

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 8
    sget-object v0, Lcom/ifengyu/intercom/d;->d:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_0
    return-void
.end method
