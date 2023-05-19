.class Lcom/ifengyu/intercom/ui/base/old/BaseActivity1$b$a;
.super Ljava/lang/Object;
.source "BaseActivity1.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/base/old/BaseActivity1$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/base/old/BaseActivity1$b;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/base/old/BaseActivity1$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1$b$a;->a:Lcom/ifengyu/intercom/ui/base/old/BaseActivity1$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1$b$a;->a:Lcom/ifengyu/intercom/ui/base/old/BaseActivity1$b;

    iget-object p1, p1, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1$b;->a:Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;

    iget-object p1, p1, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1;->h:Lcom/ifengyu/intercom/ui/base/old/BaseActivity1$d;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/base/old/BaseActivity1$d;->b()V

    :cond_0
    return-void
.end method
