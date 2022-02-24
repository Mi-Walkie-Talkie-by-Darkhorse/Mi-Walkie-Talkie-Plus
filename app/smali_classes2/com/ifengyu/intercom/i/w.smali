.class public Lcom/ifengyu/intercom/i/w;
.super Ljava/lang/Object;
.source "GlobalDialogUtil.java"


# static fields
.field private static d:Lcom/ifengyu/intercom/i/w;


# instance fields
.field private a:Lcom/qmuiteam/qmui/widget/dialog/b;

.field private b:Lcom/qmuiteam/qmui/widget/dialog/b;

.field private c:Lcom/qmuiteam/qmui/widget/dialog/b;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/ifengyu/intercom/i/w;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/i/w;->d:Lcom/ifengyu/intercom/i/w;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/ifengyu/intercom/i/w;

    invoke-direct {v0}, Lcom/ifengyu/intercom/i/w;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/i/w;->d:Lcom/ifengyu/intercom/i/w;

    .line 3
    :cond_0
    sget-object v0, Lcom/ifengyu/intercom/i/w;->d:Lcom/ifengyu/intercom/i/w;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->f()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/i/w;->a:Lcom/qmuiteam/qmui/widget/dialog/b;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/i/w;->a:Lcom/qmuiteam/qmui/widget/dialog/b;

    invoke-virtual {v0}, Landroidx/appcompat/app/d;->dismiss()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/ifengyu/intercom/i/w;->a:Lcom/qmuiteam/qmui/widget/dialog/b;

    .line 5
    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/lite/c/b/e;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/MiTalkiApp;->f()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/lite/c/b/e;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110088

    .line 6
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/b$b;->d(I)Lcom/qmuiteam/qmui/widget/dialog/b$b;

    const v1, 0x7f110375

    new-instance v2, Lcom/ifengyu/intercom/i/a;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/i/a;-><init>(Lcom/ifengyu/intercom/i/w;)V

    const/4 v3, 0x0

    .line 7
    invoke-virtual {v0, v3, v1, v3, v2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    const v1, 0x7f1200fc

    .line 8
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/i/w;->a:Lcom/qmuiteam/qmui/widget/dialog/b;

    .line 9
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)V
    .locals 4

    .line 13
    :try_start_0
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->f()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 14
    iget-object v0, p0, Lcom/ifengyu/intercom/i/w;->c:Lcom/qmuiteam/qmui/widget/dialog/b;

    if-eqz v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/ifengyu/intercom/i/w;->c:Lcom/qmuiteam/qmui/widget/dialog/b;

    invoke-virtual {v0}, Landroidx/appcompat/app/d;->dismiss()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/ifengyu/intercom/i/w;->c:Lcom/qmuiteam/qmui/widget/dialog/b;

    .line 17
    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/lite/c/b/e;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/MiTalkiApp;->f()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/lite/c/b/e;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110263

    .line 18
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->c(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    const v1, 0x7f110020

    .line 19
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/b$b;->d(I)Lcom/qmuiteam/qmui/widget/dialog/b$b;

    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    .line 21
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    const v2, 0x7f11009c

    const/4 v3, 0x1

    .line 22
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    const p1, 0x7f1200fc

    .line 23
    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/i/w;->c:Lcom/qmuiteam/qmui/widget/dialog/b;

    .line 24
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic a(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 11
    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/ifengyu/intercom/i/w;->a:Lcom/qmuiteam/qmui/widget/dialog/b;

    return-void
.end method

.method public b(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)V
    .locals 4

    .line 4
    :try_start_0
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->f()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/i/w;->b:Lcom/qmuiteam/qmui/widget/dialog/b;

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/i/w;->b:Lcom/qmuiteam/qmui/widget/dialog/b;

    invoke-virtual {v0}, Landroidx/appcompat/app/d;->dismiss()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/ifengyu/intercom/i/w;->b:Lcom/qmuiteam/qmui/widget/dialog/b;

    .line 8
    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/lite/c/b/e;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/MiTalkiApp;->f()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/lite/c/b/e;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1101de

    .line 9
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->c(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    const v1, 0x7f11001f

    .line 10
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/b$b;->d(I)Lcom/qmuiteam/qmui/widget/dialog/b$b;

    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    .line 12
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    const v2, 0x7f11009c

    const/4 v3, 0x1

    .line 13
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$b;

    const p1, 0x7f1200fc

    .line 14
    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/i/w;->b:Lcom/qmuiteam/qmui/widget/dialog/b;

    .line 15
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
