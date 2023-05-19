.class Lcom/ifengyu/intercom/m/b/k$b;
.super Ljava/lang/Object;
.source "SlideVerifyDialogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/m/b/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/m/b/k;


# direct methods
.method private constructor <init>(Lcom/ifengyu/intercom/m/b/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/m/b/k$b;->a:Lcom/ifengyu/intercom/m/b/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ifengyu/intercom/m/b/k;Lcom/ifengyu/intercom/m/b/k$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/m/b/k$b;-><init>(Lcom/ifengyu/intercom/m/b/k;)V

    return-void
.end method


# virtual methods
.method public checkResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/m/b/k$b;->a:Lcom/ifengyu/intercom/m/b/k;

    invoke-static {v0}, Lcom/ifengyu/intercom/m/b/k;->E(Lcom/ifengyu/intercom/m/b/k;)Lcom/ifengyu/intercom/m/b/k$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/m/b/k$b;->a:Lcom/ifengyu/intercom/m/b/k;

    invoke-static {v0}, Lcom/ifengyu/intercom/m/b/k;->E(Lcom/ifengyu/intercom/m/b/k;)Lcom/ifengyu/intercom/m/b/k$c;

    move-result-object v1

    iget-object v0, p0, Lcom/ifengyu/intercom/m/b/k$b;->a:Lcom/ifengyu/intercom/m/b/k;

    invoke-static {v0}, Lcom/ifengyu/intercom/m/b/k;->F(Lcom/ifengyu/intercom/m/b/k;)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/ifengyu/intercom/m/b/k$c;->a(Lcom/qmuiteam/qmui/widget/dialog/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
