.class Lcom/ifengyu/intercom/ui/MainActivity$e;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/ifengyu/intercom/node/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/MainActivity;


# direct methods
.method private constructor <init>(Lcom/ifengyu/intercom/ui/MainActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/MainActivity$e;->a:Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ifengyu/intercom/ui/MainActivity;Lcom/ifengyu/intercom/ui/MainActivity$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/MainActivity$e;-><init>(Lcom/ifengyu/intercom/ui/MainActivity;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    const-string p1, "MainActivity"

    const-string v0, "\u5df2\u8fde\u63a5..."

    .line 1
    invoke-static {p1, v0}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/MainActivity$e;->a:Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/MainActivity;->b(Lcom/ifengyu/intercom/ui/MainActivity;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->j()V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 1

    const-string p1, "MainActivity"

    const-string v0, "\u8fde\u63a5\u65ad\u5f00..."

    .line 1
    invoke-static {p1, v0}, Lcom/ifengyu/intercom/i/z;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/MainActivity$e;->a:Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/MainActivity;->b(Lcom/ifengyu/intercom/ui/MainActivity;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/ui/fragment/MapFragment;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/fragment/MapFragment;->k()V

    return-void
.end method
