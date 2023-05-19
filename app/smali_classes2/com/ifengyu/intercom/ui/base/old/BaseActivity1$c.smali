.class Lcom/ifengyu/intercom/ui/base/old/BaseActivity1$c;
.super Ljava/lang/Object;
.source "BaseActivity1.java"

# interfaces
.implements Lcom/ifengyu/intercom/ui/widget/dialog/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->B(Lcom/ifengyu/intercom/ui/base/old/BaseActivity1$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1$c;->a:Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1$c;->a:Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->h:Lcom/ifengyu/intercom/ui/base/old/BaseActivity1$d;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1$d;->b()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1$c;->a:Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->l(Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;)V

    return-void
.end method
