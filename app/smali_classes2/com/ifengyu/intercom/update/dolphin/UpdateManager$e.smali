.class public Lcom/ifengyu/intercom/update/dolphin/UpdateManager$e;
.super Lcom/ifengyu/intercom/network/d/d;


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

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$e;-><init>(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;Landroid/app/Activity;Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;Landroid/app/Activity;Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;Z)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$e;->d:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    invoke-direct {p0}, Lcom/ifengyu/intercom/network/d/d;-><init>()V

    iput-object p2, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$e;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$e;->b:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    iput-boolean p4, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$e;->c:Z

    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    const-string v0, "UpdateManager"

    const-string v1, "onFailure"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->b(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$e;->b:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    sget-object v1, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;->b:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$e;->d:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    invoke-static {v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->g(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)Lcom/ifengyu/intercom/network/b;

    move-result-object v0

    if-eqz v0, :cond_0

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
    .locals 2

    const-string v0, "UpdateManager"

    const-string v1, "onSuccess"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method