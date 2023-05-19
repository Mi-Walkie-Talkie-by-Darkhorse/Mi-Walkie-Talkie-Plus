.class public Lcom/ifengyu/intercom/p/v;
.super Ljava/lang/Object;
.source "GlobalDialogUtil.java"


# static fields
.field private static e:Lcom/ifengyu/intercom/p/v;


# instance fields
.field private a:Lcom/qmuiteam/qmui/widget/dialog/b;

.field private b:Lcom/qmuiteam/qmui/widget/dialog/b;

.field private c:Lcom/qmuiteam/qmui/widget/dialog/b;

.field private d:Lcom/qmuiteam/qmui/widget/dialog/b;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/ifengyu/intercom/p/v;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/p/v;->e:Lcom/ifengyu/intercom/p/v;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/ifengyu/intercom/p/v;

    invoke-direct {v0}, Lcom/ifengyu/intercom/p/v;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/p/v;->e:Lcom/ifengyu/intercom/p/v;

    .line 3
    :cond_0
    sget-object v0, Lcom/ifengyu/intercom/p/v;->e:Lcom/ifengyu/intercom/p/v;

    return-object v0
.end method

.method private synthetic c(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/p/v;->a:Lcom/qmuiteam/qmui/widget/dialog/b;

    return-void
.end method

.method static synthetic e(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    .line 2
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ifengyu/talk/d;->k()Lcom/ifengyu/talk/f/g0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ifengyu/talk/f/g0;->d()Lcom/shanlitech/et/notice/event/GroupSessionEvent;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/16 p1, 0x64

    .line 3
    invoke-virtual {p0, p1}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->refuse(I)Z

    .line 4
    invoke-virtual {p0}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->getGroup()Lcom/shanlitech/et/model/Group;

    move-result-object p0

    invoke-virtual {p0}, Lcom/shanlitech/et/model/Group;->deleteSession()Z

    :cond_1
    return-void
.end method

.method static synthetic f(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/d;->dismiss()V

    .line 2
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ifengyu/talk/d;->k()Lcom/ifengyu/talk/f/g0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ifengyu/talk/f/g0;->d()Lcom/shanlitech/et/notice/event/GroupSessionEvent;

    move-result-object p0

    const p1, 0x7f110126

    if-nez p0, :cond_0

    .line 3
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->y(I)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/shanlitech/et/notice/event/GroupSessionEvent;->getStatus()I

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->y(I)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/MiTalkiApp;->g()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/ifengyu/intercom/ui/talk/SessionTalkActivity;->N(Landroid/content/Context;Lcom/shanlitech/et/notice/event/GroupSessionEvent;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/p/v;->d:Lcom/qmuiteam/qmui/widget/dialog/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/p/v;->d:Lcom/qmuiteam/qmui/widget/dialog/b;

    invoke-virtual {v0}, Landroidx/appcompat/app/d;->dismiss()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/ifengyu/intercom/p/v;->d:Lcom/qmuiteam/qmui/widget/dialog/b;

    :cond_0
    return-void
.end method

.method public synthetic d(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/p/v;->c(Lcom/qmuiteam/qmui/widget/dialog/b;I)V

    return-void
.end method

.method public g()V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->g()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/p/v;->a:Lcom/qmuiteam/qmui/widget/dialog/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/m/b/g;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/MiTalkiApp;->g()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/m/b/g;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1100ad

    .line 4
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/b$d;->E(I)Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const v1, 0x7f110420

    new-instance v2, Lcom/ifengyu/intercom/p/a;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/p/a;-><init>(Lcom/ifengyu/intercom/p/v;)V

    const/4 v3, 0x0

    .line 5
    invoke-virtual {v0, v3, v1, v3, v2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const v1, 0x7f120100

    .line 6
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/p/v;->a:Lcom/qmuiteam/qmui/widget/dialog/b;

    .line 7
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public h(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->g()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/p/v;->c:Lcom/qmuiteam/qmui/widget/dialog/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/m/b/g;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/MiTalkiApp;->g()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/m/b/g;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1102f1

    .line 4
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->x(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const v1, 0x7f11001e

    .line 5
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/b$d;->E(I)Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->t(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    .line 7
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->u(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const v2, 0x7f1100c6

    .line 8
    invoke-virtual {v0, v1, v2, v1, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const p1, 0x7f120100

    .line 9
    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/p/v;->c:Lcom/qmuiteam/qmui/widget/dialog/b;

    .line 10
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public i(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->g()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/p/v;->b:Lcom/qmuiteam/qmui/widget/dialog/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/m/b/g;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/MiTalkiApp;->g()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/m/b/g;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110269

    .line 4
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->x(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const v1, 0x7f11001d

    .line 5
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/b$d;->E(I)Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->t(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    .line 7
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->u(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const v2, 0x7f1100c6

    .line 8
    invoke-virtual {v0, v1, v2, v1, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v0, Lcom/qmuiteam/qmui/widget/dialog/b$d;

    const p1, 0x7f120100

    .line 9
    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/p/v;->b:Lcom/qmuiteam/qmui/widget/dialog/b;

    .line 10
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public j()V
    .locals 5

    .line 1
    :try_start_0
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->g()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/p/v;->d:Lcom/qmuiteam/qmui/widget/dialog/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/p/v;->d:Lcom/qmuiteam/qmui/widget/dialog/b;

    invoke-virtual {v0}, Landroidx/appcompat/app/d;->dismiss()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/ifengyu/intercom/p/v;->d:Lcom/qmuiteam/qmui/widget/dialog/b;

    .line 5
    :cond_0
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/d;->k()Lcom/ifengyu/talk/f/g0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/talk/f/g0;->d()Lcom/shanlitech/et/notice/event/GroupSessionEvent;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/ifengyu/intercom/m/b/j;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->h()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/intercom/MiTalkiApp;->g()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ifengyu/intercom/m/b/j;-><init>(Landroid/content/Context;)V

    .line 7
    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/m/b/j;->E(Lcom/shanlitech/et/notice/event/GroupSessionEvent;)Lcom/ifengyu/intercom/m/b/j;

    const/4 v0, 0x0

    .line 8
    invoke-virtual {v1, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->t(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v1, Lcom/ifengyu/intercom/m/b/j;

    .line 9
    invoke-virtual {v1, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->u(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v1, Lcom/ifengyu/intercom/m/b/j;

    const v2, 0x7f110165

    const/4 v3, 0x2

    sget-object v4, Lcom/ifengyu/intercom/p/c;->a:Lcom/ifengyu/intercom/p/c;

    .line 10
    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v1, Lcom/ifengyu/intercom/m/b/j;

    const v2, 0x7f110144

    sget-object v3, Lcom/ifengyu/intercom/p/b;->a:Lcom/ifengyu/intercom/p/b;

    .line 11
    invoke-virtual {v1, v0, v2, v0, v3}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    check-cast v1, Lcom/ifengyu/intercom/m/b/j;

    const v0, 0x7f120100

    .line 12
    invoke-virtual {v1, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f(I)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/p/v;->d:Lcom/qmuiteam/qmui/widget/dialog/b;

    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
