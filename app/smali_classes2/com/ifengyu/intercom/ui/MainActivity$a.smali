.class Lcom/ifengyu/intercom/ui/MainActivity$a;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/ifengyu/intercom/node/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/MainActivity;


# direct methods
.method private constructor <init>(Lcom/ifengyu/intercom/ui/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/MainActivity$a;->a:Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ifengyu/intercom/ui/MainActivity;Lcom/ifengyu/intercom/ui/MainActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/MainActivity$a;-><init>(Lcom/ifengyu/intercom/ui/MainActivity;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    const-string v0, "MainActivity"

    const-string v1, "\u5df2\u8fde\u63a5..."

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/MainActivity$a;->a:Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/MainActivity;->a(Lcom/ifengyu/intercom/ui/MainActivity;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->e()V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/MainActivity$a;->a:Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/MainActivity;->a(Lcom/ifengyu/intercom/ui/MainActivity;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->b()V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    const-string v0, "MainActivity"

    const-string v1, "\u8fde\u63a5\u65ad\u5f00..."

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/MainActivity$a;->a:Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/MainActivity;->a(Lcom/ifengyu/intercom/ui/MainActivity;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->f()V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/MainActivity$a;->a:Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/MainActivity;->a(Lcom/ifengyu/intercom/ui/MainActivity;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/main/tab/SessionListFragment;->c()V

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
