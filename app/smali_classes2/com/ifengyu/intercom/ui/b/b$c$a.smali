.class Lcom/ifengyu/intercom/ui/b/b$c$a;
.super Ljava/lang/Object;
.source "DiscoveryFragmentAdapter.java"

# interfaces
.implements Lcom/jude/rollviewpager/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/b/b$c;-><init>(Lcom/ifengyu/intercom/ui/b/b;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/b/b$c;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/b/b$c;Lcom/ifengyu/intercom/ui/b/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/b/b$c$a;->a:Lcom/ifengyu/intercom/ui/b/b$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/b/b$c$a;->a:Lcom/ifengyu/intercom/ui/b/b$c;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/b/b$c;->b:Lcom/ifengyu/intercom/ui/b/b;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/b/b;->f(Lcom/ifengyu/intercom/ui/b/b;)Lcom/ifengyu/intercom/ui/b/b$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/b/b$c$a;->a:Lcom/ifengyu/intercom/ui/b/b$c;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/b/b$c;->b:Lcom/ifengyu/intercom/ui/b/b;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/b/b;->f(Lcom/ifengyu/intercom/ui/b/b;)Lcom/ifengyu/intercom/ui/b/b$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ifengyu/intercom/ui/b/b$a;->e(I)V

    :cond_0
    return-void
.end method
