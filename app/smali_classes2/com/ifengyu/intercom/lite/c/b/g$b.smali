.class Lcom/ifengyu/intercom/lite/c/b/g$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/lite/c/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/lite/c/b/g;


# direct methods
.method private constructor <init>(Lcom/ifengyu/intercom/lite/c/b/g;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/c/b/g$b;->a:Lcom/ifengyu/intercom/lite/c/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ifengyu/intercom/lite/c/b/g;Lcom/ifengyu/intercom/lite/c/b/g$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/lite/c/b/g$b;-><init>(Lcom/ifengyu/intercom/lite/c/b/g;)V

    return-void
.end method


# virtual methods
.method public checkResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/c/b/g$b;->a:Lcom/ifengyu/intercom/lite/c/b/g;

    invoke-static {v0}, Lcom/ifengyu/intercom/lite/c/b/g;->a(Lcom/ifengyu/intercom/lite/c/b/g;)Lcom/ifengyu/intercom/lite/c/b/g$c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/c/b/g$b;->a:Lcom/ifengyu/intercom/lite/c/b/g;

    invoke-static {v0}, Lcom/ifengyu/intercom/lite/c/b/g;->a(Lcom/ifengyu/intercom/lite/c/b/g;)Lcom/ifengyu/intercom/lite/c/b/g$c;

    move-result-object v1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/c/b/g$b;->a:Lcom/ifengyu/intercom/lite/c/b/g;

    invoke-static {v0}, Lcom/ifengyu/intercom/lite/c/b/g;->b(Lcom/ifengyu/intercom/lite/c/b/g;)Lcom/qmuiteam/qmui/widget/dialog/b;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/ifengyu/intercom/lite/c/b/g$c;->a(Lcom/qmuiteam/qmui/widget/dialog/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
