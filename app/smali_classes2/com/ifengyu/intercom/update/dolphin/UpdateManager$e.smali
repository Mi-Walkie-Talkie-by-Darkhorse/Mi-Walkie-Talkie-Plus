.class public Lcom/ifengyu/intercom/update/dolphin/UpdateManager$e;
.super Lcom/ifengyu/intercom/network/d/d;
.source "UpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/update/dolphin/UpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

.field private c:Z

.field final synthetic d:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;Landroid/app/Activity;Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$e;-><init>(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;Landroid/app/Activity;Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;Landroid/app/Activity;Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;Z)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$e;->d:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    invoke-direct {p0}, Lcom/ifengyu/intercom/network/d/d;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$e;->a:Landroid/app/Activity;

    .line 4
    iput-object p3, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$e;->b:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    .line 5
    iput-boolean p4, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$e;->c:Z

    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    const-string v0, "UpdateManager"

    const-string v1, "onFailure"

    .line 1
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$e;->b:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    sget-object v1, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;->b:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$e;->d:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    invoke-static {v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->g(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)Lcom/ifengyu/intercom/network/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$e;->d:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    invoke-static {v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->g(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)Lcom/ifengyu/intercom/network/b;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$e;->b:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/ifengyu/intercom/network/b;->a(Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;Z)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 7

    const-string v0, "UpdateManager"

    const-string v1, "onSuccess"

    .line 1
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$e;->b:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    sget-object v2, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;->b:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$e;->d:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    invoke-static {v1}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->c(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const-string v1, "paramUpdateEvent == null"

    .line 3
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    sget-object v0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$c;->a:[I

    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$e;->b:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const-string v2, "versionCode"

    const/4 v3, 0x1

    if-eq v0, v3, :cond_6

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    goto/16 :goto_2

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$e;->d:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    invoke-static {v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->b(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$e;->d:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    invoke-static {v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->c(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)I

    move-result v0

    if-lt v0, v3, :cond_3

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$e;->d:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    invoke-static {v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->c(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)I

    move-result v0

    iget-object v4, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$e;->d:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    invoke-static {v4}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->b(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 7
    iget-boolean v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$e;->c:Z

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$e;->d:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    invoke-static {v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->f(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)Lcom/ifengyu/intercom/network/a;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$e;->d:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    invoke-static {v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->f(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)Lcom/ifengyu/intercom/network/a;

    move-result-object v0

    iget-object v2, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$e;->b:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    invoke-interface {v0, v2, v1}, Lcom/ifengyu/intercom/network/a;->a(Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;Z)V

    goto/16 :goto_2

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$e;->d:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    invoke-static {v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->g(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)Lcom/ifengyu/intercom/network/b;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 11
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$e;->d:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    invoke-static {v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->g(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)Lcom/ifengyu/intercom/network/b;

    move-result-object v0

    iget-object v2, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$e;->b:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    invoke-interface {v0, v2, v1}, Lcom/ifengyu/intercom/network/b;->a(Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;Z)V

    goto/16 :goto_2

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$e;->d:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    invoke-static {v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->f(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)Lcom/ifengyu/intercom/network/a;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 13
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$e;->d:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    invoke-static {v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->f(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)Lcom/ifengyu/intercom/network/a;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$e;->b:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    invoke-interface {v0, v1, v3}, Lcom/ifengyu/intercom/network/a;->a(Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;Z)V

    .line 14
    :cond_4
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$e;->d:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    invoke-static {v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->g(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)Lcom/ifengyu/intercom/network/b;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 15
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$e;->d:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    invoke-static {v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->g(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)Lcom/ifengyu/intercom/network/b;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$e;->b:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    invoke-interface {v0, v1, v3}, Lcom/ifengyu/intercom/network/b;->a(Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;Z)V

    :cond_5
    return-void

    .line 16
    :cond_6
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$e;->d:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    invoke-static {v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 17
    invoke-static {}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->e()I

    move-result v0

    iget-object v4, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$e;->d:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    invoke-static {v4}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-lt v0, v2, :cond_9

    .line 18
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$e;->d:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    invoke-static {v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->d(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/network/OnDownloadListener;

    if-eqz v1, :cond_7

    .line 19
    iget-object v2, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$e;->b:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    invoke-interface {v1, v2, v3}, Lcom/ifengyu/intercom/network/OnDownloadListener;->b(Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;Z)V

    goto :goto_0

    :cond_8
    return-void

    .line 20
    :cond_9
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$e;->d:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    invoke-static {v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->d(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ifengyu/intercom/network/OnDownloadListener;

    if-eqz v2, :cond_a

    .line 21
    iget-object v3, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$e;->b:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    invoke-interface {v2, v3, v1}, Lcom/ifengyu/intercom/network/OnDownloadListener;->b(Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;Z)V

    goto :goto_1

    .line 22
    :cond_b
    iget-boolean v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$e;->c:Z

    if-eqz v0, :cond_c

    .line 23
    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/a0;

    iget-object v2, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$e;->a:Landroid/app/Activity;

    invoke-static {}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->d()Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    move-result-object v3

    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$e;->d:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    invoke-static {v1}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$e;->b:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$e;->d:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    invoke-static {v1}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->e(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)Z

    move-result v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/ifengyu/intercom/ui/widget/dialog/a0;-><init>(Landroid/app/Activity;Lcom/ifengyu/intercom/update/dolphin/j;Ljava/util/HashMap;Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;Z)V

    .line 24
    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/a0;->b()V

    :cond_c
    :goto_2
    return-void
.end method
