.class public Lcom/ifengyu/intercom/update/dolphin/UpdateManager$b;
.super Lcom/ifengyu/intercom/network/a/d;
.source "UpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/update/dolphin/UpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

.field private b:Landroid/app/Activity;

.field private c:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;Landroid/app/Activity;Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$b;-><init>(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;Landroid/app/Activity;Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;Landroid/app/Activity;Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;Z)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$b;->a:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    invoke-direct {p0}, Lcom/ifengyu/intercom/network/a/d;-><init>()V

    iput-object p2, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$b;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$b;->c:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    iput-boolean p4, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$b;->d:Z

    return-void
.end method


# virtual methods
.method public b()V
    .locals 6

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v0, "UpdateManager"

    const-string v1, "onSuccess"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$b;->c:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    sget-object v1, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;->b:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$b;->a:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    invoke-static {v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->c(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const-string v0, "UpdateManager"

    const-string v1, "paramUpdateEvent == null"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$3;->a:[I

    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$b;->c:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$b;->a:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    invoke-static {v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "versionCode"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->b()I

    move-result v1

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$b;->a:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    invoke-static {v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "versionCode"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lt v1, v0, :cond_3

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$b;->a:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    invoke-static {v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->d(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/network/OnDownloadListener;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$b;->c:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    invoke-interface {v0, v2, v3}, Lcom/ifengyu/intercom/network/OnDownloadListener;->a(Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;Z)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$b;->a:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    invoke-static {v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->d(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/network/OnDownloadListener;

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$b;->c:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    invoke-interface {v0, v2, v4}, Lcom/ifengyu/intercom/network/OnDownloadListener;->a(Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;Z)V

    goto :goto_2

    :cond_5
    iget-boolean v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$b;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/dialog/ac;

    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$b;->b:Landroid/app/Activity;

    invoke-static {}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a()Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    move-result-object v2

    iget-object v3, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$b;->a:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    invoke-static {v3}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$b;->c:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    iget-object v5, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$b;->a:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    invoke-static {v5}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->e(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/ifengyu/intercom/ui/widget/dialog/ac;-><init>(Landroid/app/Activity;Lcom/ifengyu/intercom/update/dolphin/j;Ljava/util/HashMap;Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;Z)V

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/dialog/ac;->b()V

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$b;->a:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    invoke-static {v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->b(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "versionCode"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$b;->a:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    invoke-static {v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->c(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)I

    move-result v0

    if-lt v0, v3, :cond_7

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$b;->a:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    invoke-static {v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->c(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)I

    move-result v1

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$b;->a:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    invoke-static {v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->b(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "versionCode"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ge v1, v0, :cond_7

    iget-boolean v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$b;->d:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$b;->a:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    invoke-static {v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->f(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)Lcom/ifengyu/intercom/network/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$b;->a:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    invoke-static {v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->f(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)Lcom/ifengyu/intercom/network/a;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$b;->c:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    invoke-interface {v0, v1, v4}, Lcom/ifengyu/intercom/network/a;->a(Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;Z)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$b;->a:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    invoke-static {v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->g(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)Lcom/ifengyu/intercom/network/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$b;->a:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    invoke-static {v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->g(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)Lcom/ifengyu/intercom/network/b;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$b;->c:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    invoke-interface {v0, v1, v4}, Lcom/ifengyu/intercom/network/b;->a(Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;Z)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$b;->a:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    invoke-static {v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->f(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)Lcom/ifengyu/intercom/network/a;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$b;->a:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    invoke-static {v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->f(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)Lcom/ifengyu/intercom/network/a;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$b;->c:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    invoke-interface {v0, v1, v3}, Lcom/ifengyu/intercom/network/a;->a(Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;Z)V

    :cond_8
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$b;->a:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    invoke-static {v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->g(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)Lcom/ifengyu/intercom/network/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$b;->a:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    invoke-static {v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->g(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)Lcom/ifengyu/intercom/network/b;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$b;->c:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    invoke-interface {v0, v1, v3}, Lcom/ifengyu/intercom/network/b;->a(Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;Z)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public c()V
    .locals 3

    const-string v0, "UpdateManager"

    const-string v1, "onFailure"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$b;->c:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    sget-object v1, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;->b:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$b;->a:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    invoke-static {v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->g(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)Lcom/ifengyu/intercom/network/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$b;->a:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    invoke-static {v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->g(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)Lcom/ifengyu/intercom/network/b;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$b;->c:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/ifengyu/intercom/network/b;->a(Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;Z)V

    :cond_0
    return-void
.end method
